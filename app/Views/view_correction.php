<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="public/Css/end_qcm.css">
    <title>Fin du Quizz</title>
</head>
<body>
  

        <?php

// Récupérer le tableau de réponses depuis la session
$ancienne_reponses = $_SESSION['ancienne_reponse'];

 print'<pre>' .print_r($_SESSION['questions' ],true). '</pre>';

// Variable de compteur pour le numéro de la question
$questionNumero = 1; 
// Parcourir le tableau de réponses avec une boucle foreach

foreach ($ancienne_reponses as $reponse) {
    $id_reponse = $reponse->id_reponse;
    $question = $reponse->id_question;
    $reponse_text = $reponse->reponse;
    $niveau = $reponse->niveau;
    $etat = $reponse->etat;
  
    echo "Question N°" . $questionNumero . ":<br>";
    echo "Question: $question<br>";
    echo "Réponse: $id_reponse<br>";
    echo "Réponse: $reponse_text<br>";
    echo "État: $etat<br>";
    echo "<br>";
  
    $questionNumero++; // Incrémente le numéro de la question
    }
?>

</body>
</html>