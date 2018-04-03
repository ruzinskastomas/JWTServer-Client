<?php

require_once '../model/JWT_class.php';
require_once '../model/services.php';
$secret = "Tomas' Key";
$api_key = filter_input(INPUT_GET, 'api_key');
$Service = filter_input(INPUT_GET, 'Service');
//if($api_key == Null){
//    if($Service != "Request_Key"){
//        $response = "Sorry incorrect format";
//        echo json_encode($response);
//        exit;
//    }
//}





switch ($Service) {
    case 'Request_Key':
        $token = array();
        $token['userName'] = filter_input(INPUT_GET, 'username');
        $token['password'] = filter_input(INPUT_GET, 'password');
        $token['memType'] = filter_input(INPUT_GET, 'memType');

        $jwt = JWT::encode($token, $secret);
        if (register($token, $jwt) == 1) {
            echo json_encode($jwt);
        } else {
            echo json_encode("error");
        }
        break;
    case 'Service1':
        $API_KEY = FILTER_INPUT(INPUT_GET, 'api_key');
        try {
            $token = JWT::decode($api_key, $secret);
        } catch (Exception $ex) {
            return -1;
        }
        echo json_encode(getTeamEntryDataBase());
        break;
    case 'Request_Teams':
        $API_KEY = FILTER_INPUT(INPUT_GET, 'api_key');
        try {
            $token = JWT::decode($api_key, $secret);
        } catch (Exception $ex) {
            return -1;
        }
        if (getAllTeams() != "error") {
            echo json_encode(getAllTeams());
        }
        break;
    case 'Service2':
        $API_KEY = FILTER_INPUT(INPUT_GET, 'api_key');
        $token2 = array();
        $token2['team1_id'] = filter_input(INPUT_GET, 'team1_id');
        $token2['team2_id'] = filter_input(INPUT_GET, 'team2_id');
        try {
            $token = JWT::decode($api_key, $secret);
        } catch (Exception $ex) {
            return -1;
        }
        if ($token->memType == 1) {
            if (headtohead($token2['team1_id'], $token2['team2_id'],getAllTeams()) != "error") {
                echo json_encode(headtohead($token2['team1_id'], $token2['team2_id']));
            }
        } else {
            echo $token->userName . " is not a premium member";
        }
        break;
    default:
}
?>
