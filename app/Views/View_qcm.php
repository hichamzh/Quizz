<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="public/Css/qcm.css">
    <script src="public/Js/timer.js" defer></script>
    <title>Qcm ready</title>
</head>

<body>
    <div class="progress_bar_container">
        <div class="progress_bar"></div>
    </div>
    <header>
        <h1>QCM </h1>
    </header><br>
    Question N° 
    <?php
    $compteur = $_SESSION['question_count'];
    $compteur_string = intval($compteur)+1;
    echo $compteur_string;
    ?>

    <?php
    $score = $_SESSION['score'];
    $score_string = intval($score);
    ?>
    <!--<div class="score none">
                <h2>Score = </h2> <?php echo $score_string; ?>
            </div>-->
    <form method="post" action="?controller=qcm&action=question_suivante" class="form_qcm">
        <div class="qcm" class="larger-click-area">

            <h3><?= $data['question']->question; ?></h3><br>

            <?php foreach ($data['reponses'] as $r): ?>

                <label for="reponse<?= $r->id_reponse ?>" class="larger-click-area centre">
                    <input type="radio" id="reponse<?= $r->id_reponse ?>" name="reponse" class="margin " value="<?= $r->id_reponse ?>"
                        required>
                    <?= $r->reponse ?>
                </label>

            <?php endforeach; ?>



        </div>

        <div class="button">
            <input type="submit" value="Suivant" />
        </div>


    </form>
</body>

</html>