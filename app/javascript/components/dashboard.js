const dashboardTabs = () => {
  // selectionner tous les tab links
  const dashboardTabs = document.querySelectorAll(".tab-underlined");
  // pour chaque tab link
  dashboardTabs.forEach((dashboardTab) => {
    // écouter le click
    if (dashboardTab) {
      dashboardTab.addEventListener("click", (event) => {
        // Do something (callback)
        // selectionner tous les tab-content
        const hideTabs = document.querySelectorAll(".tab-content")
        // leur mettre à tous la classe d-none
        hideTabs.forEach((hideTab) => {
          hideTab.classList.add("d-none")
        })
        const activeTab = document.querySelector(".active");
        if (activeTab) {
          activeTab.classList.remove("active");
        }
        // recupere le data-target du lien cliqué
        const shownTab = document.getElementById(event.currentTarget.dataset.target)
        // selectionner le tab-content à affiher => enlever la classe d-none
        if (shownTab) {
          shownTab.classList.remove("d-none");
        }
        dashboardTab.classList.add("active")
      });
    }
  })
}

export { dashboardTabs };
