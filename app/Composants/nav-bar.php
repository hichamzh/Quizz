<?php
if (session_status() === PHP_SESSION_ACTIVE) {
    // Session is active
    echo "Session is active.";
} else {
    // Session is not active
    echo "Session is not active.";
}

?>

<nav class="nav-bar">
    <img src="./public/Assets/logo_hfk.png" alt=""> 
    <ul class="nav-right">
        <li class="ligne">
             <a 
             <?php if(isset($_SESSION['login'])) :?>
             href="?controller=home&action=acceuil"
             <?php else :?>
                href='?controller=home&action=home'
                <?php endif ?>
                >
                Accueil
            </a>
        </li>
        <?php if (isset( $_SESSION['login']) ) : ?>
            <li class="ligne">
                <a href='?controller=home&action=acceuil#regles'>Les Règles</a>
            </li>
            <form method="post" action="logout.php">
            <button type="submit" class="butt">Déconnexion</button>
            </form>
        <?php endif; ?>

        <?php if (!isset($_SESSION['login'])) : ?>
            <li class='butt'><a href='?controller=inscription&action=inscription' >Sign Up</a></li>
            <li class='butt'><a href='?controller=inscription&action=connexion'>Sign In</a></li>
        <?php endif; ?>
    </ul>
</nav>