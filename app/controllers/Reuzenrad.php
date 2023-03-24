<?php

class Reuzenrad extends BaseController
{

    private $ReuzenradModel;
    public function __construct()
    {
        $this->ReuzenradModel = $this->model('ReuzenradModel');
    }

    public function index()
    {

        $result = $this->ReuzenradModel->getReuzenrad();
        $rows = "";
        // var_dump($result);
        foreach ($result as $result) {
            $rows .= "<tr>
                        <td>$result->Naam</td>
                        <td>$result->Hoogte</td>
                        <td>$result->Land</td>
                        <td>$result->Kosten</td>
                        <td>$result->AantalPassagiers</td>
                      </tr>";
        }
        // var_dump($result);
        $data = [
            'title' => 'Welkom op de Landenpagina',
            'rows' => $rows
        ];

        $this->view('reuzenrad/index', $data);
    }
}
