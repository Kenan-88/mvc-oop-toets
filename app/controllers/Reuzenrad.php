<?php

class Reuzenrad extends BaseController
{

    private $reuzenradModel;
    public function __construct()
    {
        $this->reuzenradModel = $this->model('voetballersModel');
    }

    public function index()
    {

        $result = $this->reuzenradModel->getvoetballers();
        $rows = "";
        foreach ($result as $reuzenrad) {
            $rows .= "<tr>
            <td>$reuzenrad->Id</td>
            <td>$reuzenrad->Naam</td>
            <td>$reuzenrad->Hoogte</td>
            <td>$reuzenrad->Leeftijd</td>
            <td>$reuzenrad->Nationaliteit</td>
            <td>$reuzenrad->Salaris</td>
          </tr>";
        }
        // var_dump($result);
        $data = [
            'title' => 'Welkom op de Landenpagina',
            'rows' => $rows
        ];

        $this->view('voetballers/index', $data);
    }
}
