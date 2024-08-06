<?php
$servername = "localhost"; 
$username = "root";        
$password = "";            
$dbname = "stage";         


$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

function loginAdmin($conn, $matricule, $password) {
    $sql = "SELECT password FROM admin WHERE matricule = ?";
    $stmt = $conn->prepare($sql);
    if (!$stmt) {
        die("Prepare failed: " . $conn->error);
    }

    $stmt->bind_param("s", $matricule);
    $stmt->execute();
    $stmt->store_result();

    if ($stmt->num_rows > 0) {
        $stmt->bind_result($storedPassword);
        $stmt->fetch();

        if ($password === $storedPassword) {

            session_start();
            $_SESSION['admin_matricule'] = $matricule;

            header("Location: recherche_codeapp.html");
            exit();
        } else {
            echo "Incorrect password. Please try again.";
        }
    } else {

        echo "Matricule not found. Please check your entry.";
    }

    $stmt->close();
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $matricule = trim($_POST['matricule']);
    $userPassword = trim($_POST['password']); 

    loginAdmin($conn, $matricule, $userPassword);
}
$conn->close();
?>
