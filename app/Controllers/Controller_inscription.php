<?php
error_reporting(E_ALL);
class Controller_inscription extends Controller
{
    public function action_default(){
        $this->action_inscription();
    }
    //  AFFICHER LA VIEW SIGN UP
    public function action_inscription(){
        $m = Model::get_model();
        $this->render("inscription");
    }
    // POUR FAIRE L'INSERTION A LA BDD, S'INSCRIRE
    public function action_inscription_insert (){
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $login = $_POST['login'];
            $mdp = $_POST['mdp'];
            $role ="user";
            $m = Model::get_model();
            
            $m->get_inscription($login, $mdp, $role);
            $this->render("connexion"); //envoie vers la page de connexion
            
        }

    }
    // Afficher la View SIGN IN (connexion)
    public function action_connexion(){
        $m = Model::get_model();
        $this->render("connexion");
    }

    public function action_connexion_verif(){

            $login = $_POST['login'];
            $mdp = $_POST['mdp'];

            $m = Model::get_model(); 
            $success = $m->get_connexion($login, $mdp);
            if($success){
                $_SESSION['login'] = $login;
                $this->render("acceuil", ["login" => $_SESSION['login']]);
                
            } 
            else {
                // var_dump($success);
                // die();
                $data = ["erreur" => 'Identifiant ou Mot de passe incorrect'];
                $this->render("connexion", $data);
            }
        }

    }
