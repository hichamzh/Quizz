<?php
// if (session_status() === PHP_SESSION_ACTIVE) {
//     // Session is active
//     echo "Session is active.";
// } else {
//     // Session is not active
//     echo "Session is not active.";
// }

?>

<nav class="nav-bar">
    <img src="./public/Assets/logo_hfk.png" alt=""> 
    <ul class="nav-right">
        <?php if (isset($_SESSION['login'])) : ?>
            <li> <a href="?controller=home&action=acceuil">Accueil</a></li>
            <li>
                <a href='?controller=home&action=acceuil#regles'>Les Règles</a>
            </li>
            <form method="post" action="?controller=inscription&action=log_out">
                <button type="submit" class="butt">Déconnexion</button>
            </form>
            <?php else :?>
            <li> <a href="?controller=home&action=home">Accueil</a></li>
            <?php endif; ?>

        <?php if (!isset($_SESSION['login'])) : ?>
            <li class='butt' ><a href='?controller=inscription&action=inscription'>S'inscrire</a></li>
            <li class='butt' ><a href='?controller=inscription&action=connexion'>Se connecter</a></li>
        <?php endif; ?>
    </ul>
</nav>