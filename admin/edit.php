<?php
    include "connection.php";

    $id = $_GET['edit'];

    $sql = "SELECT * FROM client WHERE ID = $id";
    $query = $conn->query($sql);
    $row = $query->fetch_assoc();
?>

<html>
<head>
<title>Add property</title>
    <style>
        body{
            background-attachment: fixed;
            background-color: #eee;
            font-family:arial;
        }

        p{
            font-size: 10pt;
        }
                
        #divheader{
            margin:auto;
            width: 600px;
            border-radius: 3px;
            padding: 10px;
            background: #fff;
            font-size: 10px;
        }

        input[type=text]{
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            -webkit-transition: 0.5s;
            transition: 0.5s;
            outline: none;
            border-radius: 3px;
        }

        input[type=text]:focus{
            border: 1px solid green;
            border-radius: 3px;
        }

        #table{
            border-collapse:collapse;
            padding: 5px;
            font-size: 10pt; 
        }

        tr td{
            padding: 5px;
            font-size: 10pt;
        }
        
        #submit{
            padding: 10px;
            background:rgba(106, 176, 76, 1.0);
            color: #fff;
            border-radius: 3px;
            border: none;
            cursor: pointer;
            width: 275%;
        }
                
        #submit:hover{
            background:rgba(0, 148, 50, 1.0)
        }

        #delete{
            padding: 10px;
            background: #d63031;
            color: #fff;
            border-radius: 3px;
            border:none;
            cursor: pointer;
            width: 100%;
        }

        #delete:hover{
            background: #EA2027;
        }

        h3{
            text-align: center;
        }
        .footer {
        position: sticky;
        left: 0;
        bottom: -60px;
        width: 100%;
        background-color: red;
        color: white;
        text-align: center;
    }
    </style>
    
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>

<body>
<br>
<br>
<div class="panel-heading" style="color:white;background:#99C7DD;padding:10px"><h3>Update Property Record</h3></div><br>
    <div id="divheader">
        <form action="update.php" method="post">
            <a href="index.php"  class="btn btn-primary">Back</a>
                <table width="100%">
                    <tr>
                        <td>ID Number</td>
                        <td><input type="text" value="<?=$row['ID']; ?>" name="ID" required readonly></td>
                    </tr>
                    <tr>
                        <td>Company Code</td>
                        <td><input type="text" value="<?=$row['company_code']; ?>" name="company_code"></td>
                    </tr>
                    <tr>
                        <td>Employee #</td>
                        <td><input type="text" value="<?=$row['assigned_to']; ?>" name="assigned_to"></td>
                    </tr>
                    <tr>
                        <td>First Name</td>
                        <td><input type="text" value="<?=$row['firstname']; ?>" name="firstname"></td>
                    </tr>
                    <tr>
                        <td>Middle Name</td>
                        <td><input type="text" value="<?=$row['middlename']; ?>" name="middlename"></td>
                    </tr>
                    <tr>
                        <td>Surname</td>
                        <td><input type="text" value="<?=$row['surname']; ?>" name="surname"></td>
                    </tr>
                    <tr>
                        <td><label for="location_n">Location</label></td>
                    <td>
                    <select name="location_n">
                        <option value="#">Select Department</option>
                        <option value="CORPORATE" <?= ($row['location_n'] == 'CORPORATE') ? 'selected' : '' ?>>Corporate</option>
                        <option value="MARKETING" <?= ($row['location_n'] == 'MARKETING') ? 'selected' : '' ?>>Marketing</option>
                        <option value="ACCOUNTING" <?= ($row['location_n'] == 'ACCOUNTING') ? 'selected' : '' ?>>Accounting</option>
                    </select>
                    </td>
                    </tr>
                    <tr>
                        <td>Model Description</td>
                        <td><input type="text" value="<?=$row['model_description']; ?>" name="model_description" required></td>
                    </tr>
                    <tr>
                        <td>Serial Number</td>
                        <td><input type="text" value="<?=$row['serial_number']; ?>" name="serial_number" required></td>
                    </tr>
                    <tr>
                        <td>Quantity</td>
                        <td><input type="text" value="<?=$row['quantity']; ?>" name="quantity" required></td>
                    </tr>
                    <tr>
                    <td>Status</td>
                    <td>
                    <select name="con_dition">
                        <option value="#">Select Condition</option>
                        <option value="GOOD" <?= ($row['con_dition'] == 'GOOD') ? 'selected' : '' ?>>Good</option>
                        <option value="DEFECTED" <?= ($row['con_dition'] == 'DEFECTED') ? 'selected' : '' ?>>Defected</option>
                    </select>
                    </td>
                    </tr>
                    <tr>
                        <td><button type="submit" id="submit" name="submit"><span class="fa fa-edit"></span>UPDATE</button></td>
                    </tr>
                </table>
            </form>
        </div>
    </div>
</body>
</html>