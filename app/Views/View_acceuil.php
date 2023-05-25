<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./public/Css/acceuil.css">
    <title>Acceuil Quizz</title>
</head>
<body>
    <?php if (isset($_SESSION['login'])): ?>
        <header class="header_text">
            <h1>Salut <?php echo $_SESSION['login'];  ?></h1>
        </header>
        <?php endif ?>
        <a href="?controller=qcm&action=theme" style='color: greenyellow;'>Voir les themes</a>
</body>
</html>