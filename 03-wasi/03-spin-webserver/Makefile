SPIN ?= spin
CARGO ?= cargo
TARGET ?= wasm32-wasip2
SPIN_VERSION ?= v4.0.0
LOCAL_BIN_DIR ?= $(HOME)/.local/bin
WASM_TOOLS ?= wasm-tools
WASM_ARTIFACT := target/$(TARGET)/release/spin_webserver_example.wasm
WAT_ARTIFACT := target/$(TARGET)/release/spin_webserver_example.wat

.PHONY: build run check clean ensure-spin install-spin ensure-wasm-tools print-wasm

build:
	rustup target add $(TARGET)
	$(CARGO) build --target $(TARGET) --release

ensure-spin:
	@command -v $(SPIN) >/dev/null 2>&1 || { \
		echo "Spin CLI introuvable sur le PATH."; \
		echo "Installez-la avec 'make install-spin' ou suivez https://spinframework.dev/downloads/install.sh"; \
		exit 127; \
	}

ensure-wasm-tools:
	@command -v $(WASM_TOOLS) >/dev/null 2>&1 || { \
		echo "wasm-tools introuvable sur le PATH."; \
		echo "Installez-le avec 'cargo install wasm-tools'."; \
		exit 127; \
	}

install-spin:
	@mkdir -p $(LOCAL_BIN_DIR)
	@arch=$$(uname -m); \
	case "$$arch" in \
		x86_64) spin_arch=amd64 ;; \
		aarch64|arm64) spin_arch=aarch64 ;; \
		*) echo "Architecture non supportee pour l'installation automatique de Spin: $$arch"; exit 1 ;; \
	esac; \
	archive="spin-$(SPIN_VERSION)-linux-$$spin_arch.tar.gz"; \
	url="https://github.com/spinframework/spin/releases/download/$(SPIN_VERSION)/$$archive"; \
	tmp_dir=$$(mktemp -d); \
	trap 'rm -rf "$$tmp_dir"' EXIT; \
	echo "Telechargement de $$url"; \
	curl -fsSL "$$url" -o "$$tmp_dir/$$archive"; \
	tar -xzf "$$tmp_dir/$$archive" -C "$$tmp_dir"; \
	install "$$tmp_dir/spin" "$(LOCAL_BIN_DIR)/spin"; \
	echo "Spin installe dans $(LOCAL_BIN_DIR)/spin"

run: ensure-spin
	$(SPIN) up

print-wasm: build ensure-wasm-tools
	$(WASM_TOOLS) print $(WASM_ARTIFACT) -o $(WAT_ARTIFACT)
	@echo "WAT genere dans $(WAT_ARTIFACT)"

check:
	rustup target add $(TARGET)
	$(CARGO) check --target $(TARGET)

clean:
	rm -rf target .spin
