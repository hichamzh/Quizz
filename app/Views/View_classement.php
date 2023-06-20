<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="public/Css/classement.css">
    <title>Classement</title>
</head>
<body>
    <h1>Classement Global</h1>
    <table id="classement-table">
        <thead>
            <tr>
                <th>Login</th>
                <th>Thème</th>
                <th>Niveau</th>
                <th>Score</th>
                <th>Temps</th>
                <th>Date</th>
            </tr>
        </thead>
        <tbody>

            <?php $count = 1;
            foreach($classement as $c):?>
                <tr>
                    <td><?php echo "#".$count." ".$c->login?></td>
                    <td><?php echo $c->nom_theme?></td>
                    <td><?php echo $c->niveau?></td>
                    <td><?php echo $c->score?></td>
                    <td><?php echo $c->time?></td>
                    <td><?php echo $c->date_user?></td>
                </tr>
                
            <?php $count++;
            endforeach;?>
        </tbody>
    </table>
</body>
</html>