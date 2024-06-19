<?php
include("config.php");

$errors = [];
$restorani_id = $_GET['id'];


if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $nimi = $_POST['nimi'];
    $hinne = $_POST['hinnang'];
    $kommentaar = $_POST['kommentaar'];
 
    
    if (empty($nimi) || empty($hinne) || empty($kommentaar)) {
        $errors[] = 'Kõik väljad on kohustuslikud!';
    } elseif (!is_numeric($hinne) || $hinne < 1 || $hinne > 10) {
        $errors[] = 'Hinnang peab olema arv vahemikus 1 kuni 10!';
    }

    if (empty($errors)) {
       
        $kontrolli_paring = "SELECT id FROM hinnangud WHERE toidukoha_id = ? AND nimi = ?";
        $stmt = $yhendus->prepare($kontrolli_paring);
        $stmt->bind_param('is', $restorani_id, $nimi);
        $stmt->execute();
        $kontrolli_tulemus = $stmt->get_result();

        if ($kontrolli_tulemus->num_rows > 0) {
            $errors[] = 'Teie antud hinnang on juba registreeritud!';
        } else {
            
            $paring = "INSERT INTO hinnangud (toidukoha_id, nimi, kommentaar, hinnang) VALUES (?, ?, ?, ?)";
            $stmt = $yhendus->prepare($paring);
            $stmt->bind_param('isss', $restorani_id, $nimi, $kommentaar, $hinne);
            if ($stmt->execute()) {
                
                $keskmine_paring = "SELECT AVG(hinnang) AS keskmine_hinne, COUNT(*) AS hinnangute_arv FROM hinnangud WHERE toidukoha_id = ?";
                $stmt = $yhendus->prepare($keskmine_paring);
                $stmt->bind_param('i', $restorani_id);
                $stmt->execute();
                $result = $stmt->get_result();
                $data = $result->fetch_assoc();

                $keskmine_hinne = $data['keskmine_hinne'];
                $hinnangute_arv = $data['hinnangute_arv'];

                $uuenda_paring = "UPDATE toidukohad SET keskmine_hinne = ?, hinnatud = ? WHERE id = ?";
                $stmt = $yhendus->prepare($uuenda_paring);
                $stmt->bind_param('dii', $keskmine_hinne, $hinnangute_arv, $restorani_id);
                if ($stmt->execute()) {
                    header("Location: hinnang.php?id=" . $restorani_id);
                    exit();
                } else {
                    echo "Viga uuendamisel: " . $stmt->error;
                }
            } else {
                echo "Viga: " . $stmt->error;
            }
        }
    }
}


$nimi_paring = "SELECT nimi FROM toidukohad WHERE id = ?";
$stmt = $yhendus->prepare($nimi_paring);
$stmt->bind_param('i', $restorani_id);
$stmt->execute();
$nimi_tulemus = $stmt->get_result();
$restorani_andmed = $nimi_tulemus->fetch_assoc();


if ($restorani_andmed) {
    $restorani_nimi = htmlspecialchars($restorani_andmed['nimi']);
} else {
    $restorani_nimi = "Restorani nime ei leitud";
}


$nimi = isset($_POST['nimi']) ? htmlspecialchars($_POST['nimi']) : '';
$hinne = isset($_POST['hinnang']) ? htmlspecialchars($_POST['hinnang']) : '';
$kommentaar = isset($_POST['kommentaar']) ? htmlspecialchars($_POST['kommentaar']) : '';


$viimased_hinnangud_paring = "SELECT nimi, kommentaar, hinnang FROM hinnangud WHERE toidukoha_id = ? ORDER BY id DESC LIMIT 5";
$stmt = $yhendus->prepare($viimased_hinnangud_paring);
$stmt->bind_param('i', $restorani_id);
$stmt->execute();
$viimased_hinnangud_tulemus = $stmt->get_result();
?>

<!DOCTYPE html>
<html lang="et">
<head>
    <meta charset="UTF-8">
    <title>Restorani Hindamine</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            padding: 20px;
        }
        .container {
            max-width: 600px;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .form-group {
            margin-bottom: 15px;
        }
        label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }
        input[type="text"],
        textarea,
        select {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            font-size: 14px;
        }
        button {
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        button:hover {
            background-color: #45a049;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        table, th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
        h2, h3 {
            margin-top: 0;
        }
        .error {
            color: red;
            font-size: 14px;
            margin-top: 5px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Restorani Hindamine: <?php echo $restorani_nimi; ?></h2>

        
        <?php if (!empty($errors)): ?>
            <div class="error">
                <ul>
                    <?php foreach ($errors as $error): ?>
                        <li><?php echo $error; ?></li>
                    <?php endforeach; ?>
                </ul>
            </div>
        <?php endif; ?>
        
        
        <form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]) . "?id=" . $restorani_id; ?>">
            <div class="form-group">
                <label for="nimi">Sinu nimi:</label>
                <input type="text" id="nimi" name="nimi" value="<?php echo $nimi; ?>">
            </div>
            <div class="form-group">
                <label for="hinnang">Hinnang (1-10):</label>
                <select id="hinnang" name="hinnang">
                    <option value="">Vali hinnang</option>
                    <?php for ($i = 1; $i <= 10; $i++): ?>
                        <option value="<?php echo $i; ?>" <?php if ($hinne == $i) echo 'selected'; ?>><?php echo $i; ?></option>
                    <?php endfor; ?>
                </select>
            </div>
            <div class="form-group">
                <label for="kommentaar">Kommentaar:</label>
                <textarea id="kommentaar" name="kommentaar"><?php echo $kommentaar; ?></textarea>
            </div>
            <div class="form-group">
                <button type="submit">Saada hinnang</button>
            </div>
        </form>

        

        <div class="hinnangud">
            <h3>Viimased 5 hinnangut</h3>
            <table>
                <tr>
                    <th>Nimi</th>
                    <th>Hinnang</th>
                    <th>Kommentaar</th>
                </tr>
                <?php while ($row = $viimased_hinnangud_tulemus->fetch_assoc()): ?>
                    <tr>
                        <td><?php echo htmlspecialchars($row['nimi']); ?></td>
                        <td><?php echo htmlspecialchars($row['hinnang']); ?></td>
                        <td><?php echo htmlspecialchars($row['kommentaar']); ?></td>
                    </tr>
                <?php endwhile; ?>
            </table>
        </div>
    </div>
</body>
</html>
