<?php
    include "connection.php";

    if(isset($_POST['submit'])){
        $id = $_POST['ID'];
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

        // Check if serial number already exists
        $check_serial_query = "SELECT * FROM client WHERE serial_number = '$serial_number' AND ID != '$id'";
        $check_serial_result = $conn->query($check_serial_query);

        if($check_serial_result->num_rows > 0){
            $_SESSION['error'] = "Serial number already exists. Please use a different serial number.";
        } else {
            $sql ="UPDATE client SET company_code='$company_code', assigned_to='$assigned_to', firstname='$firstname', middlename='$middlename', surname='$surname', location_n='$location_n', model_description='$model_description', serial_number='$serial_number', cost='$cost', quantity='$quantity', con_dition='$con_dition' WHERE ID='$id'";
            
            if($conn->query($sql)){
                $_SESSION['success'] = "Record has been updated successfully";
            }else
                $_SESSION['error'] = "Something went wrong while updating record";
        }
    }
    header('location: index.php');
?>