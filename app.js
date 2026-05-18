const resetDelayMs = 1600;

function resetButton(button, originalLabel) {
  window.setTimeout(() => {
    button.textContent = originalLabel;
    button.classList.remove("is-copied");
  }, resetDelayMs);
}

async function copyFromTarget(button) {
  const targetId = button.getAttribute("data-copy-target");
  const target = document.getElementById(targetId);

  if (!target) {
    return;
  }

  const originalLabel = button.textContent;
  const text = target.textContent.trim();

  try {
    await navigator.clipboard.writeText(text);
    button.textContent = "Copied";
    button.classList.add("is-copied");
  } catch (error) {
    button.textContent = "Copy failed";
  }

  resetButton(button, originalLabel);
}

document.querySelectorAll("[data-copy-target]").forEach((button) => {
  button.addEventListener("click", () => {
    copyFromTarget(button);
  });
});