<style>
	.form-input{
		background:#fff;
	}
	.form-control{
		height:max-content;
	}
	#icon{
		display:none!important;
	}
</style>
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

<form enctype="multipart/form-data" method="post" action="<?php echo base_url('succession/edit/'.$cadet->id);?>">  

<div class="container">
    
	<div class="row heading-row">
		<div class="col-sm-10 text-center mx-auto mt-5">
		    <div class="alert alert-success" id="success-alert">
                <button type="button" class="close" data-dismiss="alert">x</button>
                <strong>Successfully Submitted. </strong>
            </div>
			<div class="alert alert-danger" id="failed-alert">
                <button type="button" class="close" data-dismiss="alert">x</button>
                <strong>Failed to Submit. Please try again! </strong>
            </div>
			<h2 style='font-family: "Tw Cen MT";color:#000;'>Notary Document Details</h2>
		</div>
	</div>

	
	
	
	<div class="row">
        <div class="col-sm-6">
            <div class="row heading-row">
		        <div class="col-sm-4 mt-2">
			        <div class="form-control">
				        <label class="form-label">Select File :</label>
			        </div>
		        </div>
				<div class="col-sm-7 mt-1">
			        <div class="form-control">
					    <input type="file" class="form-input" onchange="previewFile()" name="pdf" style="width:100%;"/>
			        </div>
		        </div>
	        </div>
        </div>
    </div>

    <div class="row">
        
		<div class="col-sm-6">
            <div class="row heading-row">
		        <div class="col-sm-4 mt-2">
			        <div class="form-control">
				        <label class="form-label">Sl. No. :</label>
			        </div>
		        </div>
				<div class="col-sm-7 mt-1">
			        <div class="form-control">
					    <input type="text" class="form-input" name="col1" value="<?php echo $cadet->col1;?>" style="width:100%;"/>
			        </div>
		        </div>
	        </div>
			<div class="row heading-row">
		        <div class="col-sm-4 mt-2">
			        <div class="form-control">
				        <label class="form-label">Book No. :</label>
			        </div>
		        </div>
				<div class="col-sm-7 mt-1">
			        <div class="form-control">
					    <input type="text" class="form-input" name="col2" value="<?php echo $cadet->col2;?>" style="width:100%;"/>
			        </div>
		        </div>
	        </div>
			<div class="row heading-row">
		        <div class="col-sm-4 mt-2">
			        <div class="form-control">
					<label class="form-label">Date of Registration :</label>

			        </div>
		        </div>
				<div class="col-sm-7 mt-1">
			        <div class="form-control">
					    <input type="date" class="form-input" name="col3" value="<?php echo $cadet->col3;?>" style="width:100%;"/>
			        </div>
		        </div>
	        </div>
			<div class="row heading-row">
		        <div class="col-sm-4 mt-2">
			        <div class="form-control">
				        <label class="form-label">Interested Party / Second Party :</label>
			        </div>
		        </div>
				<div class="col-sm-7 mt-1">
			        <div class="form-control">
					    <input type="text" class="form-input" name="col4" value="<?php echo $cadet->col4;?>" style="width:100%;"/>
			        </div>
		        </div>
	        </div>
			<div class="row heading-row">
		        <div class="col-sm-4 mt-2">
			        <div class="form-control">
				        <label class="form-label">Village Name :</label>
			        </div>
		        </div>
				<div class="col-sm-7 mt-1">
			        <div class="form-control">
					    <input type="text" class="form-input" name="col5" value="<?php echo $cadet->col5;?>" style="width:100%;"/>
			        </div>
		        </div>
	        </div>
			<div class="row heading-row">
		        <div class="col-sm-4 mt-2">
			        <div class="form-control">
				        <label class="form-label">District :</label>
			        </div>
		        </div>
				<div class="col-sm-7 mt-1">
			        <div class="form-control">
					    <!-- <input type="text" class="form-input" name="col6" value="<?php echo $cadet->col6;?>" style="width:100%;"/> -->
						<select class="form-control select2 district select2-hidden-accessible" placeholder="District" name="col6"  style="width:100%;">
							<option></option>
							
							<?php foreach($district as $data){
								if($data->district){
								if($cadet->col6==$data->district){ 
								    echo '<option selected>'.$data->district.'</option>';
								}else{
									echo '<option>'.$data->district.'</option>';
								}
							    }
							}?>
						</select>
					</div>
		        </div>
	        </div>
			<div class="row heading-row">
		        <div class="col-sm-4 mt-2">
			        <div class="form-control">
				        <label class="form-label">Taluka :</label>
			        </div>
		        </div>
				<div class="col-sm-7 mt-1">
			        <div class="form-control">
					    <!-- <input type="text" class="form-input" name="col7" value="<?php echo $cadet->col7;?>" style="width:100%;"/> -->
						<select class="form-control select2 taluk select2-hidden-accessible" placeholder="Taluka" name="col7"  style="width:100%;">
							<option></option>
							
							<?php foreach($taluk as $data){
								if($data->taluk){
								if($cadet->col7==$data->taluk){ 
								    echo '<option selected>'.$data->taluk.'</option>';
								}else{
									echo '<option>'.$data->taluk.'</option>';
								}
							    }
							}?>
						</select>
					</div>
		        </div>
	        </div>
			<div class="row heading-row">
		        <div class="col-sm-4 mt-2">
			        <div class="form-control">
				        <label class="form-label">Page No. (From - To) :</label>
			        </div>
		        </div>
				<div class="col-sm-7 mt-1">
			        <div class="form-control">
					    <input type="text" class="form-input" name="col8" value="<?php echo $cadet->col8;?>" style="width:100%;"/>
			        </div>
		        </div>
	        </div>
			<div class="row heading-row">
		        <div class="col-sm-4 mt-2">
			        <div class="form-control">
				        <label class="form-label">Page Count :</label>
			        </div>
		        </div>
				<div class="col-sm-7 mt-1">
			        <div class="form-control">
					    <input type="text" class="form-input" name="col9" value="<?php echo $cadet->col9;?>" style="width:100%;"/>
			        </div>
		        </div>
	        </div>
			<div class="row heading-row">
		        <div class="col-sm-4 mt-2">
			        <div class="form-control">
				        <label class="form-label">Document Attached (Y/NA) :</label>
			        </div>
		        </div>
				<div class="col-sm-7 mt-1">
			        <div class="form-control">
					    <input type="text" class="form-input" name="col10" value="<?php echo $cadet->col10;?>" style="width:100%;"/>
			        </div>
		        </div>
	        </div>
			<div class="row heading-row">
		        <div class="col-sm-4 mt-2">
			        <div class="form-control">
				        <label class="form-label">Year of Endorsement :</label>
			        </div>
		        </div>
				<div class="col-sm-7 mt-1">
			        <div class="form-control">
					    <input type="text" class="form-input" name="col11" value="<?php echo $cadet->col11;?>" style="width:100%;"/>
			        </div>
		        </div>
	        </div>
			<div class="row heading-row mt-5 mb-5">
			    <button class="btn btn-dark m-2" id="home" style="width:32%;" type="submit">Submit</button>
				<a class="btn btn-dark m-2" id="home" style="width:32%;" onclick="history.back()">Back</a>
            </div>  
			
			
        </div>
		<div class="col-sm-6">
		    <div class="row previewfile" style="display:block">
		        <div class="col-sm-12">
		            <iframe src="" id="iframe-pdf" width="100%" height="500px"></iframe>
		        </div>
	        </div>
        </div>
    </div>
	
