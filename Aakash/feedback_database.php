<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname="aakashdb";
$name=$_POST["name"];
$mail=$_POST["email"];
$comment=$_POST["comment"];
// Create connection
$conn = new mysqli($servername, $username, $password,$dbname);
$sql = "INSERT INTO feedback (Name, Email,Comment)
VALUES ('$name', '$mail', '$comment')";
if ($conn->query($sql) === TRUE) {
    echo "New record created successfully";
}

?>

