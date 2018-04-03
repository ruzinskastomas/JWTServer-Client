<?php include 'header.php'; ?>
<main>

    <?php include 'aside.php'; ?>
    <h1>Head to Head</h1>
    <section>
        <table>
            <tr>
                <td>
                    <form id="form_center" action="/JWTClient/controller/JWTClient.php" method="POST"/>
                    <input type="hidden" name="action" value="req_service2">
                    <br>
                    <label>Team1 ID:</label>
                    <select name="team1_id" class="">
                        <?php foreach ($response as $team1) { ?>
                            <option value="<?php echo $team1['teamId']; ?>"/>
                            <?php echo $team1['teamName']; ?>
                            </option>
                        <?php } ?>
                    </select>
                    <label>Team2 ID:</label>
                    <select name="team2_id" class="">
                        <?php foreach ($response as $team2) { ?>
                            <option value="<?php echo $team2['teamId']; ?>"/>
                            <?php echo $team2['teamName']; ?>
                            </option>
                        <?php } ?>
                    </select>
                    <label>&nbsp;</label>
                    <input type="submit" value="Check head to head" />
                    <br>
                    </form>
                </td>
            </tr>
        </table>
    </section>
</main>
</main>

</body>
</html>
