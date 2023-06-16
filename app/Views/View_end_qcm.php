<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="public/Css/end_qcm.css">
    <title>Fin du Quizz</title>
</head>
<body>
    <div class="score">
        <h1>Voici votre score</h1>
        <p><?php echo $_SESSION['score']?></p>
        <h1>Voici vos temps</h1>

    <p>Question </p>
    <?php for ($i = 1; $i <= 3; $i++) : ?>
    <?php echo  $i.':'; ?>
    <?php endfor; ?>
        <p><?php print implode(', ', $_SESSION['timer']); ?></p>
        <p><?php var_dump ($_SESSION['ancienne_reponse']); ?></p>
    </div>
 <a href="index.php?controller=qcm&action=correction"> correction </a>

</body>
</html>