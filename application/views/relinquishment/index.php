
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
            <h2 style='font-family: "Tw Cen MT";color:#000;'>Relinquishment/Conscent/Acquiescence Lists</h2>
        </div>
		<div class="col-sm-2 mx-auto mt-5">
		<?php if($user->role == "Admin" || $user->role == "SuperAdmin"){ ?>

		    <a class="btn btn-dark" style="width:150px;height: max-content;margin-top: auto;margin-bottom: auto;" href="<?php echo base_url('relinquishment/add');?>">Add</a>	
		<?php } ?>
				
	    </div>
	</div>
    <form method="get" action="<?php echo base_url('relinquishment/index');?>">

    <div class="row">
        <div class="col-sm-10">
		    <div class="row heading-row">
		        
			    <div class="col-sm-2 mt-1">
			        <div class="form-control">
					    <input type="text" class="form-input" placeholder="Book No." value="<?= $this->input->get('col2')?$this->input->get('col2'):''?>" name="col2" style="width:100%;"/>
			        </div>
		        </div>

				<div class="col-sm-3 mt-1">
			        <div class="form-control">
					    <input type="date" class="form-input" placeholder="Date of Registration" value="<?= $this->input->get('col3')?$this->input->get('col3'):''?>" name="col3" style="width:100%;"/>
			        </div>
		        </div>

				<div class="col-sm-3 mt-1">
			        <div class="form-control">
					    <input type="text" class="form-input" placeholder="Village Name" value="<?= $this->input->get('col6')?$this->input->get('col6'):''?>" name="col6" style="width:100%;"/>
			        </div>
		        </div>

				<div class="col-sm-3 mt-1">
			        <div class="form-control">
					    <!-- <input type="text" class="form-input" placeholder="District" value="<?= $this->input->get('col8')?$this->input->get('col8'):''?>" name="col8" style="width:100%;"/> -->
						<select class="form-control select2 district select2-hidden-accessible" placeholder="District" name="col8"  style="width:100%;">
							<option></option>
							
							<?php 
							$refvar = array();
							foreach($district as $data){
								if($data->district){
									$comString = explode(',', $data->district);
									foreach ($comString as $element) { 
										if(!in_array($element, $refvar)){
											array_push($refvar, $element); 

											if($this->input->get('col8')==$element){ 
												echo '<option selected>'.$element.'</option>';
											}else{
												echo '<option>'.$element.'</option>';
											}
										}
									}
								}
							}
							?>
						</select>
			        </div>
		        </div>
				<div class="col-sm-2 mt-1">
			        <div class="form-control">
					    <!-- <input type="text" class="form-input" placeholder="Taluk" value="<?= $this->input->get('col9')?$this->input->get('col9'):''?>" name="col9" style="width:100%;"/> -->
						<select class="form-control select2 taluk select2-hidden-accessible" placeholder="District" name="col9"  style="width:100%;">
							<option></option>
							
							
							<?php 
							$refvar2 = array();
							foreach($taluk as $data){
								if($data->taluk){
									$comString = explode(',', $data->taluk);
									foreach ($comString as $element) { 
										if(!in_array($element, $refvar2)){
											array_push($refvar2, $element); 

											if($this->input->get('col9')==$element){ 
												echo '<option selected>'.$element.'</option>';
											}else{
												echo '<option>'.$element.'</option>';
											}
										}
									}
								}
							}
							?>
						</select>
			        </div>
		        </div>
				<div class="col-sm-3 mt-1">
			        <div class="form-control">
					    <input type="text" class="form-input" placeholder="PARTY" value="<?= $this->input->get('col4')?$this->input->get('col4'):''?>" name="col4" style="width:100%;"/>
			        </div>
		        </div>
				<div class="col-sm-3 mt-1">
			        <div class="form-control">
					    <input type="text" class="form-input" placeholder="Page No. (From - To)" value="<?= $this->input->get('col10')?$this->input->get('col10'):''?>" name="col10" style="width:100%;"/>
			        </div>
		        </div>
				<?php if($user->role == "SuperAdmin"){ ?>
				<div class="col-sm-3 mt-1">
			        <div class="form-control">
					    <select class="form-select" name="center" style="width:100%;font-size:19px;padding 15px;">
						    <option value="">Select Center</option>
							<?php $i=1;
							foreach(User_model::$centers_arr as $arr){
								if($this->input->get('center')){
									if($this->input->get('center')==$arr){
										echo '<option value="'.$arr.'" selected>'.$arr.'</option>';
									}else{
										echo '<option value="'.$arr.'">'.$arr.'</option>';
									}

								}else{
								    echo '<option value="'.$arr.'">'.$arr.'</option>';
								}
								$i=$i+1;
							}?>
					    </select>
			        </div>
		        </div>
				<?php } ?>
	        </div>

            
        </div>
        <!-- <div class="col-sm-2">
            <div class="row heading-row" style="min-height: 100%;">
                  <button class="btn btn-dark" style="width:150px;height: max-content;margin-top: auto;margin-bottom: auto;" type="submit">Search</button>
            </div>
        </div> -->
		<div class="col-sm-1">
            <div class="row heading-row" style="min-height: 100%;">
			      

                  <button class="btn btn-dark" style="width:150px;height: max-content;margin-top: auto;margin-bottom: auto;" type="submit">Search</button>
				  
            </div>
        </div>
		<div class="col-sm-1">
            <div class="row heading-row" style="min-height: 100%;">
			      

                  
				  <button class="btn btn-danger" onclick="window.location.href='<?php echo base_url('/relinquishment');?>'" style="width:150px;height: max-content;margin-top: auto;margin-bottom: auto;" type="button">Reset</button>
            </div>
        </div>
    </div>
    </form>

	<!-- <div class="row heading-row">
		<div class="col-sm-10 text-center mx-auto mt-2">
			<div class="form-control">
				<label class="form-label">Cadet No :</label>
				<input type="text" class="form-input" name="cadetno"/>
			</div>
		</div>
	</div> -->
