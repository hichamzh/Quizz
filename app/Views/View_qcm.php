<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Qcm ready</title>
</head>
<body>
    
    <header><h1>QCM</h1></header><br>
       <?php 
       $questionLimit = 2; // Nombre de questions à afficher à la fois
       $questionOffset = $_SESSION['question_count'];
       $displayedQuestions = array_slice($_SESSION["quizz_data"]['questions'], $questionOffset, $questionLimit);
       foreach ($displayedQuestions as $q) :
        // if ($qstCount >= 2) {
        //     break;
        // }
       ?>
<form method="post" action="?controller=qcm&action=question_suivante">

    <h3><?=$q['question'] ;?></h3><br>
    
    <ul>
        <?php foreach ($_SESSION["quizz_data"]['reponses'] as $r) : ?>
            <?php if ($r['id_question'] === $q['id_question']) :?>                    
                
                <li>
                    <label>
                        <input type="radio" name="reponse[<?= $_SESSION['question_count']?>]" value="<?= $r['reponse'] ?>" required>
                        <?= $r['reponse'] ?>
                    </label>
                </li>
                <?php endif ?>    
                <?php endforeach; ?>
            </ul>
            <?php 
                $_SESSION['question_count']++;
            endforeach; ?>

            <input type="submit" value="Suivant" />

</form>
</body>
</html>