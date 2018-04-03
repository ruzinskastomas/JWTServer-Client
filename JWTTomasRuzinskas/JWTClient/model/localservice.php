<?php

function register($username, $password, $memtype, $api_key) {
    global $db;
    $query = "INSERT INTO `user`(`username`, `password`, `memtype`, `api_key`) VALUES (:username,:password,:memtype,:api_key)";
    $statement = $db->prepare($query);
    $statement->bindValue(":username", $username);
    $statement->bindValue(":password", $password);
    $statement->bindValue(":memtype", $memtype);
    $statement->bindValue(":api_key", $api_key);
    try {
        $statement->execute();
    } catch (Exception $ex) {
        return $ex->getMessage();
    }

    $statement->closeCursor();
}

function login($username, $password) {
    global $db;
    $query = "SELECT * FROM user";
    $statement = $db->prepare($query);
    try {
        $statement->execute();
    } catch (Exception $ex) {
        return $ex->getMessage();
    }
    $results = $statement->fetchAll();
    $statement->closeCursor();
    foreach ($results as $result) {
        if ($result['username'] == $username && $result['password'] == $password) {
            return $result['api_key'];
        }
    }
    return "error";
    
}
