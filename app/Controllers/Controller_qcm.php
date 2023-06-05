<?php

class Controller_qcm extends Controller 
{   
    public function action_default()
    {
        $this->action_theme();
    }

    public function action_theme(){
        $m = Model::get_model();
        $data = 
        [
            "themes" => $m->get_theme()
        ];

        // $img_theme = [ "football" => "public/Assets/football.jpg"];
        $this->render("themes", $data);
    }

    public function action_theme_question(){
        $id_theme = $_GET['id_theme']; //ceci est l'id du theme choisi.
        $niveau = $_GET['lvl']; //le niveau choisi.
        // var_dump($niveau);
        // die();
        $m = Model::get_model();
        $data = 
        [
            "questions" => $m->get_question($id_theme, $niveau),
            "reponses" => $m->get_reponse($id_theme)
        ];

        // Afficher les données la Session en cours
        // print '<pre>' . print_r($_SESSION, true). '</pre>';
        // Afficher les données des Réponses
        // print '<pre>' . print_r($data['reponses'], true). '</pre>';
        // var_dump($_SESSION);
        // die();
        $this->render("qcm", $data);

    }



        public function action_question_suivante(){

         
     
            // enregistrement reponse
            if ($_SERVER['REQUEST_METHOD'] === 'POST') {
                $reponses = $_POST['reponse']; // Les réponses sélectionnées par l'utilisateur
    
                // Enregistrement des réponses dans la session
                if (!isset($_SESSION['quiz_reponses'])) {
                    
                    $_SESSION['quiz_reponses'] = array();
                }


                $_SESSION['quiz_reponses'][]= $reponses;                
                // var_dump($_SESSION['quiz_reponses'] )  ;
                print '<pre>' . print_r($_SESSION['quiz_reponses'], true). '</pre>';
                
                // Redirection ou affichage d'un message de confirmation


            } else {
                // Affichage du formulaire de quiz et des questions
                // Charger les questions et les réponses depuis la base de données ou autre
                // Afficher les questions et les réponses dans la vue correspondante
                echo "ERREUR enregistrement";
            }

    }
}