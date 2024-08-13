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
<form enctype="multipart/form-data" method="post" action="<?php echo base_url('relinquishment/add');?>">  
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
			<h2 style='font-family: "Tw Cen MT";color:#000;'>Add New Relinquishment/Conscent/Acquiescence</h2>
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
				        <label class="form-label">PARTY (ONE) :</label>
			        </div>
		        </div>
				<div class="col-sm-7 mt-1">
			        <div class="form-control">
						<div class="row" style="margin:0px">
					        <input type="text" class="form-input" name="col4[]" style="flex:1"/>
			                <span class="btn btn-dark" type="button" id="addButton" style="border-radius:0px">Add</span>
                        </div>
						<div id="inputContainer"></div>
			        </div>
		        </div>
	        </div>
			<div class="row heading-row">
		        <div class="col-sm-4 mt-2">
			        <div class="form-control">
				        <label class="form-label">PARTY (TWO) :</label>
			        </div>
		        </div>
				<div class="col-sm-7 mt-1">
			        <div class="form-control">
					    <!-- <input type="text" class="form-input" name="col5" style="width:100%;"/> -->
						<div class="row" style="margin:0px">
					        <input type="text" class="form-input" name="col5[]" style="flex:1"/>
			                <span class="btn btn-dark" type="button" id="addButton1" style="border-radius:0px">Add</span>
                        </div>
						<div id="inputContainer1"></div>
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
					    <input type="text" class="form-input" name="col6" style="width:100%;"/>
			        </div>
		        </div>
	        </div>
			<!-- <div class="row heading-row">
		        <div class="col-sm-4 mt-2">
			        <div class="form-control">
				        <label class="form-label">Address - 2 (Village) :</label>
			        </div>
		        </div>
				<div class="col-sm-7 mt-1">
			        <div class="form-control">
					    <input type="text" class="form-input" name="col7" style="width:100%;"/>
			        </div>
		        </div>
	        </div> -->
			<div class="row heading-row">
		        <div class="col-sm-4 mt-2">
			        <div class="form-control">
				        <label class="form-label">District :</label>
			        </div>
		        </div>
				<div class="col-sm-7 mt-1">
			        <div class="form-control">
					    <!-- <input type="text" class="form-input" name="col8" style="width:100%;"/> -->
						<select class="form-control select2 district select2-hidden-accessible" placeholder="District" name="col8[]"  style="width:100%;">
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
	        </div>
			<div class="row heading-row">
		        <div class="col-sm-4 mt-2">
			        <div class="form-control">
				        <label class="form-label">Taluka :</label>
			        </div>
		        </div>
				<div class="col-sm-7 mt-1">
			        <div class="form-control">
					    <!-- <input type="text" class="form-input" name="col9" style="width:100%;"/> -->
						<select class="form-control select2 taluk select2-hidden-accessible" placeholder="Taluka" name="col9[]"  style="width:100%;">
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
	        </div>
			<div class="row heading-row">
		        <div class="col-sm-4 mt-2">
			        <div class="form-control">
				        <label class="form-label">Page No. (From - to) :</label>
			        </div>
		        </div>
				<div class="col-sm-7 mt-1">
			        <div class="form-control">
					    <input type="text" class="form-input" name="col10" style="width:100%;"/>
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
					    <input type="text" class="form-input" name="col11" style="width:100%;"/>
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

