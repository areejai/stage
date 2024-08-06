<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Information</title>
    <link rel="stylesheet" href="stylesheet.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <style>
        body, html {
            height: 100%;
            margin: 0;
            font-family: Arial, sans-serif;
        }
        header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: #d1d1d1; 
            padding: 10px 20px;
        }
        .logo {
            height: 50px; 
            width: auto;
        }
        .login-btn {
            padding: 10px 20px;
            background-color: #007bff;
            color: white;
            border: none;
            cursor: pointer;
            font-size: 16px;
        }
        .login-btn:hover {
            background-color: #0056b3; 
        }
        .content {
            display: flex;
            justify-content: center;
            align-items: center;
            height: calc(100vh - 120px); 
        }
        .form-container {
            text-align: center;
            background-color: white;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        footer {
            background-color: #d1d1d1; 
            padding: 10px 20px;
            text-align: center;
            position: fixed;
            bottom: 0;
            width: 100%;
        }
        .employee-info {
            width: 100%;
            border-collapse: collapse;
        }
        .employee-info th, .employee-info td {
            border: 1px solid #ddd;
            padding: 8px;
        }
        .employee-info th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: left;
            background-color: #f2f2f2;
            color: black;
        }
        .employee-info tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        .employee-info tr:hover {
            background-color: #ddd;
        }
    </style>
</head>
<body>
    <header>
        <div class="navbar">
            <a href="#home"><img class="logo" src="img/bh-bank-new-rouge-removebg-preview.png" alt="Logo"></a>
        </div>
    </header>
    <div class="content">
        <div class="form-container" style="margin-bottom:80px">
            <?php
            $host = 'localhost';
            $dbname = 'stage';
            $username = 'root';
            $password = '';

            try {
                $pdo = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8", $username, $password);
                $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            } catch (PDOException $e) {
                echo 'Connection failed: ' . $e->getMessage();
                exit();
            }

            $code_app = isset($_GET['code_app']) ? $_GET['code_app'] : '';

            if ($code_app) {
                $stmt = $pdo->prepare("SELECT e.matricule, e.nom, e.prenom, e.point_de_vente, a.piece_jointe, a.remarques
                                        FROM employes e
                                        JOIN affectation a ON e.matricule = a.matricule
                                        WHERE a.code_app = ?");
                $stmt->execute([$code_app]);

                $results = $stmt->fetchAll(PDO::FETCH_ASSOC);

                if ($results) {
                    echo '<table class="employee-info">';
                    echo '<thead>';
                    echo '<tr>';
                    echo '<th>Matricule</th>';
                    echo '<th>Nom</th>';
                    echo '<th>Prénom</th>';
                    echo '<th>Point de Vente</th>';
                    echo '<th>Piece jointe</th>';
                    echo '<th>Remarques</th>';
                    echo '</tr>';
                    echo '</thead>';
                    echo '<tbody>';
                    foreach ($results as $row) {
                        echo '<tr>';
                        echo '<td>' . htmlspecialchars($row['matricule']) . '</td>';
                        echo '<td>' . htmlspecialchars($row['nom']) . '</td>';
                        echo '<td>' . htmlspecialchars($row['prenom']) . '</td>';
                        echo '<td>' . htmlspecialchars($row['point_de_vente']) . '</td>';
                        echo '<td>' . htmlspecialchars($row['piece_jointe']) . '</td>';
                        echo '<td>' . htmlspecialchars($row['remarques']) . '</td>';
                        echo '</tr>';
                    }
                    echo '</tbody>';
                    echo '</table>';
                } else {
                    echo '<div class="employee-info"><p>Application non trouvée.</p></div>';
                }
            } else {
                echo '<div class="employee-info"><p>Application non fournie.</p></div>';
            }
            ?>
        </div>
    </div>
    <footer>
        <div class="footer__content">
            <p>&copy; 2024 . All rights reserved.</p>
            <a class="footer__link" href="#">Privacy Policy</a>
            <a class="footer__link" href="#">Terms of Service</a>
        </div>
    </footer>
</body>
</html>
