<?php include ('head.php');?>
<body>

<?php
	function passFunc($len, $set = "")
		{
			$gen = "";
			for($i = 0; $i < $len; $i++)
				{
					$set = str_shuffle($set);
					$gen.= $set[0]; 
				}
			return $gen;
		} 
		
?>
    <div id="wrapper">

       <?php include ('side_bar.php');?>
        <!-- Page Content -->
        <div id="page-wrapper">
            <div class="row">
			<div class="row">
            <ol class="col-12 breadcrumb">
                <li class="breadcrumb-item"><a href="/home">Home</a></li>
                <li class="breadcrumb-item active">Voter Registration</li>
            </ol>
        </div>
			
                <div class="col-lg-12">
                    <h3   class="col-md-6 col-md-offset-3"><i class = "fa fa-user"></i> Voter Registration Form</h3> 
                </div><br><br>
				<div class="col-md-6 col-md-offset-2">
					<div class="panel panel-green">
                        <div class="panel-heading">
                          <center>  Please Enter the Detail Needed Below
                        </div>
                        <div class="panel-body">
                         <form method = "post" enctype = "multipart/form-data">	
											<div class="form-group">
												<label>PR Number</label>
												<input class ="form-control" type = "text" name = "id_number" placeholder = "Please Enter PRN number" required="true">
													
											</div>
											
											<div class="form-group">
											<?php 
													$change =  passFunc(8, 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890');
											?>	
												<label>Password</label>
													<input class="form-control"  type = "password" name = "password" id = "pass" required="true" readonly="readonly" />
													<input type = "button" value = "Generate" onclick = "document.getElementById('pass').value = '<?php echo $change?>'">
											</div>
											
											<div class="form-group">
												<label>Firstname</label>
													<input class="form-control" type ="text" name = "firstname" placeholder="Please Enter Firstname" required="true">
											</div>
											<div class="form-group">
												<label>Lastname</label>
													<input class="form-control"  type = "text" name = "lastname" placeholder="Please Enter lastname" required="true">
											</div>
											
											<div class="form-group">
												<label>Email ID</label>
													<input class="form-control"  type = "text" name = "email" placeholder="Please Enter Email ID" required="true">
											</div>

											<div class="form-group">
												<label>Date</label>
													<input class="form-control"  type = "date" name = "date" placeholder="Please Enter Date" required="true">
											</div>

											<div class="form-group">
												<label>Branch</label>
													<input class="form-control"  type = "text" name = "branch" placeholder="Please Enter Branch" required="true">
											</div>


											
											<div class="form-group">
												<label>Year</label>
													<select class = "form-control" name = "year_level">
														<option></option>
														<option>1st Year</option>
														<option>2nd Year</option>
														<option>3rd Year</option>
														<option>4th Year</option>
														
													</select>
											</div>
																	
											 	 <button name = "save" type="submit" class="btn btn-primary">Save Data</button>
												 
						  				 </div>
                                       
										
										</form>
								
							<?php 
								require 'dbcon.php';
								
								if (isset($_POST['save'])){
									$id_number=$_POST['id_number'];
									$password = $_POST['password'];
									$firstname=$_POST['firstname'];
									$lastname=$_POST['lastname'];
									$email=$_POST['email'];
									$date=$_POST['date'];
									$branch=$_POST['branch'];																		
									$year_level=$_POST['year_level'];
									
									$query = $conn->query("SELECT * FROM voters WHERE id_number='$id_number'") or die (mysql_error());
									$count = $query->fetch_array();

									if ($count  > 0){ 
									?>
										<script>
											alert("PRN Number is Already Exist");
										</script>
									<?php
										}
										else{
										$conn->query("insert into voters(id_number,password,firstname,lastname,email,date,branch,year_level,status) VALUES('$id_number','$password','$firstname','$lastname','$email','$date','$branch','$year_level','Unvoted')");
									?>
									<script>
										alert('Voters Successfully Save');
									</script>
							<?php
									}
								} 
							?>
						  
						
						</div>
						</form>
                    </div>
                </div> 
            </div>
            <!-- /.row -->
        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->
<?php include ('script.php');?>
</body>

</html>

