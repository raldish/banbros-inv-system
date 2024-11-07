<?php
    include "connection.php";

    if(isset($_POST['submit'])){
        $company_code = $_POST['company_code'];
        $assigned_to = $_POST['assigned_to'];
        $firstname = $_POST['firstname'];
        $middlename = $_POST['middlename'];
        $surname = $_POST['surname'];
        $location_n = $_POST['location_n'];
        $model_description = $_POST['model_description'];
        $serial_number = $_POST['serial_number'];
        $cost = $_POST['cost'];
        $quantity = $_POST['quantity'];
        $con_dition = $_POST['con_dition'];

        $sql = "SELECT * FROM client WHERE company_code = '$company_code' AND assigned_to = '$assigned_to' AND serial_number = '$serial_number'";
        $query = $conn->query($sql);

        if($query->num_rows > 0){
            $_SESSION['error'] = "Record already exists!!";
        }else{
            $sql = "INSERT INTO client (company_code, assigned_to, firstname, middlename, surname, location_n, model_description, serial_number, cost, quantity, con_dition) 
            VALUES ('$company_code', '$assigned_to', '$firstname', '$middlename', '$surname', '$location_n', '$model_description', '$serial_number', '$cost', '$quantity', '$con_dition')";
            if($conn->query($sql)){
                $_SESSION['success'] = "Record has been inserted successfully";
            }else{
                $_SESSION['error'] = "Something went wrong while inserting record";
            }
        }
    }
    header('location: index.php');
?>

