<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="utf-8">
    <!-- <title>Fichier index.php</title> -->
    <link rel="stylesheet" type="text/css" href="Composants/nav-bar.css">
</head>

<body>
    <?php
    session_start();
    require_once 'Controllers/Controller.php';
    require_once 'Models/Model.php';
    $controllers = ["home","question","reponse", "inscription"];
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