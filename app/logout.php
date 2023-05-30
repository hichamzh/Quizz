<?php
// Démarrez la session
// session_start();

// Détruisez toutes les variables de session
session_unset();

// Détruisez la session
session_destroy();

// Redirigez l'utilisateur vers une autre page (par exemple, la page d'accueil)
header("Location: index.php?controller=inscription&action=connexion");
exit();
?>
