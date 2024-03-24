// @ts-check
(() => {
  const key = "toc-position";
  let timeout = 0;
  const sidebar = document.querySelector("#starlight__sidebar");

  if (sidebar) {
    const data = JSON.parse(sessionStorage.getItem(key) ?? "{}");
    if ("scrollTop" in data) {
      const { scrollTop: top } = data;
      sidebar.scroll({ top });
    }
    sidebar.addEventListener("scroll", () => {
      if (timeout) {
        window.clearTimeout(timeout);
      }
      timeout = window.setTimeout(() => {
        const { scrollTop } = sidebar;
        sessionStorage.setItem(key, JSON.stringify({ scrollTop }));
        timeout = 0;
      }, 100);
    });
  }
})();
