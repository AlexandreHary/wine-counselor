// Code JavaScript côté client
document.addEventListener("DOMContentLoaded", function() {
  const form = document.querySelector("form");
  form.addEventListener("submit", function(event) {
    event.preventDefault();

    const selectedOptions = Array.from(document.querySelectorAll("input[name='option']:checked")).map(input => input.value);

    fetch("/votre-endpoint-de-correspondance", {
      method: "POST",
      headers: {
        "Content-Type": "application/json"
      },
      body: JSON.stringify({ selectedOptions })
    })
    .then(response => response.json())
    .then(data => {
      // Afficher les vins correspondants dans l'interface utilisateur
      // Par exemple, les ajouter à la liste des messages du chat
      const messagesContainer = document.getElementById("messages");
      data.vins.forEach(vin => {
        const newMessageContainer = document.createElement("div");
        newMessageContainer.className = "chat-container";
        // Afficher les informations du vin dans le message
        newMessageContainer.innerHTML = `
          <!-- Structure d'affichage du vin -->
          <img src="${vin.image}" class="avatar_question" alt="winecounselor">
          <div class="bubble_question mb-3">
            <div class="arrow"></div>
            <p class='text-black'>${vin.nom}</p>
          </div>
          <!-- Autres informations du vin -->
        `;
        messagesContainer.appendChild(newMessageContainer);
      });
    })
    .catch(error => {
      console.error("Erreur lors de la récupération des données : ", error);
    });
  });
});
