<?php
// if (session_status() === PHP_SESSION_ACTIVE) {
//     // Session is active
//     echo "Session is active.";
// } else {
//     // Session is not active
//     echo "Session is not active.";
// }

?>

<head>
    <script src="public/Js/butt_deconnexion.js" defer></script>
    <script src="public/Js/menu_burger.js" defer></script>
</head>
<nav class="nav-bar">
    <a href="index.php">
        <img src="./public/Assets/logo_hf.png" alt="logo hf quizz">
    </a>
    <ul class="nav-right">
        <?php if (isset($_SESSION['login'])): ?>
            <li class="ligne"> <a href="?controller=home&action=acceuil">Accueil</a></li>

            <li class="ligne">
                <a href="?controller=qcm&action=theme">Commencer le Quizz </a>
            </li>
            <li class="ligne"><a href="?controller=classement&action=classement">Classement</a></li>
            <button type="submit" class="butt deco">Déconnexion</button>
            <a href="?controller=inscription&action=affiche_user"><i class="fa-solid fa-user" style="color: white;"></i></a>

            <!--<form action="?controller=inscription&action=log_out" class="form_deco" method="post">
                <h2>Voulez-vous vraiment vous déconnectez ?</h2>
                    <img src="public/Assets/pikachu_deco.png" alt="pikachu">
                <div class="container_butt_deco">
                    <button class="valider" type="submit">Oui</button>
                    <button class="close" type='button'>Non</button>
                </div>
            </form>-->

        <?php else: ?>
            <li class="ligne"> <a href="?controller=home&action=home">Accueil</a></li>

        <?php endif; ?>

        <?php if (!isset($_SESSION['login'])): ?>
            <li class="ligne"><a href="?controller=classement&action=classement">Classement</a></li>
            <li class='butt'><a href='?controller=inscription&action=inscription'>S'inscrire</a></li>
            <li class='butt'><a href='?controller=inscription&action=connexion'>Se connecter</a></li>
        <?php endif; ?>
    </ul>
    <form action="?controller=inscription&action=log_out" class="form_deco" method="post">
        <h2>Voulez-vous vraiment vous déconnectez ?</h2>
        <img src="public/Assets/pikachu_deco.png" alt="pikachu">
        <div class="container_butt_deco">
            <button class="valider" type="submit">Oui</button>
            <button class="close" type='button'>Non</button>
        </div>
    </form>
    <div class="icon_burger">
        <li></li>
    </div>
</nav>