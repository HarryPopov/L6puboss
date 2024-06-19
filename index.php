<?php include('config.php'); ?>
<!doctype html>
<html lang="et">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
<div class="container">
    <h1>Valige asutus mida hinnata</h1>
    <div class="float-end mt-3 mb-3">
        <form class="d-flex" method="GET" action="">
            <input class="form-control me-2" type="search" placeholder="Otsi toidukohta..." aria-label="Search" name="s" value="<?php echo isset($_GET['s']) ? htmlspecialchars($_GET['s']) : ''; ?>">
            <button class="btn btn-outline-primary" type="submit">Otsi</button>
        </form>
    </div>
    <?php
    //otsing
    if (!empty($_GET["s"])) {
        $s = $_GET["s"];
        $paring = 'SELECT * FROM toidukohad WHERE nimi LIKE "%'.$s.'%" ';
    } else {
    
        if (isset($_GET['next'])) {
            $algus = $_GET['next'];
        }
        else if (isset($_GET['prev'])) {
            $algus = $_GET['prev']-10;
        } else {
            $algus = -10;
        }
        $algus += 10;
        $lopp = $algus - 10;
        if ($lopp <0){
            $lopp = 0;
        }
        
         

        $sort = isset($_GET['sort']) ? $_GET['sort'] : 'nimi';
        $order = isset($_GET['order']) ? $_GET['order'] : 'ASC';
        
        //päring mille saadan andmebaasi
        $paring = "SELECT * FROM toidukohad ORDER BY $sort $order LIMIT $algus,10";
    }
    

    $valjund = mysqli_query($yhendus, $paring);
    ?>
    <table class="table table-sm">
        <thead>
        <tr>
            <th><a href="?sort=nimi&order=<?php echo $sort == 'nimi' ? ($order == 'ASC' ? 'DESC' : 'ASC') : 'ASC'; ?>">Nimi <?php if ($sort == 'nimi') echo $order == 'ASC' ? '&uarr;' : '&darr;'; ?></a></th>
            <th><a href="?sort=asukoht&order=<?php echo $sort == 'asukoht' ? ($order == 'ASC' ? 'DESC' : 'ASC') : 'ASC'; ?>">Asukoht <?php if ($sort == 'asukoht') echo $order == 'ASC' ? '&uarr;' : '&darr;'; ?></a></th>
            <th><a href="?sort=keskmine_hinne&order=<?php echo $sort == 'keskmine_hinne' ? ($order == 'ASC' ? 'DESC' : 'ASC') : 'ASC'; ?>">Keskmine hinne <?php if ($sort == 'keskmine_hinne') echo $order == 'ASC' ? '&uarr;' : '&darr;'; ?></a></th>
            <th><a href="?sort=hinnatud&order=<?php echo $sort == 'hinnatud' ? ($order == 'ASC' ? 'DESC' : 'ASC') : 'ASC'; ?>">Hinnatud (korda) <?php if ($sort == 'hinnatud') echo $order == 'ASC' ? '&uarr;' : '&darr;'; ?></a></th>
        </tr>
        </thead>
        <tbody>
        <?php
        

        while($rida = mysqli_fetch_assoc($valjund)){
            ?>
            <tr>
                <td><a href="hinnang.php?id=<?php echo $rida['id']; ?>"><?php echo $rida['nimi']; ?></a></td>
                <td><?php echo $rida['asukoht']; ?></td>
                <td><?php echo $rida['keskmine_hinne']; ?></td>
                <td><?php echo $rida['hinnatud']; ?></td>
            </tr>
            <?php
        }
        ?>
        </tbody>
    </table>
    <a href="?prev=<?php echo $lopp;  ?>">&lt;&lt; Eelmised</a>
    <a href="?next=<?php echo $algus;  ?>">Järgmised &gt;&gt;</a>

    
    <?php
    

    $viimased_hinnangud_paring = "SELECT nimi, kommentaar, hinnang FROM hinnangud ORDER BY id DESC LIMIT 5";
    $viimased_hinnangud_tulemus = mysqli_query($yhendus, $viimased_hinnangud_paring);
    
    if (mysqli_num_rows($viimased_hinnangud_tulemus) > 0) {
        echo '<div class="mt-4">';
        echo '<h2>Viimased 5 hinnangut</h2>';
        echo '<table class="table table-sm">';
        echo '<thead>';
        echo '<tr>';
        echo '<th>Nimi</th>';
        echo '<th>Hinnang</th>';
        echo '<th>Kommentaar</th>';
        echo '</tr>';
        echo '</thead>';
        echo '<tbody>';
        
        while ($row = mysqli_fetch_assoc($viimased_hinnangud_tulemus)) {
            echo '<tr>';
            echo '<td>' . htmlspecialchars($row['nimi']) . '</td>';
            echo '<td>' . htmlspecialchars($row['hinnang']) . '</td>';
            echo '<td>' . htmlspecialchars($row['kommentaar']) . '</td>';
            echo '</tr>';
        }
        
        echo '</tbody>';
        echo '</table>';
        echo '</div>';
    }
    ?>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