<?php
parse_str($_SERVER['QUERY_STRING'],$query_array);
$query_array_pagination=$query_array;
$query_array_page_size=$query_array;

$sort_key=$this->input->get("sort_key");
$sort_type=$this->input->get("sort_type");


unset($query_array['sort_key']);
unset($query_array['sort_type']);

$query_string_sort=http_build_query($query_array);

unset($query_array_pagination['page']);

$query_string_pagination=http_build_query($query_array_pagination);

unset($query_array_page_size['page_size']);

$query_string_page_size=http_build_query($query_array_page_size);


if($sort_type=="asc"){

	$sort_type="desc";
	
} else {
	
	$sort_type="asc";
	
	}
	if(!empty($cadet) || $cadet != ''){
?>
						  

	<div class="row heading-row">
		<div class="col-sm-12 text-center mx-auto mt-4">
			
        <div class="module-content-section">
	        <div class="table-header-data">
		
	            <div class="left">Showing <?php echo $page_size>sizeof($cadet)?sizeof($cadet):$page_size; ?> of <?php echo $total; ?> | Page <?php echo $current_page; ?> of <?php echo $total_pages; ?></div>
	                <div class="right">
					    Records Per Page:  &nbsp; <select name="page_size" class="filter-form-select" style="width:60px;" onchange="window.location.href='<?php echo site_url("relinquishment/index?".$query_string_page_size); ?>&page_size='+$(this).val()">
						    <option <?php if($this->input->get("page_size")==25): ?>selected="selected"<?php endif; ?> value="25">25</option>
						    <option <?php if($this->input->get("page_size")==50): ?>selected="selected"<?php endif; ?> value="50">50</option>
						    <option <?php if($this->input->get("page_size")==100): ?>selected="selected"<?php endif; ?> value="100">100</option>
						    <option <?php if($this->input->get("page_size")==250): ?>selected="selected"<?php endif; ?> value="250">250</option>
					    </select>
	                </div>
	                <div class="clear"></div>
	
	                </div>
	                <div class="table-container">
						<table>
						  <tr>
						  <?php if($user->role == "Admin" || $user->role == "SuperAdmin"){ ?>

								<th>Select</th>
								<?php } ?>
								<th>Sl. No.</th>
								<th>Book No.</th>
								<th>Date of Registration</th>
								<th>PARTY(ONE)</th>
								<th>PARTY(TWO)</th>
								<th>Village Name</th>
								<!-- <th>Address-2</th> -->
								<th>District</th>
								<th>Taluka</th>
								<th>Page No.<br>(From - To)</th>
								<th>Page Count</th>
								<th>Link</th>

								<th>Action</th>

						  </tr>
						  
						  <?php $k=1;
						  foreach($cadet as $l): ?>
						  <tr>
						  <?php if($user->role == "Admin" || $user->role == "SuperAdmin"){ ?>

							    <td><input type="checkbox" class="deletebox" name="deletebox" id="deletebox" value="<?php echo $l->id; ?>"/></td>
								<?php } ?>
								<td><?php echo $l->col1; ?></td>
								<td><?php echo $l->col2; ?></td>
								<td><?php echo $l->col3; ?></td>
								<?php 
								    $commaSeparatedString = $l->col4;
								    $elements = explode(',', $commaSeparatedString);
									?>

								<td>
									<ul>
										<?php foreach ($elements as $element) {echo '<li>' . htmlspecialchars(trim($element)) . '</li>';} ?>
									</ul>
								</td>
								<?php 
								    $commaSeparatedString = $l->col5;
								    $elements = explode(',', $commaSeparatedString);
									?>

								<td>
									<ul>
										<?php foreach ($elements as $element) {echo '<li>' . htmlspecialchars(trim($element)) . '</li>';} ?>
									</ul>
								</td>
								<td><?php echo $l->col6; ?></td>
								<!-- <td><?php echo $l->col7; ?></td> -->
								<?php 
								    $commaSeparatedString = $l->col8;
								    $elements = explode(',', $commaSeparatedString);
									?>
								<td>
								    <ul>
										<?php foreach ($elements as $element) {echo '<li>' . htmlspecialchars(trim($element)) . '</li>';} ?>
									</ul>
							    </td>
								<?php 
								    $commaSeparatedString = $l->col9;
								    $elements = explode(',', $commaSeparatedString);
									?>
								<td>
								    <ul>
										<?php foreach ($elements as $element) {echo '<li>' . htmlspecialchars(trim($element)) . '</li>';} ?>
									</ul>
								</td>
								<td><?php echo $l->col10; ?></td>
								<td><?php echo $l->col11; ?></td>
								<td><a href="#" onclick="searchFile('relinquishment','<?php echo $l->pdf_link; ?>')"><?php echo $l->pdf_link; ?></a></td>
								
								<td>
								    <a href="<?php echo base_url('relinquishment/edit/'.$l->id); ?>" class="" title="Edit Listing"><i class="fas fa-pencil-alt" style=" font-size:1.3em; position:relative; top:2px; color:#ffb800;"></i> Edit</a>
									<?php if($user->role == "Admin" || $user->role == "SuperAdmin"){ ?>

									<?php } ?>
								</td>
						  </tr>
						  
						  <?php endforeach;
						   ?>
						</table>
						<div class="data-pagination">
							<?php if($prev_page): ?>
							<a href="<?php echo site_url("relinquishment/index?page=".$prev_page_num."&".$query_string_pagination); ?>" class="form-button small-button pagination-buttons">Previous</a>
							<?php endif; ?>
							
							<?php
								
								$total=10;
								$start=1;
								
								if($total_pages<=10){
									
									$start=1;
									$total=$total_pages;
								}
								
								if($total_pages==11 and $current_page>=2){ $start=2; $total=($total+$start)>$total_pages?$total_pages:($total+$start); }
								if($total_pages==12 and $current_page>=3){ $start=3;  $total=($total+$start)>$total_pages?$total_pages:($total+$start);}
								if($total_pages==13 and $current_page>=4){ $start=4;  $total=($total+$start)>$total_pages?$total_pages:($total+$start);}
								if($total_pages==14 and $current_page>=5){ $start=5;  $total=($total+$start)>$total_pages?$total_pages:($total+$start);}
								if($total_pages>14 and $current_page>5 and $current_page<$total_pages){ $start=$current_page-5;  $total=($total+$start)>$total_pages?$total_pages:($total+$start);}
								
								if($total_pages>14 and $current_page==$total_pages){ $start=$current_page-10;  $total=($total+$start)>$total_pages?$total_pages:($total+$start); }
								
									
									for($i=$start; $i<=$total; $i++){
										
										if(($i)!=$current_page){
									?>
										<a href="<?php echo site_url("relinquishment/index?page=".($i-1)."&".$query_string_pagination); ?>" class="form-button small-button pagination-buttons"><?php echo $i; ?></a>
									<?php
								 } else {
									 echo "&nbsp;".$i."&nbsp;";
									 }
									
									}
							?>
							
							<?php if($next_page): ?>
							<a href="<?php echo site_url("relinquishment/index?page=".$next_page_num."&".$query_string_pagination); ?>" class="form-button small-button pagination-buttons">Next</a>
							<?php endif; ?>
						</div>
                    </div>
		        </div>
	        </div>
       
    </div>
   <?php }?>
    <div class="row heading-row">
		<div class="col-sm-10 text-center mx-auto mt-4 mb-5">
			<div class="form-control" style="text-align:end;">
			<?php if($user->role == "Admin" || $user->role == "SuperAdmin"){ ?>

				    <a class="btn btn-dark m-2" onclick="window.location.href='<?php echo base_url('student/notorial_deeds');?>'" id="home" style="width:120px;">Back</a>
					<button class="btn btn-danger" style="width:150px;" onclick="deleteAll()">Delete</button>

				<?php }else{ ?>
				    <a class="btn btn-dark m-2" onclick="window.location.href='<?php echo base_url('student/notorial_deeds');?>'" id="home" style="width:120px;">Back</a>
					
					<button class="btn btn-dark" style="width:150px;" onclick="window.location.href='<?php echo base_url('login/logout');?>'">Logout</button>
				
				<?php } ?>
			</div>
		</div>
	</div>
</div>

<script>
	function deleteAll(){
		var inputs = document.querySelectorAll('.deletebox'); 
		var delete_ids = [];
        for (var i = 0; i < inputs.length; i++) {   
            if(inputs[i].checked == true)
			{
				delete_ids.push(inputs[i].value);
			}   
        }   
		window.location.href = "<?php echo base_url('relinquishment/delete/');?>"+delete_ids;
	}

	const searchFile = async (path, link)=> {
		const response = await fetch('<?php echo base_url("student/fetch_file");?>', {
            method: "POST",
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify({path, link}),
        })
        const json = await response.json()

        if (response.ok) {
			console.log(json.url)
			// url = url.replace('//','/');
			if(json.url!=""){
			    window.open('<?php echo base_url();?>pdf/'+json.url,'_blank');
			}else{
				alert("File not found")
			}
		}
            
        }

        


</script>

<script>
$(document).ready(function() {
    $('.district').select2({
		placeholder: "District",
        tags:true
    });
});
$(document).ready(function() {
    $('.taluk').select2({
		placeholder: "Taluka",
        tags:true
    });
});
</script>