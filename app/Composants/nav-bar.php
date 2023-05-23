<?php
if (session_status() === PHP_SESSION_ACTIVE) {
    // Session is active
    echo "Session is active.";
} else {
    // Session is not active
    echo "Session is not active.";
}
$isSessionActive = (session_status() === PHP_SESSION_ACTIVE);
?>

<nav class="nav-bar">
    <img src="./public/Assets/logo_hfk.png" alt=""> 
    <ul class="nav-right">
        <?php if ($nom_controller !== 'inscription' && !$isSessionActive) : ?>
            <li>
                <a href='#regles'>Les Règles</a>
            </li>
        <?php else : ?>
            <li></li>
        <?php endif; ?>
        <?php if ($isSessionActive) : ?>
            <li><a href='?controller=inscription&action=inscription'>Sign Up</a></li>
            <li><a href='?controller=inscription&action=connexion'>Sign In</a></li>
        <?php endif; ?>
    </ul>
</nav>
