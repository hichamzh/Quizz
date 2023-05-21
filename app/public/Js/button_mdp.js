    document.querySelector('.butt_inscription').addEventListener('click', (e) => {
        
        var inputMdp = document.querySelector('#mdp').value
        
        
        var regex = /^(?=.*[A-Z])(?=.*\d)/
        if(!regex.test(inputMdp)) {
            e.preventDefault()
            alert("Le mot de passe doit contenir au moins une LETTRE MAJUSCULE et UN CHIFFRE.")
            return;
        }

        alert("Formulaire soumis avec succès !")
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

