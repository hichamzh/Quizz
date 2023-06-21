<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="public/Css/users.css">
    <title>Votre compte</title>
</head>
<body>
    <section class="container_user">
        <div>
            <h1>Utilisateur : <?php echo $_SESSION['login']?></h1>
        </div>
        <div class="container_result">
            <h2>Résultats de vos Quizz : </h2>
            <table>
                <thead>
                <tr>
                    <th>Thème</th>
                    <th>Niveau</th>
                    <th>Score</th>
                    <th>Temps</th>
                    <th>Date</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($data['user_compte'] as $u) :?>
                <tr>
                    <td><?php echo $u->nom_theme?></td>
                    <td><?php echo $u->niveau?></td>
                    <td><?php echo $u->score?></td>
                    <td><?php echo $u->time?></td>
                    <td><?php echo $u->date_user?></td>
                </tr>
                <?php endforeach;?>
            </tbody>
            </table>
        </div>
    </section>
</body>
</html>