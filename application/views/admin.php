
<script type="text/javascript">
$(document).ready(function() {
  $("#success-alert").hide();
  $("#failed-alert").hide();


	<?php if($this->session->flashdata('success')){?>
        $("#success-alert").fadeTo(2000, 500).slideUp(500, function() {
            $("#success-alert").slideUp(500);
        });
	<?php }?>
	<?php if($this->session->flashdata('failed')){?>
        $("#failed-alert").fadeTo(2000, 500).slideUp(500, function() {
            $("#failed-alert").slideUp(500);
        });
	<?php }?>
});
</script>
<div class="container">
	<div class="row heading-row">
		<div class="col-sm-10 text-center mx-auto mt-5">
		    <div class="alert alert-success" id="success-alert">
                <button type="button" class="close" data-dismiss="alert">x</button>
                <strong>Successfully Submitted. </strong>
            </div>
			<div class="alert alert-danger" id="failed-alert">
                <button type="button" class="close" data-dismiss="alert">x</button>
                <strong>Record Not Found! </strong>
            </div>
	    <?php if($user->name == "AdminG2320"){ ?>
            <!-- <h2 style='font-family: "Tw Cen MT";color:#000;'>Admin Entry Screen</h2> -->
		<?php }else{ ?>
            <h2 style='font-family: "Tw Cen MT";color:#000;'>Admin Entry Screen</h2>

		<?php } ?>  
		</div>
	</div>
	<!-- <div class="row heading-row">
		<div class="col-sm-10 text-center mx-auto mt-2">
			<div class="form-control">
				<label class="form-label">Cadet No :</label>
				<input typt="text" class="form-input" name="cadetno"/>
			</div>
		</div>
	</div> -->
	
	<div class="row heading-row">
		<div class="col-sm-10 text-center mx-auto mt-4">
			<div class="form-control">
				<button class="btn btn-dark" style="width:150px;" onclick="window.location.href='<?php echo base_url('wills/index');?>'">Wills</button>
			</div>
		</div>
	</div> 

	<div class="row heading-row">
		<div class="col-sm-10 text-center mx-auto mt-4">
			<div class="form-control">
				<button class="btn btn-dark" style="width:150px;" onclick="window.location.href='<?php echo base_url('deeds/index');?>'">Deeds</button>
			</div>
		</div>
	</div> 

	<div class="row heading-row">
		<div class="col-sm-10 text-center mx-auto mt-4">
			<div class="form-control">
				<button class="btn btn-dark" style="width:150px;" onclick="window.location.href='<?php echo base_url('relinquishment/index');?>'">Relinquishment</button>
			</div>
		</div>
	</div> 

	<div class="row heading-row">
		<div class="col-sm-10 text-center mx-auto mt-4">
			<div class="form-control">
				<button class="btn btn-dark" style="width:150px;" onclick="window.location.href='<?php echo base_url('succession/index');?>'">Succession</button>
			</div>
		</div>
	</div> 

	<div class="row heading-row">
		<div class="col-sm-10 text-center mx-auto mt-4">
			<div class="form-control">
				<button class="btn btn-dark" style="width:150px;" onclick="window.location.href='<?php echo base_url('antinuptiac/index');?>'">Anti-Nuptial</button>
			</div>
		</div>
	</div> 

	<div class="row heading-row">
		<div class="col-sm-10 text-center mx-auto mt-4">
			<div class="form-control">
				<button class="btn btn-dark" style="width:150px;" onclick="window.location.href='<?php echo base_url('adoption/index');?>'">Adoption</button>
			</div>
		</div>
	</div> 
	<div class="row heading-row">
		<div class="col-sm-10 text-center mx-auto mt-4 mb-5">
			<div class="form-control" style="text-align:end;">
			
				    <a class="btn btn-dark m-2" onclick="window.location.href='<?php echo base_url('student/index');?>'" id="home" style="width:120px;">Back</a>
					
					<button class="btn btn-dark" style="width:150px;" onclick="window.location.href='<?php echo base_url('login/logout');?>'">Logout</button>
				
				
			</div>
		</div>
	</div>
    <!-- <div class="row heading-row">
		<div class="col-sm-10 text-center mx-auto mt-4 mb-5">
			<div class="form-control" style="text-align:end;">
				<button class="btn btn-dark" style="width:150px;" onclick="window.location.href='<?php echo base_url('login/logout');?>'">Logout</button>
			</div>
		</div>
	</div> -->
</div>



<!-- window.location.href='<?php echo base_url('student/query_view/'.$id);?>'<?php echo 'student/search/'.$id;?> -->