<?php 

session_start();

 ?>
<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="utf-8">
    <!-- <title>Fichier index.php</title> -->
    <link rel="stylesheet" type="text/css" href="Composants/nav-bar.css">
</head>

<body>
    <?php
        // Vérification de la durée d'inactivité
        if (isset($_SESSION['last_activity'])) {
            $inactive_duration = 3; // 3 sec test
            $current_time = time();
            $last_activity = $_SESSION['last_activity'];

            if ($current_time - $last_activity > $inactive_duration) {
                session_unset();
                session_destroy();
                // Rediriger vers une page de déconnexion ou une autre page appropriée
                header("Location: logout.php");
                exit();
            }
        }

        // Enregistrer la date et l'heure de la dernière activité
        $_SESSION['last_activity'] = time();
    
    require_once 'Controllers/Controller.php';
    require_once 'Models/Model.php';
    $controllers = ["home","qcm","inscription"];
    $controller_default = "home";
    
    if (isset($_GET['controller']) and in_array($_GET['controller'], $controllers)) {
        $nom_controller = $_GET['controller'];
    } else {
        $nom_controller = $controller_default;
    }
    require_once './Composants/nav-bar.php';

    $nom_classe = "Controller_" . $nom_controller;
    $nom_fichier = "Controllers/" . $nom_classe . ".php";

    if (file_exists($nom_fichier)) {
        require_once($nom_fichier);
        $controller = new $nom_classe();
    } else {
        exit("Error 404 : not found");
    }

    // require_once 'Composants/footer.php';
    ?>
</body>

</html>