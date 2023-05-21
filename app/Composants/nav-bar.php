
<nav class="nav-bar">
        <ul class="nav-right">
            <?php if ($nom_controller !== 'inscription') : ?>
            <li>
                <a href='#regles'>Les Règles</a>
            </li>
            <?php else : ?>
                <li></li>
            <?php endif; ?>
            <li><a href='?controller=inscription&action=inscription'>Sign Up</a></li>
            <li><a href='?controller=inscription&action=connexion'>Sign In</a></li>
        </ul>
    </nav>