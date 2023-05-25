
<nav class="nav-bar">
<img src="./public/Assets/logo_hfk.png" alt=""> 
        <ul class="nav-right">
            <?php if ($nom_controller !== 'inscription') : ?>
            <li>
                <a href='#regles'>Les Règles</a>
            </li>
            <?php else : ?>
                <li></li>
            <?php endif; ?>
            <li><a href='?controller=inscription&action=inscription' class='butt'>Sign Up</a></li>
            <li><a href='?controller=inscription&action=connexion' class='butt'>Sign In</a></li>
        </ul>
    </nav>