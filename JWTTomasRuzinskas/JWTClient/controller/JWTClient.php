<?php
require ('../model/database.php');
require ('../model/localservice.php');
session_start();
if (isset($_SESSION['api_key'])) {
    $api_key = $_SESSION['api_key'];
} else {
    $api_key = Null;
}

$action = filter_input(INPUT_POST, 'action');
if ($action == NULL) {
    $action = filter_input(INPUT_GET, 'action');
    if ($action == NULL)
        $action = 'show_login';
}
$basicUrl = "http://localhost/JWTServer/controller/index.php";

switch ($action) {
    case 'show_login':
        include '../view/show_login.php';
        break;

    case 'login':
        $username = filter_input(INPUT_POST, 'username');
        $password = filter_input(INPUT_POST, 'password');
        if(login($username, $password)!="error") {
        $api_key = login($username,$password);
        $_SESSION['api_key'] = $api_key;
        include '../view/home.php';
        }
        else {
            header("Location:../view/show_login.php?msg=User not logged in");
        }
        break;
    case 'show_register':
        include '../view/show_register.php';
        break;
    case 'register':
        $username = filter_input(INPUT_POST, 'username');
        $password = filter_input(INPUT_POST, 'password');
        $memType = filter_input(INPUT_POST, 'memType');
        if ($username != null && $password != null && $memType != null) {  
        $keyReq = "?username=" . $username
                . "&password=" . $password
                . "&memType=" . $memType
                . "&Service=Request_Key";

        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $basicUrl . $keyReq);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
        curl_setopt($ch, CURLOPT_HEADER, FALSE);
        curl_setopt($ch, CURLOPT_HTTPHEADER, array("Accept: application/json"));
        $register_status = json_decode(curl_exec($ch),true);
        curl_close($ch);
        if ($register_status != 'error') {
        register($username,$password,$memType,$register_status);
        include '../view/show_login.php';
        }
        else {
            header("Location:../view/show_error.php?msg=" . $register_status);
        }
        }
        else {
            header("Location:../view/show_error.php?msg=Not registered");
        }
        break;
    case 'show_token':
        include '../view/show_token.php';
        break;
    case 'req_service1':
        $keyReq = "?api_key=" . $api_key . "&Service=Service1";

        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $basicUrl . $keyReq);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
        curl_setopt($ch, CURLOPT_HEADER, FALSE);
        curl_setopt($ch, CURLOPT_HTTPHEADER, array("Accept: application/json"));
        $response = json_decode(curl_exec($ch),true);
        curl_close($ch);
        include '../view/show_response.php';
        break;
    case 'show_headtohead_form':
        $keyReq = "?api_key=" . $api_key . "&Service=Request_Teams";
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $basicUrl . $keyReq);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
        curl_setopt($ch, CURLOPT_HEADER, FALSE);
        curl_setopt($ch, CURLOPT_HTTPHEADER, array("Accept: application/json"));
        $response = json_decode(curl_exec($ch),true);
        curl_close($ch);
        include '../view/headtohead_form.php';
        break;
    case 'req_service2':
        $team1_id = filter_input(INPUT_POST, 'team1_id', FILTER_VALIDATE_INT);
        $team2_id = filter_input(INPUT_POST, 'team2_id', FILTER_VALIDATE_INT);
        $keyReq = "?api_key=" . $api_key
                . "&team1_id=" . $team1_id
                . "&team2_id=" . $team2_id
                . "&Service=Service2";
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $basicUrl . $keyReq);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
        curl_setopt($ch, CURLOPT_HEADER, FALSE);
        curl_setopt($ch, CURLOPT_HTTPHEADER, array("Accept: application/json"));
        $response = json_decode(curl_exec($ch),true);
        curl_close($ch);
        include '../view/show_response.php';
        break;
    case 'logout':
        $_SESSION['api_key'] = null;
        include '../view/show_login.php';
}
