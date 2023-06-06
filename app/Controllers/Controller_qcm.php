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

        $id_theme = $_GET['id_theme']; // L'id du thème choisi
        $niveau = $_GET['lvl']; // Le niveau choisi
    
        $m = Model::get_model();
        $questions = $m->get_question($id_theme, $niveau);
            
            // Stocker les données dans la session
            $questions_count = 0;
        $_SESSION['id_theme'] = $id_theme;
        $_SESSION['lvl'] = $niveau;
        $_SESSION['question_count'] = $questions_count;
        $_SESSION['list_questions'] = $questions;

        $id_question = $questions[$questions_count]->id_question; 
        $question = $m->get_question_une($id_question);
        $reponses = $m->get_reponse($id_question);

        // print'<pre>' .print_r($question, true). '</pre>';
        // print'<pre>' .print_r($reponses, true). '</pre>';
        // die();

        $data = [
                "question" => $question,
                "reponses" => $reponses
            ];

        $this->render("qcm", $data);

    }
    public function action_question_suivante(){

        $m = Model::get_model();    
            // Stocker les données dans la session
            $questions_count = $_SESSION['question_count'];
            $questions_count++;
            $_SESSION['question_count'] = $questions_count;
            $questions = $_SESSION['list_questions'];

            $id_question = $questions[$questions_count]->id_question;

            $question = $m->get_question_une($id_question);
            $reponses = $m->get_reponse($id_question);

        // print'<pre>' .print_r($question, true). '</pre>';
        // print'<pre>' .print_r($reponses, true). '</pre>';
        // die();

        $data = [
                "question" => $question,
                "reponses" => $reponses
            ];
            
        $this->render("qcm", $data);

    }

    //     public function action_question_suivante(){
    // // Enregistrement des réponses
    // if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    //     $reponses = $_POST['reponse']; // Les réponses sélectionnées par l'utilisateur

    //     // Enregistrement des réponses dans la session
    //     if (!isset($_SESSION['quizz_reponses'])) {
    //         $_SESSION['quizz_reponses'] = array();
    //     }
    //     $_SESSION['quizz_reponses'][] = $reponses;
    //      print'<pre>' .print_r($_SESSION, true). '</pre>';
    //     // Récupération des données de la session
    //     // Utilisation des données pour la suite du traitement
    //     // ...
    //     // die();
    //     $this->render("qcm");
    // } else {
    //     // Affichage du formulaire de quiz et des questions
    //     // Charger les questions et les réponses depuis la base de données ou autre
    //     // Afficher les questions et les réponses dans la vue correspondante
    //     echo "ERREUR enregistrement";
    // }

    // }
}