<?php

class Model {
    private $bdd; // Propriété pour stocker l'objet de connexion
    private static $instance = null;

    public function __construct() {
        
        $dsn = "mysql:host=localhost;dbname=qcm"; // Adresse du serveur de la base de données avec le nom de la bdd
        $dbUser = "root"; // Nom d'utilisateur de la base de données
        $dbPass = ""; // Mot de passe de la base de données
        $this->bdd = new PDO($dsn, $dbUser, $dbPass);
        $this->bdd->query("SET NAMES 'utf8'");
        $this->bdd->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    }
    
    public static function get_model(){

        if(is_null(self::$instance)){
        // Création d'une instance de la classe Model en utilisant la connexion fournie
            self::$instance = new Model();
        } 
        return self::$instance;
    } 
// FUNCTION POUR FAIRE L INSERTION A LA BDD
    public function get_inscription($login, $mdp, $role) {

        $requete = $this->bdd->prepare("INSERT INTO `utilisateur`(`login`, `mdp`, `roles`) VALUES (:user, :mdp, :roles)");
        $requete->bindParam(':user', $login);
        $requete->bindParam(':mdp', $mdp);
        $requete->bindParam(':roles', $role);

        if ($requete->execute()) {
            return true; // Insertion réussie
        } else {
            return false; // Erreur lors de l'insertion
        }
    }
// FUNCTION POUR FAIRE LA CONNEXION DES UTILISATEUR AU WEBSITE 
    public function get_connexion($login, $mdp){
        $requete = $this->bdd->prepare("SELECT * FROM utilisateur WHERE login = :login AND mdp = :mdp");
        $requete->bindParam(':login', $login);
        $requete->bindParam(':mdp', $mdp);
        $requete->execute();
        // $requete->fetch(PDO::FETCH_ASSOC);
        // return $requete;
        $result = $requete->fetch(PDO::FETCH_ASSOC);
        if ($result !== false) {
            return true; // Connexion réussie
        } else {
            return false; // Identifiants invalides
        }
    }

}