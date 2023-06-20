<?php

class Controller_classement extends Controller
{
    public function action_default()
    {
        $this->action_classement();
    }

    public function action_classement()
    {
        $m = Model::get_model();
        $data = 
        [
            'classement' => $m->get_classement()
        ];
        $this->render('classement', $data);
    }

}