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
        $_SESSION['ancienne_reponse'] = [];
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
        $ancienne_reponse = null; // Initialisation de la variable

        if (isset($_POST["reponse"]) && $_POST["reponse"] > 0) {
            // var_dump($_POST["reponse"]);
            $ancienne_reponse = $m->check_reponse($_POST["reponse"]);
            // var_dump($ancienneReponse);
            $_SESSION['questions'][$ancienne_reponse->id_question]['usersanswer'] = $ancienne_reponse->reponse;

            if ($ancienne_reponse->etat == 0) {
                $_SESSION['score']++;
            }
        }
        $list_reponse = $ancienne_reponse;
        $_SESSION['ancienne_reponse'][] = $list_reponse;

        // var_dump($_SESSION['score']);
        //stocker le timer
        $timer = $_POST['timer'];
        $intimer = intval($timer);
        /////////////////////
        $list_timer = $_SESSION["timer"];
        $list_timer[] = $intimer;
        $_SESSION["timer"] = $list_timer;
        $total_timer = array_sum($_SESSION["timer"]);
        $total_timer_minute = floor($total_timer / 60);
        $secondes = $total_timer % 60;

        if ($secondes === 60) {
            $total_timer_minute++;
            $secondes = 0;
        }
        $formatted_time = sprintf("%d:%02d", $total_timer_minute, $secondes);
        $_SESSION['total_timer'] = $formatted_time;
        ////////
        // Stocker les données dans la session
        $questions_count = $_SESSION['question_count']; //variable contenant la session du compteur qui a été declarer dans la fonction au dessus
        $questions_count++; //incrementation du compteur 
        $_SESSION['question_count'] = $questions_count; // on met a jour la session

        //pareil que dans la fonction au dessus
        $questions = $_SESSION['list_questions'];
        $message = "";
        $score_pourcentage = $_SESSION['score'] / count($questions) * 100;

        if ($score_pourcentage > 75) {
            $message = 'Bravo ' . $_SESSION['login'] . '<i class="fa-solid fa-party-bell" style="color: #ffffff;"></i>';
            $img_result = "result_img.png";
        } elseif ($score_pourcentage >= 50 && $score_pourcentage <= 75) {
            $message = 'Très bonne note ' . $_SESSION['login'];
            $img_result = "result_very_good.png";
        } elseif ($score_pourcentage >= 30 && $score_pourcentage <= 50) {
            $message = 'Bien jouer ' . $_SESSION['login'];
            $img_result = "result_good.png";
        } else {
            $message = 'Vous pouvez mieux faire ' . $_SESSION['login'];
            $img_result = "result_bad.png";
        }

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
        } else {
            $data = [
                "nbr" => count($_SESSION['list_questions']),
                "total_timer" => $formatted_time,
                "message" => $message,
                "img_result" => $img_result
            ];
            $queryString = http_build_query($data);
            // $this->render('end_qcm', $data);
            header("Location: ?controller=qcm&action=test&data=" . urlencode($queryString));
            exit;
            // $this->render('home', $_SESSION['score']);
        }
    }

    public function action_correction()
    {
        $m = Model::get_model();
        $questionsData = array();

        foreach ($_SESSION['questions'] as $key => $questionData) {
            $question = $questionData['questions'];
            $goodAnswer = $questionData['goodanswer'];
            $userAnswer = $questionData['usersanswer'];

            $questionsData[] = array(
                'question' => $question,
                'goodAnswer' => $goodAnswer,
                'userAnswer' => $userAnswer
            );
        }

        // Passer les données à la vue correction
        $this->render ('correction', ['questionsData' => $questionsData]);
    }


    public function action_test()
    {
        $data = $_GET['data'];
        parse_str(urldecode($data), $parsedData);

        $formattedData = [
            "nbr" => $parsedData['nbr'],
            "total_timer" => $parsedData['total_timer'],
            "message" => $parsedData['message'],
            "img_result" => $parsedData["img_result"]
        ];

        $id_user = $_SESSION['id'];
        $id_theme = $_SESSION['id_theme'];
        $niveau = $_SESSION['lvl'];
        $score = $_SESSION['score'];
        $time = $_SESSION['total_timer'];
        // var_dump($id_user);
        // var_dump($id_theme);
        // var_dump($score);
        // var_dump($niveau);
        // var_dump($time);
        // print '<pre>' . print_r($_SESSION, true) . '</pre>';
        // die();
        $m = Model::get_model();
        $m->insert_score($id_user, $id_theme, $niveau, $score, $time);


        $this->render("end_qcm", $formattedData);
    }
}
