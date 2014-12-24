<?php

// 1. establish database connection
$dbHost = 'localhost';
$dbUser = 'root';
$dbPass = '';
$dbName = 'pf';
$dbConn = mysqli_connect($dbHost, $dbUser, $dbPass, $dbName);
if ( !$dbConn ) {
    exit('Database Connection Error (' . mysqli_connect_errno() . ') ' . mysqli_connect_error());
}

// 2. query out the data
$sqlStatement = "SELECT `id`,`brand_name` FROM `brand` ORDER BY `brand_name`";
$sqlResult    = mysqli_query($dbConn, $sqlStatement);
if ( !$sqlResult ) {
    exit('MySQL Error: ' . mysqli_error($dbConn) . 'SQL: ' . $sqlStatement);
}

// 3. prepare the data for presentation i.e. format values as HTML option tags
$items = array();
while ( $row = mysqli_fetch_assoc($sqlResult) ) {
    $item = array( 'id'=>$row['id'], 'value'=> $row['brand_name']);
    $items[] = $item;
}
$itemsJson = json_encode($items);   // to JSON-ize the array

// 4. return data in JSON format
echo($itemsJson);

// 5. close database connection
mysqli_close($dbConn);
