
<?php include 'header.php'; ?>
    <?php include 'aside.php'; ?>
        <form action="/JWTClient/controller/JWTClient.php" method="post">
            username: <input type="text" name="username" required><br>
            password: <input type="password" name="password" required><br>
            <input type="hidden" name="action" value="login"/>
            <input type="submit" value="Submit">
        </form>

<?php include 'footer.php' ?>
