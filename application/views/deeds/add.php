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
<script src="https://unpkg.com/tesseract.js@2.1.5/dist/tesseract.min.js"></script>

<script type="text/javascript">
async function ocr(image) {
  const worker = new Tesseract.worker();
  await worker.load();
  const result = await worker.recognize(image);
  worker.terminate();
  return result;
}
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
    function previewFile() {
        const preview = document.querySelector('iframe');
		document.querySelector('.previewfile').style.display = "block";
        const file = document.querySelector('input[type=file]').files[0];
		
        const reader = new FileReader();
        var filename = file.name;

        reader.addEventListener("load", function () {
          // convert file to base64 string
          preview.src = reader.result;

		  const image = new Image();
          image.src = reader.result;
          image.onload = async () => {
            const text = await ocr(image);
            console.log(text);
			const tables = [];
            const lines = text.split("\n");
            for (const line of lines) {
                const cells = line.split("\t");
                if (cells.length > 1) {
                    tables.push(cells);
                }
            }
			for (const table of tables) {
                console.log(table);
            }
          };
        }, false);

        if (file) {
          reader.readAsDataURL(file);
        }

    }
</script>
<div class="container">
<form enctype="multipart/form-data" method="post" action="<?php echo base_url('deeds/add');?>">  
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
			<h2 style='font-family: "Tw Cen MT";color:#000;'>Add New Deeds</h2>
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
					    <input type="text" class="form-input" name="col1" style="width:100%;"/>
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
					    <input type="text" class="form-input" name="col2" style="width:100%;"/>
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
					    <input type="date" class="form-input" name="col3" style="width:100%;"/>
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
					    <input type="text" class="form-input" name="col4" style="width:100%;"/>
			        </div>
		        </div>
	        </div>
			
			
        </div>
        <div class="col-sm-6" style="padding:0;">
		    <div class="row previewfile" style="display:none">
		        <div class="col-sm-12">
		            <iframe src="" id="iframe-pdf" width="100%" height="500px"></iframe>
		        </div>
	        </div>
	    </div>
		
    </div>
	
    
	<div class="row mb-5">
		<div class="col-sm-7">
		    
		</div>
		<div class="col-sm-5">
		    <div class="row" style="width:100%;display:flex;flex-wrap: unset;margin-left: 0px;">
			    <button class="btn btn-dark m-2" id="query" style="width:32%;">Submit</button>
				<a class="btn btn-dark m-2"  onclick="history.back()" style="width:32%;">Back</a>
				<!-- <a class="btn btn-dark m-2" href="<?php echo base_url('login/');?>" style="width:32%;">Exit</a> -->
			</div>
		</div>
	</div>
</form>
</div>


<!-- <script>
	$(document).ready(function(){
        $("#currentdetails").click(function(){
			var input = "<?php echo $id;?>";
			window.location.href="<?php echo base_url('student/currentdetails/');?>"+input;
		});
		$("#armedforces").click(function(){
			var input = "<?php echo $id;?>";
			window.location.href="<?php echo base_url('student/armedforces/');?>"+input;
		});
		$("#query").click(function(){
			var input = "<?php echo $id;?>";
			window.location.href="<?php echo base_url('student/query/');?>"+input;
		});
		$("#home").click(function(){
			var input = "<?php echo $id;?>";
			window.location.href="<?php echo base_url('student/index/');?>"+input;
		});
		$("#exit").click(function(){
			var input = "<?php echo $id;?>";
			window.location.href="<?php echo base_url('login/');?>";
		});
	});
</script> -->

