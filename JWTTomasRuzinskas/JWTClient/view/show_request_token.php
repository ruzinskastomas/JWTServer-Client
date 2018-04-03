<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <meta charset="UTF-8">
        <title>show</title>
    </head>
    <body>

        <form action="/JWTClient/controller/JWTClient.php" method="post">
            username: <input type="text" name="username"><br>
            password: <input type="text" name="password"><br>
            member type: 
            <select name="memType">
                <option value="Free">Free</option>
                <option value="Premium">Premium</option>
            </select><br>
            <input type="hidden" name="action" value="request_token"/>
            <input type="submit" value="Submit">
        </form>

    </body>
</html>
