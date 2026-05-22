use bytes::Bytes;
use spin_sdk::http::{FullBody, IntoResponse, Request, Response};
use spin_sdk::http_service;

const INDEX_HTML: &str = include_str!("../assets/index.html");
const ABOUT_HTML: &str = include_str!("../assets/about.html");
const CONTACT_HTML: &str = include_str!("../assets/contact.html");
const STYLES_CSS: &str = include_str!("../assets/styles.css");
const APP_JS: &str = include_str!("../assets/app.js");
const HERO_SVG: &[u8] = include_bytes!("../assets/images/spin-wasm.svg");

#[http_service]
async fn handle_request(req: Request) -> anyhow::Result<impl IntoResponse> {
    let response = match req.uri().path() {
        "/" | "/index.html" => text_response(200, "text/html; charset=utf-8", INDEX_HTML),
        "/about.html" => text_response(200, "text/html; charset=utf-8", ABOUT_HTML),
        "/contact.html" => text_response(200, "text/html; charset=utf-8", CONTACT_HTML),
        "/styles.css" => text_response(200, "text/css; charset=utf-8", STYLES_CSS),
        "/app.js" => text_response(200, "application/javascript; charset=utf-8", APP_JS),
        "/images/spin-wasm.svg" => bytes_response(200, "image/svg+xml", HERO_SVG),
        "/api/message" => json_response(),
        path => not_found_response(path),
    };

    Ok(response)
}

fn json_response() -> Response<FullBody<Bytes>> {
    let body = r#"{
  "message": "Bonjour depuis Spin et un composant Wasm en Rust.",
  "runtime": "Spin",
  "trigger": "HTTP",
  "site": "static + api"
}"#;

    text_response(200, "application/json; charset=utf-8", body)
}

fn not_found_response(path: &str) -> Response<FullBody<Bytes>> {
    let body = format!(
        "<html><body><h1>404</h1><p>La ressource <code>{}</code> est introuvable.</p><p><a href=\"/\">Retour a l'accueil</a></p></body></html>",
        path
    );

    text_response(404, "text/html; charset=utf-8", &body)
}

fn text_response(status: u16, content_type: &str, body: &str) -> Response<FullBody<Bytes>> {
    Response::builder()
        .status(status)
        .header("content-type", content_type)
    .body(FullBody::new(Bytes::copy_from_slice(body.as_bytes())))
    .unwrap()
}

fn bytes_response(status: u16, content_type: &str, body: &[u8]) -> Response<FullBody<Bytes>> {
    Response::builder()
        .status(status)
        .header("content-type", content_type)
    .body(FullBody::new(Bytes::copy_from_slice(body)))
    .unwrap()
}
