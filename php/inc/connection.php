<?php

    function connect(){
        $host = "127.0.0.1";
        $port = "5432";
        $service = "orcl";
        $user = "sarobidy";
        $pw = "manoary";

        $base = "pgsql:host=%s;port=%s;dbname=shop";
        $base = sprintf($base , $host , $port);
        try{
            $connection = new PDO( $base , $user , $pw );
            return $connection;
        }catch( PDOException $erreur ){
            echo $erreur->getMessage();
        }
    }