<?php
require 'database.php';

function register($token, $api_key) {
    global $db;
    $query = "SELECT * FROM user WHERE 'username'= :username"; // . '$token['userName']';
    $statement = $db->prepare($query);
    $statement->bindValue(":username", $token['userName']);
    try {
        $statement->execute();
    } catch (Exception $ex) {
        return $ex->getMessage();
    }
    $results = $statement->fetchAll();
    $row_count = $statement->rowCount();
    $statement->closeCursor();
    if($row_count > 0) {
        return 0;
    }
    else {
        $query = "INSERT INTO `user`(`username`, `password`, `memtype`, `api_key`) VALUES (:username,:password,:memtype,:api_key)";
        $statement = $db->prepare($query);
        $statement->bindValue(":username", $token['userName']);
        $statement->bindValue(":password", $token['password']);
        $statement->bindValue(":memtype", $token['memType']);
        $statement->bindValue(":api_key", $api_key);
        try {
            $statement->execute();
        } catch (Exception $ex) {
            return $ex->getMessage();
        }
        
        $statement->closeCursor();
        return 1;
    }
}
function getTeamEntryDataBase() {
    global $db;
    $query = "SELECT *, (Won*3 + Drew) AS Points FROM results ORDER BY Points DESC ";
    $statement = $db->prepare($query);
    try {
            $statement->execute();
    } catch (PDOException $ex) {
            header("Location:../views/error.php?msg=" . $ex->getMessage());
            
    }
    $results = $statement->fetchAll();
    $statement->closeCursor();
            $response = "
        <br>
        <table border>
            <tr>
                <th>Team Name</th>
                <th>Played</th>
                <th>Won</th>
                <th>Drew</th>
                <th>Lost</th>
                <th>Goals For</th>
                <th>Goals Against</th>
                <th>Points</th>
            </tr>";
            
            foreach ($results as $result) {


        $response = $response . 
                "<tr>
                <td>" . $result['Team'] . "</td>
                <td>". $result['Played'] ."</td>
                <td>". $result['Won'] ."</td>
                <td>". $result['Drew'] ."</td>
                <td>". $result['Lost'] ."</td>
                <td>". $result['GFor'] ."</td>
                <td>". $result['GAgainst'] ."</td>
                <td>" . $result['Points'] ."</td>
            </tr>";
            }
        "</table>";
    return $response;

}
function headtohead($team_id,$team2_id) {
       global $db;
    $query = "SELECT * FROM matches ORDER BY Id desc";
    $statement = $db->prepare($query);
    $i = 0;
    try {
            $statement->execute();
    } catch (PDOException $ex) {
            return "error";
            
    }
    $results = $statement->fetchAll();
    $statement->closeCursor();
    
            $response = "<h1>HEAD TO HEAD</h1>
                <br>
        <table border'>
            <tr>
                <th>Game ID</th>
                <th>Game Date</th>
                <th>Home Team</th>
                <th>Home Goal</th>
                <th>Away Goal</th>
                <th>Away Team</th>
                <th>Attendance</th>
            </tr>";
            
            foreach ($results as $result) {
                if ($team_id == $result['homeTeam'] && $team2_id == $result['awayTeam']) {
                    
        $response = $response . 
                "<tr>
                <td>" . $result['Id'] . "</td>
                <td>". $result['gameDate'] ."</td>
                <td>". $result['homeTeam'] ."</td>
                <td>". $result['homeGoal'] ."</td>
                <td>". $result['awayGoal'] ."</td>
                <td>". $result['awayTeam'] ."</td>
                <td>". $result['attendance'] ."</td>
            </tr>";
            }
            }
            
            foreach ($results as $result2) {
                if ($team2_id == $result2['homeTeam'] && $team_id == $result2['awayTeam']) {
                    
        $response = $response . 
                "<tr>
                <td>" . $result2['Id'] . "</td>
                <td>". $result2['gameDate'] ."</td>
                <td>". $result2['homeTeam'] ."</td>
                <td>". $result2['homeGoal'] ."</td>
                <td>". $result2['awayGoal'] ."</td>
                <td>". $result2['awayTeam'] ."</td>
                <td>". $result2['attendance'] ."</td>
            </tr>";
            }
            }
        "</table>";
            
            
    return $response;
      
        
}
function getAllTeams() {
    global $db;
    $query = "SELECT * FROM teams";
    $statement = $db->prepare($query);
    try {
            $statement->execute();
    } catch (PDOException $ex) {
           return "error";
            
    }
    $results = $statement->fetchAll();
    $statement->closeCursor();
    return $results;
}
