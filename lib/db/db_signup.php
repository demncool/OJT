<?php

    $db =  mysqli_connect('localhost', 'root', '', 'OJT');

    if(!$db){
        echo "database failed to connect";
    }

    $username = $_POST['username'];
    $password = $_POST['password'];

    $sql = "SELECT * FROM users_table where username = '".$username."' AND password = '".$password."'";
    $sqlSignup = "INSERT into users_table VALUES(null, $username, $password)";
    $result = mysqli_query($db, $sql);
    $count = mysqli_num_rows($result);

    if($count >= 1 ){
        echo json_encode("Users already Exist");
    }else{
        mysqli_query($db, $sqlSignup);
        echo json_encode("success");
    }
