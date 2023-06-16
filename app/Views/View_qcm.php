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



<!-- Generation d'image en fond selon le theme -->
    <?php for ($i = 0; $i < 16; $i++) : ?>
        <?php if ($_SESSION['id_theme'] == '7') : ?>
            <div class="carre"></div>

        <?php elseif ($_SESSION['id_theme'] == '8') : ?>
            <div class="basket"></div>

        <?php endif; ?>
    <?php endfor; ?>

<!-- Generation barre de timer -->
    <div class="progress_bar_container">
        <div class="progress_bar"></div>
    </div>
    <?php
    $score = $_SESSION['score'];
    $score_string = intval($score);

    ?>

    <form method="post" action="?controller=qcm&action=question_suivante" class="form_qcm">
        <!-- input caché pour le timer -->
        <input type="hidden" name="timer" value="0">
        <div class="qcm" class="larger-click-area">
            <div class="qst_actuel">
                Question N°
                <?php
                $compteur = $_SESSION['question_count'];
                $compteur_string = intval($compteur) + 1;
                echo $compteur_string;
                ?>
            </div>
            <h3>
                <?= $data['question']->question; ?>
            </h3>

            <div class="container_reponses">
                <?php foreach ($data['reponses'] as $r) : ?>

                    <label for="reponse<?= $r->id_reponse ?>" class="larger-click-area centre">
                        <input type="radio" id="reponse<?= $r->id_reponse ?>" name="reponse" class="margin " value="<?= $r->id_reponse ?>" required>
                        <?= $r->reponse ?>
                    </label>

                <?php endforeach; ?>
            </div>

            <div class="button">
                <input type="submit" value="Suivant" class="butt" />
            </div>
        </div>
    </form>
</body>

</html>