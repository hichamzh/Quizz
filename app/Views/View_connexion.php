<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" integrity="sha512-..." crossorigin="anonymous" />
    <link rel="stylesheet" href="public/Css/inscription.css">
    <title>Sign In</title>
</head>
<body>
    <div class="carre"></div>
    <div class="carre"></div>
    <div class="carre"></div>
    <div class="carre"></div>
    <div class="carre"></div>
    <div class="carre"></div>
    <div class="carre"></div>
    <div class="carre"></div>
    <div class="carre"></div>
    <div class="carre"></div>
    <div class="carre"></div>

    <?php if (isset($data)): ?>
        <script>alert("<?php echo $data['erreur'] ?>")</script>
    <?php endif ?>
<header>
        <h1>Se connecter</h1>
    </header>
    
        <form action="?controller=inscription&action=connexion_verif" method="POST" class="formulaire-inscription">
            <div class="container-input">
                <input type="text" id="login" placeholder="Identifiant..." name="login" required>   
            </div>
            <div class="container-input">
                <input type="password" id="mdp" placeholder="Mot de passe..." name="mdp">
                <i class="fas fa-eye" onclick="toggleVisibleMdp()" id="icon"></i>
            </div>
            <button type="submit" class="butt" >Go Quizz</button> <!--class butt heriter par la navbar -->
        </form>
    </section>
    
    <script src="./public/Js/button_mdp.js" defer></script>
</body>
</html>