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

<form enctype="multipart/form-data" method="post" action="<?php echo base_url('antinuptiac/edit/'.$cadet->id);?>">  

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
				        <label class="form-label">Address - 1 (Village) :</label>
			        </div>
		        </div>
				<div class="col-sm-7 mt-1">
			        <div class="form-control">
					    <input type="text" class="form-input" name="col6" value="<?php echo $cadet->col6;?>" style="width:100%;"/>
			        </div>
		        </div>
	        </div>
			<div class="row heading-row">
		        <div class="col-sm-4 mt-2">
			        <div class="form-control">
				        <label class="form-label">Address - 2 (Village) :</label>
			        </div>
		        </div>
				<div class="col-sm-7 mt-1">
			        <div class="form-control">
					    <input type="text" class="form-input" name="col7" value="<?php echo $cadet->col7;?>" style="width:100%;"/>
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
					    <!-- <input type="text" class="form-input" name="col8" value="<?php echo $cadet->col8;?>" style="width:100%;"/> -->
						
						<div class="row" style="margin:0px">
					        <!-- <input type="text" class="form-input" name="col5[]" style="flex:1"/> -->
							<select class="form-control select2 district select2-hidden-accessible" id="district" placeholder="District" name="col8[]"  style="width:82%;flex:1">
							    <option></option>
							
							    <?php 
								$refvar = array();
								foreach($district as $data){
								    if($data->district){
									  
			                            $comString = explode(',', $data->district);
										foreach ($comString as $element) { 

								            // if($cadet->col6==$element){ 
								            //     echo '<option selected>'.$element.'</option>';
								            // }else{
											if(!in_array($element, $refvar)){
												array_push($refvar, $element); 
									            echo '<option>'.$element.'</option>';
											}
								            // }
										}
									 
							        }
							    }
								?>
						    </select>
			                <span class="btn btn-dark" type="button" id="districtAddButton" style="border-radius:0px">Add</span>
                        </div>
						<div id="districtContainer"></div>
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
					    <!-- <input type="text" class="form-input" name="col9" value="<?php echo $cadet->col9;?>" style="width:100%;"/> -->
						
						<div class="row" style="margin:0px">
					        <!-- <input type="text" class="form-input" name="col5[]" style="flex:1"/> -->
							<select class="form-control select2 taluk select2-hidden-accessible" id="taluk" placeholder="Taluka" name="col9[]"  style="width:82%;flex:1">
							    <option></option>
							
							    <?php 
								$refvar2 = array();
								foreach($taluk as $data){
								    if($data->taluk){
										$comString = explode(',', $data->taluk);
										foreach ($comString as $element) { 
											if(!in_array($element, $refvar2)){
												array_push($refvar2, $element); 

								                if($cadet->col9==$element){ 
								                    echo '<option selected>'.$element.'</option>';
								                }else{
									                echo '<option>'.$element.'</option>';
								                }
											}
										}
							        }
							    }?>
						    </select>
			                <span class="btn btn-dark" type="button" id="talukaAddButton" style="border-radius:0px">Add</span>
                        </div>
						<div id="talukContainer"></div>
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
					    <input type="text" class="form-input" name="col10" value="<?php echo $cadet->col10;?>" style="width:100%;"/>
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

	
	searchFile('antinuptiac','<?php echo $cadet->pdf_link; ?>')
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

