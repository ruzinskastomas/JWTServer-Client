<?php include 'header.php';?>
<main>
    <h1>Error Page</h1>
    
    <section>
        <?php
        $error_msg = filter_input(INPUT_GET, 'msg');
        if ($error_msg == NULL) {
            echo "Error is: " . $error;
        }
        else {
            echo "Error is " . $error_msg;
        }
        
        ?>
    </section>
    <p>
        <a href="../controller/JWTClient.php?action=show_login">Return home</a>
    </p>
</main>
</body>
</html>


