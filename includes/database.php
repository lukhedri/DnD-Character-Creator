<?php

/** Author: Louie Zhu
 *  Date: 10/30/2015
 *  Description: This PHP script connects to the MySQL database and select
 *  the bookstore_db database. It also displays a user-friendly message if
 *  a connection error is encountered. You may need to modify the parameters
 *  for your server.
 */
//define parameters
$host = "localhost";
$login = "phpuser";
$password = "phpuser";
$database = "i210_final";

//Connect to the mysql server
$conn = new mysqli($host, $login, $password, $database);

//handle connection errors
if ($conn->connect_errno != 0) {
    $errno = $conn->connect_errno;
    $errmsg = $conn->connect_error;
    die("Connection failed with: ($errno) $errmsg.");
}