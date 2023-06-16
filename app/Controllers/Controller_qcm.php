<?php

class Controller_qcm extends Controller
{
    public function action_default()
    {
        $this->action_theme();
    }

    public function action_theme()
    {
        $m = Model::get_model();
        $data =
            [
                "themes" => $m->get_theme()
            ];

        // $img_theme = [ "football" => "public/Assets/football.jpg"];
        $this->render("themes", $data);
    }

    public function action_theme_question()
    {
        $_SESSION['score'] = 0;
        $id_theme = $_GET['id_theme']; // L'id du thème choisi
        $niveau = $_GET['lvl']; // Le niveau choisi


        $m = Model::get_model();
        $questions = $m->get_question($id_theme, $niveau); //list des questions


        $list_timer = [];
        $_SESSION["timer"] = $list_timer;
        // Stocker les données dans la session
        $questions_count = 0; // compteur qui sera stocker dans la session['question_count']

        $_SESSION['id_theme'] = $id_theme; // id_theme choisi qui est stocker dans la session['id_theme']
        $_SESSION['lvl'] = $niveau; // le niveau choisi qui est stocker dans la session['lvl']
        $_SESSION['question_count'] = $questions_count; //compteur stocker dans la session['question_count']
        $_SESSION['list_questions'] = $questions; //la liste des questions choisis grace a la function get_question() stocker dans la session['list_questions]

        $id_question = $questions[$questions_count]->id_question; //variable qui contient une id_question
        $question = $m->get_question_une($id_question); // varibale qui contient une ligne entiere de la table questions
        $reponses = $m->get_reponse($id_question); //variable qui contient les reponses en en fonction de l'id question 

        // print'<pre>' .print_r($question, true). '</pre>';
        // print'<pre>' .print_r($reponses, true). '</pre>';
        // die();

        $data = [
            "question" => $question,
            "reponses" => $reponses

        ]; //taleau contenant deux clefs "question"(une seul id question est stocker la dedans) et "reponses" qui lui contient les reponses
        $this->render("qcm", $data);

    }
    public function action_question_suivante()
    { // fonction utilisé au moment du click vers la question suivante

        $m = Model::get_model();

        if (isset($_POST["reponse"]) && $_POST["reponse"] > 0) {
            // var_dump($_POST["reponse"]);
            $ancienne_reponse = $m->check_reponse($_POST["reponse"]);
            // var_dump($ancienneReponse);

            if ($ancienne_reponse->etat == 0) {
                $_SESSION['score']++;
            }
        }

        // var_dump($_SESSION['score']);
        //stocker le timer
        $timer = $_POST['timer'];
        $intimer = intval($timer);
        /////////////////////
        $list_timer = $_SESSION["timer"];
        $list_timer[]= $intimer;
        $_SESSION["timer"] = $list_timer; 
        $total_timer = array_sum($_SESSION["timer"]);  
        $total_timer_minute = floor($total_timer/60);
        $secondes = $total_timer % 60;

        if ($secondes === 60) {
            $total_timer_minute++;
            $secondes = 0;
        }
        $formatted_time = sprintf("%d:%02d secondes", $total_timer_minute, $secondes);
       
        ////////
        // Stocker les données dans la session
        $questions_count = $_SESSION['question_count']; //variable contenant la session du compteur qui a été declarer dans la fonction au dessus
        $questions_count++; //incrementation du compteur 
        $_SESSION['question_count'] = $questions_count; // on met a jour la session

        //pareil que dans la fonction au dessus
        $questions = $_SESSION['list_questions'];

        if ($questions_count < count($questions)) {
            // si le compteur est inferieur au nombre de question il continue a poser la question sinon il affiche le score 
            $id_question = $questions[$questions_count]->id_question;

            $question = $m->get_question_une($id_question);
            $reponses = $m->get_reponse($id_question);

            // die();
            $data = [
                "question" => $question,
                "reponses" => $reponses
            ];
            
            $this->render("qcm", $data);
        }
         else {
            $data = [
               "nbr" => count($_SESSION['list_questions']),
               "total_timer" => $formatted_time
            ];
            $this->render('end_qcm', $data);
            // $this->render('home', $_SESSION['score']);
        }
    }
}