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

            foreach ($_SESSION['questions'] as $q) :
                echo "Question N°" . $questionNumero . ":<br>";
                $questionNumero++; // Incrémente le numéro de la question
                echo $q->question . "<br>";
            ?>

                <div class="red">
                    <?php

                    if ($r->id_question != $e[0]->id_question) :
                        foreach ($ancienne_reponses as $r) :
                            if ($r->id_question == $q->id_question) :
                    ?>
                                <label for="reponse<?= $r->reponse ?>" class="larger-click-area centre">
                                    <input type="hidden" id="reponse<?= $r->reponse ?>" name="reponse" class="margin" value="<?= $r->reponse ?>">
                                    <?= $r->reponse ?>
                                </label>
                    <?php
                            endif;
                        endforeach;
                    endif;
                    ?>
                </div>

                <div class="green">
                    <?php
                    // Parcours des réponses avec un état de 0
                    foreach ($_SESSION['reponsesEtat0'] as $e) :
                        if ($e[0]->id_question == $q->id_question) :
                    ?>
                            <label for="reponse<?= $e[0]->reponse ?>" class="larger-click-area centre">
                                <input type="hidden" id="reponse<?= $e[0]->reponse ?>" name="reponse" class="margin" value="<?= $e[0]->reponse ?>">
                                <?= $e[0]->reponse ?>
                            </label>
                </div>

        <?php
                        endif;
                    endforeach;

        ?>

    <?php endforeach; ?>
        </div>
    </div>

</body>

</html>