<div class="container">
    <?php if($user->role == "SuperAdmin"){ ?>
	<div class="row heading-row">
		<div class="col-sm-10 text-center mx-auto mt-4">
			<div class="form-control">
				<button class="btn btn-dark" style="width:150px;" onclick="window.location.href='<?php echo base_url('student/admins');?>'">Admins Details</button>
			</div>
		</div>
	</div>
    <?php }?>

    <?php if($user->role == "SuperAdmin" || $user->role == "Admin"){ ?>

	<div class="row heading-row">
		<div class="col-sm-10 text-center mx-auto mt-4">
			<div class="form-control">
				<button class="btn btn-dark" style="width:150px;" onclick="window.location.href='<?php echo base_url('student/user');?>'">Users Details</button>
			</div>
		</div>
    </div>
    <?php }?>
	

	<div class="row heading-row">
		<div class="col-sm-10 text-center mx-auto mt-4">
			<div class="form-control">
				<button class="btn btn-dark" style="width:150px;" onclick="window.location.href='<?php echo base_url('student/notorial_deeds');?>'">Notorial Deeds</button>
			</div>
		</div>
	</div> 

	
    <div class="row heading-row">
		<div class="col-sm-10 text-center mx-auto mt-4 mb-5">
			<div class="form-control" style="text-align:end;">
				<button class="btn btn-dark" style="width:150px;" onclick="window.location.href='<?php echo base_url('login/logout');?>'">Logout</button>
			</div>
		</div>
	</div>

</div>