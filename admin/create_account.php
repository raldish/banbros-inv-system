<!-- Signup Modal
<div class="modal fade" id="signupModal" tabindex="-1" role="dialog" aria-labelledby="signupModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title right-align" id="signupModalLabel">Create employee account</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                </div>
                <div class="modal-body"> -->
        <head>
            <title>Create Account</title>
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
        position: fixed;
        left: 0;
        bottom: 0;
        width: 100%;
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
<div class="panel-heading" style="color:white;background:#99C7DD;padding:10px"><h3>Create Account User</h3></div>
<br><br>
<!-- Display success or error message -->
<?php if (isset($success_message)) { ?>
    <div class="alert">
        <?php echo $success_message; ?>
    </div>
        <script>
            setTimeout(function() {
            window.location.href = 'index.php';
            }, 2000); // redirect to index.php after 2 seconds
        </script>
<?php } elseif (isset($error_message)) { ?>
    <div class="alert">
        <?php echo $error_message; ?>
    </div>
<?php } ?>
    <div id="divheader">
        <a href="index.php"  class="btn btn-primary" style="margin-bottom:10px">Back</a>
                    <form action="signup.php" method="POST">
                        <!-- <p align ="right">
                        <button type="submit" class="btn btn-primary" style="align-items:Center">Create Account</button></p> -->
                        <table width="100%">
                        <tr>
                            <td>Username</td>
                            <td><input type="password" class="form-control" id="password" name="password" placeholder="Enter Password" required></td>
                        </tr>
                        <tr>
                            <td>Password</td>
                            <td><input type="password" class="form-control" id="password" name="password" placeholder="Enter Password" required></td>
                        </tr>
                        <tr>
                            <td>Confirm Password</td>
                            <td><input type="password" class="form-control" id="confirm_password" name="confirm_password" placeholder="Enter Confirm Password" required></td>
                        </tr>
                        <tr>
                            <td>Name of the user</td>
                            <td><input type="text" class="form-control" id="name" name="name" placeholder="First Name / Last Name" required></td>
                        </tr>
                        <tr>
                            <td>Email</td>
                            <td><input type="text" class="form-control" id="email" name="email" placeholder="Enter Email" required></td>
                        </tr>
                        <tr>
                            <td><button type="submit" id="submit" name="change_password" style="margin-left:10px;">Create Account</button></td>
                        </tr>
                </table>
            </form>
        </div>
    </div>