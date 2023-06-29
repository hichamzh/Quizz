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
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            if (isset($_POST['login']) && isset($_POST['mdp'])) {
                $login = $_POST['login'];
                $mdp = $_POST['mdp'];
                $role = "user";
                $m = Model::get_model();
                $existing_user = $m->get_check_login($login);

                if ($existing_user) {
                    $data = ['erreur' => "L'identifiant existe déjà, veuillez en choisir un autre"];
                    $this->render('inscription', $data);
                } else {
                    $m->get_inscription($login, $mdp, $role);
                    $this->render("connexion"); // envoie vers la page de connexion
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
        // $id_user = 
        $login = $_POST['login'];
        $mdp = $_POST['mdp'];
        $m = Model::get_model();
        $success = $m->get_connexion($login, $mdp);
        if ($success) {
            $_SESSION['login'] = $login;
            $_SESSION['id'] = $success['id_utilisateur'];
            // print '<pre>' . print_r($_SESSION, true). '</pre>';
            // die();
            header("location: index.php?controller=home&action=acceuil");
            // $this->render("Acceui", ["login" => $_SESSION['login']]);

        } else {
            // var_dump($success);
            // die();
            $data = ["erreur" => 'Identifiant ou Mot de passe incorrect'];
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