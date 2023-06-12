<?php

class Controller_home extends Controller
{
    public function action_default()
    {
        $this->action_home();
    }

    public function action_home()
    {
        $m = Model::get_model();
        $this->render("home");
    }

    public function action_acceuil()
    {
        $m = Model::get_model();
        $this->render('acceuil');
    }
}