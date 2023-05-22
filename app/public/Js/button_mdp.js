    document.querySelector('.butt_inscription').addEventListener('click', (e) => {
        
        var inputMdp = document.querySelector('#mdp').value
        var inputlogin = document.querySelector('#login').value
        
        var regex = /^(?=.*[A-Z])(?=.*\d)/

        if (!regex.test(inputMdp) || inputMdp.length < 8) {
            alert("Le mot de passe doit contenir au moins une lettre en majuscule, un chiffre et minimum 8 caractères.");
            e.preventDefault();
          }
          
          if (inputlogin.length < 5) {
            alert("L'identifiant n'est pas assez long (minimum 5 caractères).");
            e.preventDefault();
          }
          
          if (regex.test(inputMdp) && inputlogin.length >= 5 && inputMdp.length >= 8) {
            alert('Inscription réussi veuillez vous connectez !')
          }

    })

    function toggleVisibleMdp() {
        const button  = document.querySelector('#icon')
        const mdp = document.querySelector('#mdp')

        if (mdp.type === "password") {
            mdp.type = "text"
            button.classList.remove('fa-eye')
            button.classList.add('fa-eye-slash')
        } else {
            mdp.type = "password"
            button.classList.remove('fa-eye-slash')
            button.classList.add('fa-eye')
        }
    }

