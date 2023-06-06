<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="public/Css/qcm.css">
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
<form  method="post" action="?controller=qcm&action=question_suivante">
<div class="qcm" class="larger-click-area">

    <h3 ><?=$q['question'] ;?></h3><br>
   
 
    
    
    
        <?php foreach ($data['reponses'] as $r) : ?>
            <?php if ($r['id_question'] === $q['id_question']) :?>                    
           
            <label for="myInput" class="larger-click-area">
              <input type="radio" id="myInput" name="reponse[<?=$qstCount?>]" value="<?= $r['reponse'] ?>" required>
              <?= $r['reponse'] ?>
            </label>         
    
                <?php endif ?>    
                <?php endforeach; ?>
           
    
        </div>
        <?php 
                $qstCount++;
            endforeach; ?>
<div class="button">
    <input type="submit" value="Suivant" />

</div>

</form>
</body>
</html>