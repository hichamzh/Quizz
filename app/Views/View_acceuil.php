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
    <section class="container_regle">
        <?php if (isset($_SESSION['login'])): ?>
            <header class="header_text">
                <h1>Bienvenue sur HF Quizz 👋</h1>
                <span><?php echo $_SESSION['login']; ?></span>
            </header>
        <?php endif ?>
        <main class="presentation">
            <p>Prêt à tester vos connaissances sportives ? </p>
            <p>Choisissez parmi nos différents thèmes et répondez à 20 questions en seulement 30 secondes chacune.</p> 
            <p>Trois niveaux de difficulté sont disponibles : facile, moyen et difficile.</p>
            <p>Bonne chance et que le meilleur joueur gagne !</p>
            <div class="container_button">
                <li class="butt"><a href="?controller=qcm&action=theme">Go !</a></li>
            </div>
        </main>


    </section>
</body>

</html>