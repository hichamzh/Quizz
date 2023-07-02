<?php

class Model
{
    private $bdd; // Propriété pour stocker l'objet de connexion
    private static $instance = null; //stocker une unique instance de la classe Model

    public function __construct()
    {
        // 
        $dsn = "mysql:host=localhost;dbname=qcm"; // Adresse du serveur de la base de données avec le nom de la bdd
        $dbUser = "root"; // Nom d'utilisateur de la base de données
        $dbPass = ""; // Mot de passe de la base de données
        // Crée un nouvel objet PDO qui permet la connexion
        $this->bdd = new PDO($dsn, $dbUser, $dbPass);
        // encodage en utf-8 pour communiquer avec bdd
        $this->bdd->query("SET NAMES 'utf8'");
        // l'attribut ERRMODE_Exception permet de générer des exceptions en cas d'erreur
        $this->bdd->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    }


    public static function get_model()
    {
        // vérifie d'abord que propriété $instance est null/vide
        if (is_null(self::$instance)) {
            // Création d'une instance de la classe Model en utilisant la connexion fournie 
            self::$instance = new Model();
        }
        // stock dans $instance et la retourne 
        return self::$instance;
    }
    // FUNCTION POUR FAIRE L INSERTION A LA BDD
    public function get_inscription($login, $mdp, $role)
    {

        $hashedPassword = password_hash($mdp, PASSWORD_DEFAULT);
        $requete = $this->bdd->prepare(
            "INSERT INTO `utilisateur`(`login`, `mdp`, `roles`) 
            VALUES (:user, :mdp, :roles)"
        );

        $requete->bindParam(':user', $login);
        $requete->bindParam(':mdp', $hashedPassword);
        $requete->bindParam(':roles', $role);

        if ($requete->execute()) {
            return true; // Insertion réussie
        } else {
            return false; // Erreur lors de l'insertion
        }
    }
    // FUNCTION POUR VERIFIER SI LE LOGIN EXISTE DEJA 
    public function get_check_login($login)
    {
        $requete = $this->bdd->prepare("SELECT login from utilisateur WHERE login = :login");
        $requete->bindParam(":login", $login);
        $requete->execute();
        $result = $requete->fetchAll(PDO::FETCH_ASSOC);

        if (!empty($result)) {
            return true;
        } else {
            return false;
        }
    }
    // FUNCTION POUR FAIRE LA CONNEXION DES UTILISATEUR AU WEBSITE 
    public function get_connexion($login, $mdp)
    {

        $requete = $this->bdd->prepare("SELECT * FROM utilisateur WHERE login = :login");
        $requete->bindParam(':login', $login);
        // $requete->bindParam(':mdp', $mdp);
        $requete->execute();
        $result = $requete->fetch(PDO::FETCH_ASSOC);

        if ($result !== false && password_verify($mdp, $result['mdp']) && $result['login'] === $login) {
            return $result; // Connexion réussie
        } else {
            return false; // Identifiants invalides
        }
    }
    // SELECTIONNER LES THEMES 
    public function get_theme()
    {

        $requete = $this->bdd->prepare("SELECT * FROM theme");
        $requete->execute();
        $result = $requete->fetchAll(PDO::FETCH_ASSOC);
        return $result;
    }

    // RECUP UN NOMBRE DE QUESTIONS(ID) en fonction de l'id choisi et du niveau    
    public function get_question($id_theme, $niveau)
    {

        $requete = $this->bdd->prepare("SELECT q.id_question FROM questions q  WHERE id_theme = :id AND q.niveau = :niveau ORDER BY RAND() LIMIT 10");
        $requete->bindParam(":id", $id_theme);
        $requete->bindParam(":niveau", $niveau);
        $requete->execute();
        $result = $requete->fetchAll(PDO::FETCH_OBJ);

        return $result;
    }
    //SELECT tous dans la table questions en rapport avec l'id question qui est afficher lors du qcm
    public function get_question_une($id_question)
    {

        $requete = $this->bdd->prepare("SELECT * FROM questions q  WHERE id_question = :id ");
        $requete->bindParam(":id", $id_question);
        $requete->execute();
        $result = $requete->fetch(PDO::FETCH_OBJ);

        return $result;
    }

    // RECUP les reponses en fonction de l'id question qui est afficher
    public function get_reponse($id_question)
    {

        $requete = $this->bdd->prepare("SELECT * FROM reponses r WHERE r.id_question = :id_question ORDER BY RAND() ");
        $requete->bindParam(":id_question", $id_question);
        $requete->execute();
        $result = $requete->fetchAll(PDO::FETCH_OBJ);
        return $result;
    }

    public function check_reponse($id_reponse) //fonction avec un paramètre
    {
        // création de la requête SQL préparée en utilisant la méthode prepare de l'objet $bdd. 
        $requete = $this->bdd->prepare("SELECT * FROM reponses r WHERE r.id_reponse = :id_reponse");
        // on lie le parametre a une variable
        $requete->bindParam(":id_reponse", $id_reponse);
        // éxécute la requete
        $requete->execute();
        // récupere le résultat dans un objet
        $result = $requete->fetch(PDO::FETCH_OBJ);
        // retourne le résultat qui est dans la variable
        return $result;
    }

    public function insert_score($id_user, $id_theme, $niveau, $score, $time)
    {
        $requete = $this->bdd->prepare("INSERT INTO `choix`(id_utilisateur, id_theme, niveau, score, time) VALUES(:id_user, :id_theme, :niveau, :score, :timer)");
        $requete->bindParam(":id_user", $id_user);
        $requete->bindParam(":id_theme", $id_theme);
        $requete->bindParam(":niveau", $niveau);
        $requete->bindParam(":score", $score);
        $requete->bindParam(":timer", $time);
        $requete->execute();
    }

    public function get_classement()
    {
        $requete = $this->bdd->prepare('SELECT u.login, t.nom_theme, c.niveau, c.score, c.time, c.date_user FROM choix c INNER JOIN theme t  on t.id_theme = c.id_theme INNER JOIN utilisateur u ON u.id_utilisateur = c.id_utilisateur ORDER BY
        c.score DESC, c.time ASC');
        $requete->execute();
        $result = $requete->fetchAll(PDO::FETCH_OBJ);
        return $result;
    }

    public function get_user_compte($id_user)
    {
        $requete = $this->bdd->prepare("SELECT u.login, t.nom_theme, c.niveau, c.score, c.time, c.date_user
        FROM choix c
        INNER JOIN theme t ON t.id_theme = c.id_theme
        INNER JOIN utilisateur u ON u.id_utilisateur = c.id_utilisateur
        WHERE c.id_utilisateur = :id_user
        ORDER BY c.score DESC, c.time ASC");
        $requete->bindParam(':id_user', $id_user);
        $requete->execute();
        $result = $requete->fetchAll(PDO::FETCH_OBJ);
        return $result;
    }
}