<script>
       document.addEventListener('DOMContentLoaded', function () {
			// Party1
            const addButton = document.getElementById('addButton');
            const inputContainer = document.getElementById('inputContainer');
            const districtContainer = document.getElementById('districtContainer');
            const talukContainer = document.getElementById('talukContainer');
            let fieldCount = 0;

			// party2
			const addButton1 = document.getElementById('addButton1');
            const inputContainer1 = document.getElementById('inputContainer1');
            let fieldCount1 = 0;

			// DIstrict
			const districtAddButton = document.getElementById('districtAddButton');
            let fieldCount2 = 0;

			// Taluka
			const talukaAddButton = document.getElementById('talukaAddButton');
            let fieldCount3 = 0;

            addButton.addEventListener('click', function () {
                fieldCount++;
                const inputGroup = document.createElement('div');
                inputGroup.className = 'input-group mt-2 ';
                inputGroup.id = 'inputGroup' + fieldCount;

                const inputField = document.createElement('input');
                inputField.type = 'text';
                inputField.name = 'col4[]';
				inputField.className = "form-input";
				inputField.style.flex=1;

                const deleteButton = document.createElement('button');
                deleteButton.type = 'button';
				deleteButton.className = "btn btn-danger"
				deleteButton.style.borderRadius="0px"
                deleteButton.innerText = 'Delete';
                deleteButton.addEventListener('click', function () {
                    inputContainer.removeChild(inputGroup);
                });

                inputGroup.appendChild(inputField);
                inputGroup.appendChild(deleteButton);
                inputContainer.appendChild(inputGroup);

				if(fieldCount>fieldCount1){
				   districtAddButton.click();
				   talukaAddButton.click();
				}
            });
			// End Party1

			// Party2
			
            addButton1.addEventListener('click', function () {
                fieldCount1++;
                const inputGroup = document.createElement('div');
                inputGroup.className = 'input-group mt-2 ';
                inputGroup.id = 'inputGroup' + fieldCount1;

                const inputField = document.createElement('input');
                inputField.type = 'text';
                inputField.name = 'col5[]';
				inputField.className = "form-input";
				inputField.style.flex=1;

                const deleteButton = document.createElement('button');
                deleteButton.type = 'button';
				deleteButton.className = "btn btn-danger"
				deleteButton.style.borderRadius="0px"
                deleteButton.innerText = 'Delete';
                deleteButton.addEventListener('click', function () {
                    inputContainer1.removeChild(inputGroup);
                });

                inputGroup.appendChild(inputField);
                inputGroup.appendChild(deleteButton);
                inputContainer1.appendChild(inputGroup);

				if(fieldCount1>fieldCount){
				   districtAddButton.click();
				   talukaAddButton.click();
				}
            });
			// End Party2

			// District
			
            districtAddButton.addEventListener('click', function () {
                fieldCount2++;
                const inputGroup = document.createElement('div');
                inputGroup.className = 'input-group mt-2 ';
                inputGroup.id = 'inputGroup' + fieldCount2;

                const clonedSelect = document.getElementById("district");
				console.log(clonedSelect)
				clonedSelect.className = "district"+fieldCount2;
				// Clone the select element
                const inputField = clonedSelect.cloneNode(true);
				// inputField.className = "form-input";
				inputField.style.width = "76%";
				inputField.style.flex=1;

                const deleteButton = document.createElement('button');
                deleteButton.type = 'button';
				deleteButton.className = "btn btn-danger"
				deleteButton.style.borderRadius="0px"
                deleteButton.innerText = 'Delete';
                deleteButton.addEventListener('click', function () {
                    districtContainer.removeChild(inputGroup);
                });

                inputGroup.appendChild(inputField);
                inputGroup.appendChild(deleteButton);
                districtContainer.appendChild(inputGroup);

				$('.district'+fieldCount2).select2({
		            placeholder: "District",
                    tags:true
                });
				// $('.district'+fieldCount2).val(null).trigger('change');

            });
			// End DIstrict

			// Taluk
			
            talukaAddButton.addEventListener('click', function () {
                fieldCount3++;
                const inputGroup = document.createElement('div');
                inputGroup.className = 'input-group mt-2 ';
                inputGroup.id = 'inputGroup' + fieldCount3;

                const clonedSelect = document.getElementById("taluk");
				console.log(clonedSelect)
				clonedSelect.className = "taluk"+fieldCount3;
				// Clone the select element
                const inputField = clonedSelect.cloneNode(true);
				// inputField.className = "form-input";
				inputField.style.width = "76%";
				inputField.style.flex=1;

                const deleteButton = document.createElement('button');
                deleteButton.type = 'button';
				deleteButton.className = "btn btn-danger"
				deleteButton.style.borderRadius="0px"
                deleteButton.innerText = 'Delete';
                deleteButton.addEventListener('click', function () {
                    talukContainer.removeChild(inputGroup);
                });

                inputGroup.appendChild(inputField);
                inputGroup.appendChild(deleteButton);
                talukContainer.appendChild(inputGroup);

				$('.taluk'+fieldCount3).select2({
		            placeholder: "Taluka",
                    tags:true
                });
				// $('.taluk'+fieldCount3).val(null).trigger('change');

            });
			// End taluk
        });
    </script>