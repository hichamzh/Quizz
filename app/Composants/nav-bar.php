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
        <li> <a href="?controller=home&action=home">Accueil</a></li>
        <?php if ( isset( $_SESSION['login']) ) : ?>
            <li>
                <a href='#regles'>Les Règles</a>
                <form method="post" action="logout.php">
                    <button type="submit">Déconnexion</button>
                </form>
            </li>
        <?php else : ?>
            <li></li>
        <?php endif; ?>
        <?php if (!isset( $_SESSION['login'])) : ?>
            <li><a href='?controller=inscription&action=inscription' class='butt'>Sign Up</a></li>
            <li><a href='?controller=inscription&action=connexion' class='butt'>Sign In</a></li>
        <?php endif; ?>
    </ul>
</nav>