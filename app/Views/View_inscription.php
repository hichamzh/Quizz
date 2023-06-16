<!DOCTYPE html>
<html lang="en">

<head>
    <link rel="stylesheet" href="public/Css/inscription.css">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
        integrity="sha512-..." crossorigin="anonymous" />
    <title>Inscription</title>
</head>

<body>
    <?php if (isset($data['erreur'])): ?>
        <script>alert("<?php echo $data['erreur']; ?>")</script>
    <?php endif; ?>
    <div>

    </div>
    <div class="carre"></div>
    <div class="carre">
        <a href="https://github.com/hichamzh/" target="_blank">
            <img src="public/Assets/pikachu.png" alt="pikachu">
        </a>
    </div>

    <div class="carre"></div>
    <div class="carre"></div>
    <div class="carre">
        <a href="https://github.com/hichamzh/" target="_blank">
            <img src="public/Assets/pikachu.png" alt="pikachu">
        </a>
    </div>
    <div class="carre"></div>
    <div class="carre"></div>
    <div class="carre"></div>
    <div class="carre"></div>
    <div class="carre">
        <a href="https://github.com/hichamzh/" target="_blank">
            <img src="public/Assets/pikachu.png" alt="pikachu">
        </a>
    </div>
    <div class="carre"></div>
    <div class="carre"></div>
    <section class="connexion_inscription">
        <header>
            <h1>Créer un compte Quizz</h1>
        </header>

        <form action="?controller=inscription&action=inscription_insert" method="POST" class="formulaire-inscription">
            <div class="container-input">
                <input type="text" id="login" autocomplete="off" placeholder="Identifiant..." name="login" required minlength="5"
                    maxlength="20">
            </div>
            <div class="container-input">
                <input type="password" autocomplete="off" id="mdp" placeholder="Mot de passe..." name="mdp" required minlength="8">
                <i class="fas fa-eye" onclick="toggleVisibleMdp()" id="icon"></i>
            </div>
            <button type="submit" class="butt">S'inscrire</button> <!--class butt heriter par la navbar -->
            <a href="?controller=inscription&action=connexion" class="link_inscription_connexion">Déjà un compte ?</a>
        </form>
    </section>

    <script src="./public/Js/button_mdp.js" defer></script>
</body>

</html>