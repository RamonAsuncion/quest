const quests = [
  "Quest 1: Initiation into the Arcane Arts",
  "Quest 2: Solar System Exploration",
  "Quest 3: The Alchemist's Canvas (NEW)",
  "Quest 4: The Enchanted Symphony of Motion",
  "Quest 5: Shaping the Arcane Guardian",
  "Quest 6: The Arcane Path of Rays",
];

const newQuestFeatures = {
  "Quest 3: The Alchemist's Canvas (NEW)": [
    "Mouse input to toggle cells!",
    "Toggle still works using camera!",
    "Added never dead cells (blue)!",
    "Integrated gamepad interactions!",
    "Integrated touchpad interactions!",
  ],
};

function addQuest() {
  const ul = document.getElementById("quests");
  for (let i = 1; i <= quests.length; i++) {
    const li = document.createElement("li");
    const a = document.createElement("a");
    a.setAttribute("href", `quests/${i}/`);
    a.textContent = quests[i - 1];

    if (quests[i - 1].includes("(NEW)")) {
      a.classList.add("new-quest");

      if (newQuestFeatures[quests[i - 1]]) {
        const featuresList = document.createElement("ul");
        featuresList.classList.add("features-list");

        newQuestFeatures[quests[i - 1]].forEach((feature) => {
          const featureItem = document.createElement("li");
          featureItem.textContent = feature;
          featureItem.classList.add("feature-item");
          featuresList.appendChild(featureItem);
        });

        li.appendChild(a);
        li.appendChild(featuresList);
      } else {
        li.appendChild(a);
      }
    } else {
      li.appendChild(a);
    }

    ul.appendChild(li);
  }
}

addQuest();