<script>
        document.addEventListener('DOMContentLoaded', function () {
            const addButton = document.getElementById('addButton');
            const inputContainer = document.getElementById('inputContainer');
            let fieldCount = 0;

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
            });

			   var inputsfields="";
			<?php 
			$commaSeparatedString = $cadet->col4;
			$elements = explode(',', $commaSeparatedString);
			$i=0;
			foreach ($elements as $element) { 
				?>
				
				<?php if($i>0){ ?>
				console.log("<?php echo $i;?>");
				addButton.click();
			<?php }
			$i++;
		    }

			$j=0;
			foreach ($elements as $element) { 
				?>
				inputsfields = document.getElementsByName('col4[]');
				var thirdInput = inputsfields[<?= $j ?>]
				thirdInput.value = "<?= $element ?>";
				
			<?php 
			$j++;
		    }?>

			const addButton1 = document.getElementById('addButton1');
            const inputContainer1 = document.getElementById('inputContainer1');
            let fieldCount1 = 0;

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
            });

			var inputsfields1="";

			<?php 
			$commaSeparatedString1 = $cadet->col5;
			$elements1 = explode(',', $commaSeparatedString1);
			$k=0;
			foreach ($elements1 as $element) { 
				if($k>0){ ?>
				console.log("<?php echo $k;?>");
				addButton1.click();
			<?php }
			$k++;
		    }

			$l=0;
			foreach ($elements1 as $element) { 
				?>
				inputsfields1 = document.getElementsByName('col5[]');
				var thirdInput = inputsfields1[<?= $l ?>]
				thirdInput.value = "<?= $element ?>";
				
			<?php 
			$l++;
		    }?>
        });document.addEventListener('DOMContentLoaded', function () {
            const addButton = document.getElementById('addButton');
            const inputContainer = document.getElementById('inputContainer');
            let fieldCount = 0;
			// Party2
			const addButton1 = document.getElementById('addButton1');
            const inputContainer1 = document.getElementById('inputContainer1');
            let fieldCount1 = 0;
           
			// DIstrict
            const districtAddButton = document.getElementById('districtAddButton');
            let fieldCount2 = 0;

			// Taluka
			const talukaAddButton = document.getElementById('talukaAddButton');
            let fieldCount3 = 0;

			// PARTY1
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

			   var inputsfields="";
			<?php 
			$commaSeparatedString = $cadet->col4;
			$elements = explode(',', $commaSeparatedString);
			$i=0;
			foreach ($elements as $element) { 
				?>
				
				<?php if($i>0){ ?>
				console.log("<?php echo $i;?>");
				addButton.click();
			<?php }
			$i++;
		    }

			$j=0;
			foreach ($elements as $element) { 
				?>
				inputsfields = document.getElementsByName('col4[]');
				var thirdInput = inputsfields[<?= $j ?>]
				thirdInput.value = "<?= $element ?>";
				
				
			<?php 
			$j++;
		    }?>

			// End PARTY1

			// PARTY2
			
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

			var inputsfields1="";
			<?php 
			$commaSeparatedString1 = $cadet->col5;
			$elements1 = explode(',', $commaSeparatedString1);
			$k=0;
			foreach ($elements1 as $element) { 
				if($k>0){ ?>
				console.log("<?php echo $k;?>");
				addButton1.click();
			<?php }
			$k++;
		    }

			$l=0;
			foreach ($elements1 as $element) { 
				?>
				inputsfields1 = document.getElementsByName('col5[]');
				var thirdInput = inputsfields1[<?= $l ?>]
				thirdInput.value = "<?= $element ?>";
				
			<?php 
			$l++;
		    }?>
			// End Party2

			// District
			
            districtAddButton.addEventListener('click', function () {
                fieldCount2++;
                const inputGroup = document.createElement('div');
                inputGroup.className = 'input-group mt-2 ';
                inputGroup.id = 'inputGroup' + fieldCount2;

                const clonedSelect = document.getElementById("district");
				console.log(clonedSelect)
				// Clone the select element
                const inputField = clonedSelect.cloneNode(true);
				// inputField.className = "form-input";
				inputField.className = "district"+fieldCount2;

				inputField.style.width = "76%";
				inputField.style.flex=1;
				inputField.value="";

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
			var inputsfields2="";
			<?php 
			$commaSeparatedString2 = $cadet->col8;
			$elements2 = explode(',', $commaSeparatedString2);
			$m=0;
			foreach ($elements2 as $element) { 
				if($m>0 && $element){ ?>
				console.log("<?php echo $m;?>");
				districtAddButton.click();

			<?php }
			$m++;
		    }

			$n=0;
			foreach ($elements2 as $element) { 
				if($n==0){
					?>
				    $(".district").val("<?= $element ?>").trigger('change');

					<?php
				}else{
				?>
				
				$(".district"+<?= $n ?>).val("<?= $element ?>").trigger('change');

				
			<?php }
			$n++;
		    }?>
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
				inputField.value="";

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
			var inputsfields3="";
			<?php 
			$commaSeparatedString3 = $cadet->col9;
			$elements3 = explode(',', $commaSeparatedString3);
			$p=0;
			foreach ($elements3 as $element) { 
				if($p>0 && $element){ ?>
				console.log("<?php echo $p;?>");
				talukaAddButton.click();

			<?php }
			$p++;
		    }

			$q=0;
			foreach ($elements3 as $element) { 
				if($element){
				if($q==0){
					?>
				    $(".taluk").val("<?= $element ?>").trigger('change');

					<?php
				}else{
				?>
				
				$(".taluk"+<?= $q ?>).val("<?= $element ?>").trigger('change');

				
			<?php }
			$q++;
		    }}?>
			// End taluk
        });
    </script>