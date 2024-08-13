<?php
defined('BASEPATH') OR exit('No direct script access allowed');
use setasign\Fpdi\Fpdi;
require_once('application/libraries/fpdi/autoload.php');
require_once('application/libraries/PDFMerger/PDFMerger.php');

class Relinquishment extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/userguide3/general/urls.html
	 */
	
	
	
	public function __construct() {
		parent::__construct();
		
		$this->load->model('User_model','user');
		$this->load->model('Relinquishment_model','relinquishment');

		$this->load->library('fpdf/fpdf.php');

		$this->load->library('form_validation');
		$this->load->helper('form');
		$this->load->helper('html');

	}
	
	
	public function delete_cache($path, $pattern) {
		$path = rtrim(str_replace("\\", "/", $path), '/') . '/';
		$matches = Array();
		$entries = Array();
		$dir = dir($path);
		while (false !== ($entry = $dir->read())) {
		  $entries[] = $entry;
		}
		$dir->close();
		foreach ($entries as $entry) {
		  $fullname = $path . $entry;
		  if ($entry != '.' && $entry != '..' && is_dir($fullname)) {
			$this->delete_cache($fullname, $pattern);
		  } else if (is_file($fullname) && preg_match($pattern, $entry)) {
			unlink($fullname); // delete the file
			echo $fullname," deleted.<br />"; #comment out if you do not want to echo the file deleted.
		  }
		}
	}

	public function index()
	{
	  $cadet = $this->session->userdata('user');
	  if($cadet){
		$page=$this->input->get("page");
			
		if(!$page){
					
			$page=0;
		}
			
		$page_size=25;
			
		if($this->input->get("page_size")>0){
			$page_size=$this->input->get("page_size");
		}
			
		$page_start=$page_size*$page;

		$data['id'] = $cadet->id;
		$data['user'] = $this->session->userdata('user');
		// $view_params['cadet_no'] = $i;
		$view_params['start'] = $page_start;
		$view_params['end'] = $page_size;
		$view_params['col2'] = $this->input->get('col2');
		$view_params['col3'] = $this->input->get('col3');
		$view_params['col4'] = $this->input->get('col4');
		$view_params['col6'] = $this->input->get('col6');

		$view_params['col8'] = $this->input->get('col8');
		$view_params['col9'] = $this->input->get('col9');
		$view_params['col10'] = $this->input->get('col10');

		// $view_params['center'] = $data['user']->role=="Admin" || $data['user']->role=="User"?$data['user']->center:"";
		$view_params['center'] = $data['user']->role=="Admin" || $data['user']->role=="User"?$data['user']->center:$this->input->get('center');

		// $view_params['year_of_admn'] = $this->input->get('yoa');
		// $view_params['year_of_discharged'] = $this->input->get('yod');
        $cadet = '';
		$count=0;
		// if(!empty($view_params['year_of_admn']) || !empty($view_params['year_of_discharged'] || !empty($view_params['cadet_no']))){
		    $cadet = $this->relinquishment->view($view_params);
			// print_r($cadet);die;

		    $count = $this->relinquishment->count($view_params);
		// }
		
		$data['cadet'] = $cadet;
		$data['total']=$count;
			$data['page_size']=$page_size;
			$data['current_page']=$page+1;
			$data['total_pages']=$data['total']/$page_size;
			$data['total_pages']=$data['total_pages']<1?1:$data['total_pages'];
			
			if($data['total_pages']>(int)($data['total_pages'])){
				$data['total_pages']=(int)($data['total_pages'])+1;
			}
			
			$data['next_page']=false;
			$data['next_page_num']=$page+1;
			$data['prev_page']=true;
			$data['prev_page_num']=$page-1;
			
			if($data['total']>(($page+1) * $page_size)){
				$data['next_page']=true;
			}
			
			if($page==0){
				$data['prev_page']=false;
			}

			$data['district'] = $this->relinquishment->get_district();
			$data['taluk'] = $this->relinquishment->get_taluk();
		$this->load->view('includes/header');
		$this->load->view('relinquishment/index',$data);
		$this->load->view('includes/footer');
	  }else{
		redirect(base_url('login/'));
	  }
	}

	public function add()
	{
	  $cadet = $this->session->userdata('user');
		$data['user'] = $this->session->userdata('user');

	  if($cadet){
		$data['id'] = $cadet->id;
		if(!empty($this->input->post('col1')))
		{
			$photo_path = '';
			$pdf_path = '';
			
			if($_FILES["pdf"]["name"])
			{
				$upload_folder = "pdf/PDF/succession";
				$newfilename = $_FILES["pdf"]["name"];
				$extension  = pathinfo( $_FILES["pdf"]["name"], PATHINFO_EXTENSION );
				$basename = $newfilename . "." . $extension;
				$path = $upload_folder."{$basename}";
				if(move_uploaded_file($_FILES["pdf"]["tmp_name"], $path))
				{
					$pdf_path = $basename;
				}
			}

			$addparams['col1'] = $this->input->post('col1');
		    $addparams['col2'] = $this->input->post('col2');
		    $addparams['col3'] = $this->input->post('col3');
		    $addparams['col4'] = implode(',', $this->input->post('col4'));
		    $addparams['col5'] = implode(',', $this->input->post('col5'));
		    $addparams['col6'] = $this->input->post('col6');
		    // $addparams['col7'] = $this->input->post('col7');
		    $addparams['col8'] = implode(',', $this->input->post('col8'));
		    $addparams['col9'] = implode(',', $this->input->post('col9'));
		    $addparams['col10'] = $this->input->post('col10');
		    $addparams['col11'] = $this->input->post('col11');
			$addparams['col12'] = $pdf_path;
		    $addparams['center'] = $data['user']->role=="SuperAdmin"?$this->input->post('center'):$data['user']->center;
		   
		
		    $data = $this->relinquishment->add($addparams);
			if($data)
		    {
			    $this->session->set_flashdata('success','Successfully submitted');
			    redirect(base_url('relinquishment/index'));
		    }else{
			    $this->session->set_flashdata('failed','Failed to submit, Please try again!');
			    redirect(base_url('relinquishment/index'));
		    }

		}else{
			$data['district'] = $this->relinquishment->get_district();
			$data['taluk'] = $this->relinquishment->get_taluk();
			$this->load->view('includes/header');
		    $this->load->view('relinquishment/add',$data);
		    $this->load->view('includes/footer');
		}
	  }else{
		redirect(base_url('login/'));
	  }
	}

	public function edit($id)
	{
		$view_params['id'] = $id;
		$data['user'] = $this->session->userdata('user');

		if(!empty($this->input->post('col1')))
		{
			$photo_path = '';
			$pdf_path = '';
			if($_FILES["pdf"]["name"])
			{
				$upload_folder = "pdf/PDF/succession";
				$newfilename = $_FILES["pdf"]["name"];
				$extension  = pathinfo( $_FILES["pdf"]["name"], PATHINFO_EXTENSION );
				$basename = $newfilename . "." . $extension;
				$path = $upload_folder."{$basename}";
				if(move_uploaded_file($_FILES["pdf"]["tmp_name"], $path))
				{
					$pdf_path = $basename;
				}
			}

			// print_r($pdf_path);die;

			$addparams['id'] = $id;
			$addparams['col1'] = $this->input->post('col1');
		    $addparams['col2'] = $this->input->post('col2');
		    $addparams['col3'] = $this->input->post('col3');
		    $addparams['col4'] = implode(',', $this->input->post('col4'));
		    $addparams['col5'] = implode(',', $this->input->post('col5'));
		    $addparams['col6'] = $this->input->post('col6');
		    // $addparams['col7'] = $this->input->post('col7');
		    $addparams['col8'] = implode(',', $this->input->post('col8'));
		    $addparams['col9'] = implode(',', $this->input->post('col9'));
		    $addparams['col10'] = $this->input->post('col10');
		    $addparams['col11'] = $this->input->post('col11');
			$addparams['col12'] = $pdf_path;
		    $addparams['center'] = $data['user']->role=="SuperAdmin"?$this->input->post('center'):$data['user']->center;

		
		    $data = $this->relinquishment->edit($addparams);
			if($data)
		    {
			    $this->session->set_flashdata('success','Successfully submitted');
			    redirect(base_url('relinquishment/index'));
		    }else{
			    $this->session->set_flashdata('failed','Failed to submit, Please try again!');
				redirect(base_url('relinquishment/index'));

		    }

		}else{
		   $cadet = $this->relinquishment->view($view_params);
		//    print_r($cadet);die;
		   $data['id'] = $id;
		   $data['cadet'] = $cadet;

		   $data['district'] = $this->relinquishment->get_district();
			$data['taluk'] = $this->relinquishment->get_taluk();
		   if(!empty($cadet->col2))
		   {
			
				$this->load->view('includes/header');
		        $this->load->view('relinquishment/edit',$data);
		        $this->load->view('includes/footer');
			
		  }else{
			$this->session->set_flashdata('failed','Record Not Found!');
			redirect(base_url('login/'));
		  }
	    }
		

	}

	public function delete($id)
	{
		if($id){
			$id_arr = explode(",",$id);
			$success=0;
			$failed=0;
			foreach($id_arr as $data){
			    $addparams['id'] = $data;
		        $data = $this->relinquishment->delete($addparams);
				if($data)
				{
					$success=$success+1;
				}else{
					$failed=$failed+1;
				}
			}
			if($data)
		    {
			    $this->session->set_flashdata('success','Successfully deleted '.$success.' Failed counts '.$failed);
			    redirect(base_url('relinquishment/index'));
		    }else{
			    $this->session->set_flashdata('failed','Failed to delete, Please try again!');
				redirect(base_url('relinquishment/index'));

		    }
		}else{
			$this->session->set_flashdata('failed','Failed to delete, Please try again!');
			redirect(base_url('relinquishment/index'));

		}
	}
}
