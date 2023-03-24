<?php

class ReuzenradModel
{

    private $db;

    public function __construct()
    {
        $this->db = new DataBase();
    }

    public function getReuzenrad()
    {
        $sql = 'SELECT Naam, Hoogte, Land, Kosten, AantalPassagiers FROM Rezenrad ORDER BY Id ASC;';

        $this->db->query($sql);

        return $this->db->resultSet(); }
}