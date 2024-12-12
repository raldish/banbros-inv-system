<!-- Signup Modal -->
<div class="modal fade" id="signupModal" tabindex="-1" role="dialog" aria-labelledby="signupModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title right-align" id="signupModalLabel">Create employee account</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                </div>
                <div class="modal-body">
                    <form action="signup.php" method="POST">
                        <div class="form-group">
                            <label for="username">Username </label>
                            <input type="text" class="form-control" id="username" name="username" placeholder="Enter Username" required>
                        </div>
                        <div class="form-group">
                            <label for="password">Password </label>
                            <input type="password" class="form-control" id="password" name="password" placeholder="Enter Password" required>
                        </div>
                        <div class="form-group">
                            <label for="confirm_password">Confirm Password</label>
                            <input type="password" class="form-control" id="confirm_password" name="confirm_password" placeholder="Enter Confirm Password" required>
                        </div>
                        <div class="form-group">
                            <label for="name">Name of the user </label>
                            <input type="text" class="form-control" id="name" name="name" placeholder="First Name / Last Name" required>
                        </div>
                        <div class="form-group">
                            <label for="name">Email </label>
                            <input type="text" class="form-control" id="email" name="email" placeholder="Enter Email" required>
                        </div>
                        <p align ="right">
                        <button type="submit" class="btn btn-primary" style="align-items:Center">Create Account</button></p>
                    </form>
                </div>
            </div>
        </div>
    </div>