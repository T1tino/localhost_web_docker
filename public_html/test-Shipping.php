<h1>Hello World!!!</h1>
<h4>Attempting MySQL connection from php...</h4>

<?php
$host = 'mysql';
$dbname = 'Shipping';
$user = 'root';
$pass = '';

try {
    // Intentar establecer la conexión usando PDO
    $conn = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8mb4", $user, $pass);
    // Configurar PDO para que lance excepciones en caso de error
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    echo "Connected to MySQL successfully!";
} catch (PDOException $e) {
    // Manejar errores de conexión
    echo "Connection failed: " . $e->getMessage();
}
?>