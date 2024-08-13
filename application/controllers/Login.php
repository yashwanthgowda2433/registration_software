<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {

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
	public function index()
	{
		$cadet = $this->session->userdata('user');
		// print_r($cadet);die;
		if($cadet){
			redirect(base_url('student/index'));
		}else{
		    $this->load->view('includes/header');
		    $this->load->view('login');
		    $this->load->view('includes/footer');
		}

	}


	public function logout()
	{
		$this->session->sess_destroy();
		redirect(base_url());
	}
}
