async function copyCode(id) {
  const code = document.getElementById(id).innerText,
        copyText = document.getElementById('copyText'),
        copyIcon = document.getElementById('copyIcon');
  try {
    await navigator.clipboard.writeText(code);
    copyText.textContent = 'Copied!';
    copyIcon.innerHTML = '<path d="M20 6 9 17l-5-5"></path>';
    setTimeout(() => {
      copyText.textContent = 'Copy';
      copyIcon.innerHTML = '<rect width="14" height="14" x="8" y="8" rx="2" ry="2"></rect><path d="M4 16c-1.1 0-2-.9-2-2V4c0-1.1.9-2 2-2h10c1.1 0 2 .9 2 2"></path>'
    }, 1600)
  } catch(e){
    console.error('Unable to copy code:', e);
    copyText.textContent = 'Copy failed'
  }
}
