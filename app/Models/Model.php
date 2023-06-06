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

        $hashedPassword = password_hash($mdp, PASSWORD_DEFAULT);
        $requete = $this->bdd->prepare("INSERT INTO `utilisateur`(`login`, `mdp`, `roles`) VALUES (:user, :mdp, :roles)");
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
    public function get_check_login($login) {
        $requete = $this->bdd->prepare("SELECT login from utilisateur WHERE login = :login");
        $requete->bindParam(":login", $login);
        $requete->execute();
        $result = $requete->fetchAll(PDO::FETCH_ASSOC);

        if(!empty($result)) {
            return true;
        } else {
            return false;
        }
    }
// FUNCTION POUR FAIRE LA CONNEXION DES UTILISATEUR AU WEBSITE 
    public function get_connexion($login, $mdp){

        $requete = $this->bdd->prepare("SELECT * FROM utilisateur WHERE login = :login");
        $requete->bindParam(':login', $login);
        // $requete->bindParam(':mdp', $mdp);
        $requete->execute();
        $result = $requete->fetch(PDO::FETCH_ASSOC);
        
        if ($result !== false && password_verify($mdp, $result['mdp']) && $result['login'] === $login ) {
            return $result; // Connexion réussie
        } else {
            return false; // Identifiants invalides
        }
    }
// SELECTIONNER LES THEMES 
    public function get_theme(){

        $requete = $this->bdd->prepare("SELECT * FROM theme");
        $requete->execute();
        $result = $requete->fetchAll(PDO::FETCH_ASSOC);
        return $result;
    }

// RECUP TOUTE LES QUESTIONS en fonction de l'id choisi et du niveau    
    public function get_question($id_theme, $niveau) {

        $requete = $this->bdd->prepare("SELECT q.id_question FROM questions q  WHERE id_theme = :id AND q.niveau = :niveau ORDER BY RAND() LIMIT 20");
        $requete->bindParam(":id", $id_theme);
        $requete->bindParam(":niveau", $niveau);
        $requete->execute();
        $result = $requete->fetchAll(PDO::FETCH_OBJ);
        // while ($row =  $requete->fetch(PDO::FETCH_ASSOC)) {
        //     yield $row; // pour voir ligne par ligne 
        // }
        return $result;
    }
    public function get_question_une($id_question) {

        $requete = $this->bdd->prepare("SELECT * FROM questions q  WHERE id_question = :id ");
        $requete->bindParam(":id", $id_question);
        $requete->execute();
        $result = $requete->fetch(PDO::FETCH_OBJ);
        // while ($row =  $requete->fetch(PDO::FETCH_ASSOC)) {
        //     yield $row; // pour voir ligne par ligne 
        // }
        return $result;
    }

// pareil mais pour les reponses 
    public function get_reponse($id_question) {

        $requete = $this->bdd->prepare("SELECT * FROM reponses r WHERE r.id_question = :id_question");
        $requete->bindParam(":id_question", $id_question);
        $requete->execute();
        $result = $requete->fetchAll(PDO::FETCH_OBJ);
        return $result;
    }

    
}