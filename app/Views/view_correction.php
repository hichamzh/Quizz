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

// Parcourir le tableau de réponses avec une boucle foreach
foreach ($ancienne_reponses as $reponse) {
    $id_reponse = $reponse->id_reponse;
    $question = $reponse->question;
    $reponse_text = $reponse->reponse;
    $niveau = $reponse->niveau;
    $etat = $reponse->etat;

    // Afficher les informations de chaque réponse

    echo " Question: $question<br>";
    echo "Réponse: $reponse_text<br>";
    echo "Niveau: $niveau<br>";
    echo "État: $etat<br>";
    echo "<br>";
}
?>

</body>
</html>