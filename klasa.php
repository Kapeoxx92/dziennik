<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>librus</title>
    <link rel="stylesheet" href="dziennik.css">
    <link rel="icon" href="librus icon.png">
</head>
<body onload="startTime()">
    <div id="header">
        <div id="text"><h1>LIBRUS</h1></div>
        <div id="clock"></div>
    </div>

    <script>
        function startTime() {
          const today = new Date();
          let h = today.getHours();
          let m = today.getMinutes();
          m = checkTime(m);
          document.getElementById('clock').innerHTML =  h + ":" + m;
          setTimeout(startTime, 1000);
        }
        
        function checkTime(i) {
          if (i < 10) {i = "0" + i};
          return i;
        }
        </script>

<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "dziennik";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Błąd połączenia: " . $conn->connect_error);
}

$sql = "SELECT * FROM klasa";
$result = $conn->query($sql);

if ($result->num_rows > 0) {

    echo "<table border='1'>
            <tr>
                <th>ID</th>
                <th>Nazwa klasy</th>
                <th>Profil</th>
                <th>Rok rozpoczęcia</th>
            </tr>";

    while($row = $result->fetch_assoc()) {
        echo "<tr>
                <td>" . $row["id"] . "</td>
                <td>" . $row["rok_nauki"] . "</td>
                <td>" . $row["klasa"] . "</td>
                <td>" . $row["ilosc_uczniow"] . "</td>
              </tr>";
    }
    echo "</table>";
} else {
    echo "Brak danych w tabeli.";
}

$conn->close();
?>
</body>
</html>