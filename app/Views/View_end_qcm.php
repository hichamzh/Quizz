<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="public/Css/end_qcm.css">
    <title>Fin du Quizz</title>
</head>
<body>
    <!--<section class="score">
        <h1>Voici votre score</h1>
        <p><?php echo $_SESSION['score']?></p>
        <h1>Voici vos temps</h1>

    <p>Question </p>
    <?php for ($i = 1; $i <= 3; $i++) : ?>
    <?php echo  $i.':'; ?>
    <?php endfor; ?>
        <p><?php print implode(', ', $_SESSION['timer']); ?></p>
    </section>-->

    </div>
    <p><?php var_dump ($_SESSION['ancienne_reponse']); ?></p>
    <section class="score">
        <header>
            <h1></h1>
        </header>
        <div class="container_result">
            <div class="container_pikachu">
                <img src="public/Assets/pikachu_result.png" alt="pikachu results">
            </div>
            <div class="results">
                <p class="score_user">
                    Votre score est de 
                <?php echo $_SESSION['score']."/".$nbr;?>
                </p>

                <p>
                    Total du temps : 
                <?php 
                echo $total_timer; ?>
                </p>
                <div class="butt_result">
                    <a href="">Voir correction</a>
                    <a href="?controller=qcm&action=theme">Commencer un autre quizz</a>
                    
                </div>
            </div>   
        </div>
    </section>

</body>
</html>