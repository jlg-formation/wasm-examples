const formatJson = (value) => JSON.stringify(value, null, 2);

async function fetchMessage(outputId) {
  const output = document.getElementById(outputId);

  if (!output) {
    return;
  }

  output.textContent = "Chargement...";

  try {
    const response = await fetch("/api/message", {
      headers: {
        Accept: "application/json",
      },
    });

    if (!response.ok) {
      throw new Error(`HTTP ${response.status}`);
    }

    const payload = await response.json();
    output.textContent = formatJson(payload);
  } catch (error) {
    output.textContent = `Echec de l'appel API: ${error.message}`;
  }
}

function wireButton(buttonId, outputId, autoLoad = false) {
  const button = document.getElementById(buttonId);

  if (button) {
    button.addEventListener("click", () => {
      fetchMessage(outputId);
    });
  }

  if (autoLoad) {
    fetchMessage(outputId);
  }
}

window.addEventListener("DOMContentLoaded", () => {
  wireButton("load-message", "api-message");
  wireButton("refresh-message", "contact-api-message", true);
});