</form> 
	
</div>


<script>
	$(document).ready(function(){
        $("#currentdetails").click(function(){
			var input = "<?php echo $id;?>";
			window.location.href="<?php echo base_url('student/currentdetails_view/');?>"+<?php echo $id;?>+'?cadetno='+<?php echo $cadet->id;?>;
		});
		$("#armedforces").click(function(){
			var input = "<?php echo $id;?>";
			window.location.href="<?php echo base_url('student/armedforces/');?>"+<?php echo $id;?>+'?cadetno='+<?php echo $cadet->id;?>;
		});
		$("#query").click(function(){
			var input = "<?php echo $id;?>";
			window.location.href="<?php echo base_url('student/query/');?>"+<?php echo $id;?>+'?cadetno='+<?php echo $cadet->id;?>;
		});
		// $("#home").click(function(){
		// 	var input = "<?php echo $id;?>";
		// 	onclick="history.back()"
		// });
		$("#exit").click(function(){
			var input = "<?php echo $id;?>";
			window.location.href="<?php echo base_url('login/');?>";
		});
	});

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
			    document.querySelector('#iframe-pdf').src = '<?php echo base_url();?>pdf/'+json.url;
			}else{
				// return '';
			}
		}else{
				// return '';
			}
            
    }

	
	searchFile('succession','<?php echo $cadet->pdf_link; ?>')
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