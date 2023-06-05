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
       <?php $qstCount = 0;
       foreach ($data["questions"] as $q) :
        if ($qstCount >= 2) {
            break;
        }
       ?>
<form method="post" action="?controller=qcm&action=question_suivante">

    <h3><?=$q['question'] ;?></h3><br>
    
    <ul>
        <?php foreach ($data['reponses'] as $r) : ?>
            <?php if ($r['id_question'] === $q['id_question']) :?>                    
                
                <li>
                    <label>
                        <input type="radio" name="reponse[<?=$qstCount?>]" value="<?= $r['reponse'] ?>">
                        <?= $r['reponse'] ?>
                    </label>
                </li>
                <?php endif ?>    
                <?php endforeach; ?>
            </ul>
            <?php 
                $qstCount++;
            endforeach; ?>

<input type="submit" value="Suivant" />

</form>
</body>
</html>