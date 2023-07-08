<?php
error_reporting(E_ALL);
class Controller_inscription extends Controller
{
    public function action_default()
    {
        $this->action_inscription();
    }
    //  AFFICHER LA VIEW SIGN UP
    public function action_inscription()
    {
        $m = Model::get_model();
        $this->render("inscription");
    }
    // POUR FAIRE L'INSERTION A LA BDD, S'INSCRIRE
    public function action_inscription_insert()
    {
        if ($_SERVER['REQUEST_METHOD'] === 'POST') { // si la requete HTTP est en POST
            if (!empty($_POST['login']) && !empty($_POST['mdp'])) {
                $login = $_POST['login'];
                $mdp = $_POST['mdp'];
                $role = "user";
                $regex = '/^(?=.*[A-Z])(?=.*\d)/';
                $m = Model::get_model();
                $salt = random_bytes(32);
                $mdp_salt = $salt . $mdp;

                if (preg_match($regex, $mdp_salt) && strlen($mdp_salt) > 8) {
                    $existing_user = $m->get_check_login($login);

                    if ($existing_user) {
                        $data = ['erreur' => "L'identifiant existe déjà, veuillez en choisir un autre"];
                        $this->render('inscription', $data);
                    } else {
                        $m->get_inscription($login, $mdp, $role);
                        $this->render("connexion"); // envoie vers la page de connexion
                    }
                } else {
                    $data =['erreur' => "Le mot de passe doit contenir au moins une lettre en majuscule, un chiffre et minimum 8 caractères."];
                    $this->render("inscription", $data);
                }

            } else {
                $data = [
                    "erreur" => "Veuillez remplir tous les champs"
                ];
                $this->render('inscription', $data);
            }
        } 
    }
    // Afficher la View SIGN IN (connexion)
    public function action_connexion()
    {
        $m = Model::get_model();
        $this->render("connexion");
    }

    public function action_connexion_verif()
    {
        if (!empty($_POST['login']) && !empty($_POST['mdp'])) { //si les champs ne sont pas vides on continue le code 
            $login = $_POST['login']; // on cree donc une variable login 
            $mdp = $_POST['mdp'];// et mdp
            $m = Model::get_model(); // on recupere l'instance cree dans get model qui est une fonction static de class Model
            $success = $m->get_connexion($login, $mdp); //on stock la methode get_connexion qui nous permet de faire la connexion
            if ($success) { // si c'est true
                $_SESSION['login'] = $login;
                $_SESSION['id'] = $success['id_utilisateur'];
                // print '<pre>' . print_r($_SESSION, true). '</pre>';
                // die();
                header("location: index.php?controller=home&action=acceuil");
    
            } else {
                // var_dump($success);
                // die();
                $data = ["erreur" => 'Identifiant ou Mot de passe incorrect'];
                $this->render("connexion", $data);
            }
        } else {
            $data = ["erreur" => "Veuillez saisir tous les champs"];
            $this->render("connexion", $data);
        }
    }

    public function action_log_out()
    {

        unset($_SESSION['login']); // Destruction de la variable $_SESSION['login']
        unset($_SESSION['id_utilisateur']); // Destruction de la variable $_SESSION['login']
        session_destroy(); // Destruction complète de la session
        header("location: index.php?controller=inscription&action=connexion");
        exit;
    }

    public function action_affiche_user()
    {
        $id_user = $_SESSION['id'];
        $m = Model::get_model();
        $data =
            [
                "user_compte" => $m->get_user_compte($id_user)
            ];
        $this->render('users', $data);
    }
}