
<?php include 'header.php'; ?>
    <?php include 'aside.php' ?>
        <form action="/JWTClient/controller/JWTClient.php" method="post">
            username: <input type="text" name="username" required><br>
            password: <input type="password" name="password" required><br>
            member type: 
            <select name="memType">
                <option value="0">Free</option>
                <option value="1">Premium</option>
            </select><br>
            <input type="hidden" name="action" value="register"/>
            <input type="submit" value="Submit">
        </form>

<?php include 'footer.php' ?>
