<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./public/Css/theme.css">
    <title>Thèmes</title>
</head>
<body>
    <main>
        <header><h1>Choisissez votre thème</h1></header>
        <section class="container_theme">
    
        <?php unset($_SESSION['questions']); ?>
        <?php foreach($data['themes'] as $t) :?>
            <div class="card_theme">
                <img src="public/Assets/<?=$t['image_theme'] ?>" alt="logo" class="img_theme">
                <p class="nom_theme"><?= $t['nom_theme'] ?></p>
                <div class="niveaux">
                <a href="?controller=qcm&action=theme_question&id_theme=<?= $t['id_theme'] ?>&lvl=facile">
                        Facile
                    </a>
                    <a href="?controller=qcm&action=theme_question&id_theme=<?= $t['id_theme'] ?>&lvl=moyen">
                        Moyen
                    </a>
                    <a href="?controller=qcm&action=theme_question&id_theme=<?= $t['id_theme'] ?>&lvl=difficile">
                        Difficile
                    </a>
                </div>
            </div>
            <?php endforeach; ?>
            
        </section>
    </main>
</body>
</html>