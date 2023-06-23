<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="public/Css/end_qcm.css">
    <link rel="stylesheet" href="public/Css/qcm.css">
    <title>Fin du Quizz</title>
</head>

<body>

    <?php

    // Récupérer le tableau de réponses depuis la session
    $ancienne_reponses = $_SESSION['ancienne_reponse'];

    // Parcourir le tableau de réponses avec une boucle foreach
    ?>

    <div class="correction" class="larger-click-area">
        <div class="qst_actuel">

            <?php
            // Variable de compteur pour le numéro de la question
            $questionNumero = 1;

            foreach ($questionsData as $data) :
                echo "Question N°" . $questionNumero . ":<br>";
                $questionNumero++; // Incrémente le numéro de la question
                echo $data['question'];
            ?>

                <div class="green">
                    <label for="reponse<?= $data['goodAnswer']; ?>" class="larger-click-area centre">
                        <input type="hidden" id="reponse<?= $data['goodAnswer']; ?>" name="reponse" class="margin" value="<?= $data['goodAnswer']; ?>">
                        <?= $data['goodAnswer']; ?>
                    </label>
                </div>

                <?php if ($data['userAnswer'] !== $data['goodAnswer']) : ?>
             
                    <div class="red">
                        <label for="reponse<?= $data['userAnswer'] ?>" class="larger-click-area centre">
                            <input type="hidden" id="reponse<?= $data['userAnswer'] ?>" name="reponse" class="margin" value="<?= $data['userAnswer'] ?>">
                            <?= $data['userAnswer'] ?>
                        </label>
                    </div>


            <?php
                endif;
            endforeach; ?>
        </div>
    </div>

</body>

</html>