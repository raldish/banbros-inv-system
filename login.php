<?php
// session_start();
    include "admin/connection.php";

    if(isset($_POST['login'])){
        $username = $_POST['username'];
        $password = $_POST['password'];

        $sql = "SELECT * FROM user WHERE username = '$username'";
        $query = $conn->query($sql);
        
        if($query->num_rows > 0){
            $row = $query->fetch_assoc();
        
            if($password==$row['password']){
                $_SESSION['admin']= $row['ID'];
                $_SESSION['role'] = $row['role']; // Store the user's role in the session
                header("location:admin/index.php");
            }else {
                $_SESSION['error'] = "Username or password is incorrect. Please try again.";
                header("location:index.php");
            }
        }else {
            $_SESSION['error'] = "Username and password is incorrect. Please try again.";
            header("location:index.php");
        }
    } 
?>


<?php

// // Include database connection
// include "admin/connection.php";

// // Define rate limiter variables
// $maxAttempts = 5;
// $timeout = 60; // 1 minute

// // Handle login form submission
// if (isset($_POST['login'])) {
//     $username = $_POST['username'];
//     $password = $_POST['password'];

//     // Validate user input
//     if (empty($username) || empty($password)) {
//         $_SESSION['error'] = "Please fill in all fields.";
//         header("location:index.php");
//         exit;
//     }

//     // Check rate limit
//     if (isset($_SESSION['login_attempts'])) {
//         $attempts = $_SESSION['login_attempts'];
//         $timestamp = $_SESSION['login_timestamp'];

//         if ($attempts >= $maxAttempts && time() - $timestamp < $timeout) {
//             $_SESSION['error'] = "Too many login attempts. Please try again later.";
//             header("location:index.php");
//             exit;
//         }
//     }

//     // Increment login attempts
//     $_SESSION['login_attempts'] = (isset($_SESSION['login_attempts']) ? $_SESSION['login_attempts'] + 1 : 1);
//     $_SESSION['login_timestamp'] = time();

//     // Query database with prepared statement
//     $stmt = $conn->prepare("SELECT * FROM user WHERE username = ?");
//     $stmt->bind_param("s", $username);
//     $stmt->execute();
//     $result = $stmt->get_result();

//     // Check if user exists and password is valid
//     if ($result->num_rows > 0) {
//         $row = $result->fetch_assoc();
//         if (password_verify($password, $row['password'])) {
//             $_SESSION['admin'] = $row['ID'];
//             $_SESSION['role'] = $row['role'];
//             header("location:admin/index.php");
//             exit;
//         } else {
//             $_SESSION['error'] = "Invalid username or password.";
//             header("location:index.php");
//             exit;
//         }
//     } else {
//         $_SESSION['error'] = "Invalid username or password.";
//         header("location:index.php");
//         exit;
//     }
// }

?>