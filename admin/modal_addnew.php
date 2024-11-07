<div class="modal fade" tabindex="-1" role="dialog" id="add">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">BANBROS PROPERTIES ADD FORM</h4>
      </div>
      <div class="modal-body">
        
      <form action="insert.php" method="post">
            <table width="100%" class="table border">
                <tr>
                    <td>Company Code<input type="text" name="company_code" placeholder="Company Code" required></td>
                </tr>
                <tr>
                    <td>Employee #<input type="text" name="assigned_to" placeholder="Employee Number" required></td>
                </tr>
                <tr>
                  <td>
                    <input type="text" name="firstname" placeholder="First Name" required>
                    <input type="text" name="middlename" placeholder="Middle Name" required>
                    <input type="text" name="surname" placeholder="Surname" required>
                  </td>
                </tr>
                <tr>
                    <td>
                    <label for="location_n">Location</label>
                    <select name="location_n">
                    <option value="#">Select Department</option>
                    <option value="CORPORATE">Corporate</option>
                    <option value="ACCOUNTING">Accounting</option>
                    <option value="MARKETING">Marketing</option>
                    </select>
                    </td>
                </tr>
                <tr>
                    <td>Model Description<input type="text" name="model_description" placeholder="Model Description" required></td>
                </tr>
                <tr>
                    <td>Serial Number<input type="text" name="serial_number" placeholder="NXE*********" required></td>
                </tr>
                <tr>
                    <td>Cost<input type="text" name="cost" placeholder="Enter cost" required></td>
                </tr>
                <tr>
                  <td>Quantity<input type="text" name="quantity" placeholder="Quantity" required></td>
                </tr>
                <tr>
                    <td>
                    <label for="con_dition">Status</label>
                    <select name="con_dition">
                    <option value="#">Select Status</option>
                    <option value="GOOD">GOOD</option>
                    <option value="DEFECTED">DEFECTED</option>
                    </select>
                    </td>
                </tr>
                <!-- <tr>
                    <td><button type="submit" id="submit" class="submit" name="submit"><span class="fa fa-save"></span> SUBMIT</button></td>
                </tr> -->
            </table>
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            <button type="submit" name="submit" class="btn btn-primary">Add Items</button>
        </form>
      </di>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->