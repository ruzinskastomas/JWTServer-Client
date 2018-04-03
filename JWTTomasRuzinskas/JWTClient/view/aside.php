<aside>
    <h2>Services</h2>
    <nav>
        <ul id="nav">
            <li>
                <?php
                if (isset($_SESSION['api_key'])) {
                    $api_key = $_SESSION['api_key'];
                } else {
                    $api_key = Null;
                }
                if ($api_key != null) {
                    ?>
                    <a href="?action=req_service1">League table(FREE)</a>
                    <a href="?action=show_headtohead_form">Service 2</a>
                    <a href="?action=show_token">show token</a>
                    <a href="?action=logout">Logout</a>
                    <a href="?action=show_register">Register</a>
                <?php } else { ?>
                    <a href="?action=show_login">Login</a>  
                    <a href="?action=show_register">Register</a>
<?php } ?>
            </li>
        </ul>
    </nav>
</aside>