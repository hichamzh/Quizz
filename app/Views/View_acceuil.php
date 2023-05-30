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
    <section id="regles">
            <header class="regles">
                <h3>Les Règles du Quizz</h3>
            </header>
            <main class="presentation">
                <p>Êtes-vous prêt à tester vos connaissances sur ce sport passionnant ? Plongez dans l'univers du football et défiez-vous avec des questions sur les règles du jeu, les joueurs légendaires, les coupes du monde, les rivalités historiques et bien plus encore.</p>
                <p>Que vous soyez un fan inconditionnel ou simplement curieux de découvrir cet univers, notre quiz vous offre l'opportunité de vous mesurer à d'autres passionnés. Faites preuve de rapidité, de précision et montrez vos talents de connaisseur pour gravir les échelons du classement.</p>
                <p>Préparez-vous à ressentir l'excitation des grandes compétitions et à vivre une expérience de quiz unique en son genre. Alors, préparez vos crampons virtuels, enfilez votre maillot et embarquez pour une aventure footballistique captivante !</p>
                <p>Bonne chance et que le meilleur joueur gagne !</p>
            </main>
            <a href="?controller=qcm&action=theme"  class="butt">Go ! </a>
    </section>
</body>
</html>