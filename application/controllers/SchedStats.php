<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class SchedStats extends CORE_Controller
{

    function __construct() {
        parent::__construct('');

        $this->validate_session();
        if($this->session->userdata('right_schedstat_view') == 0 || $this->session->userdata('right_schedstat_view') == null) {
            redirect('../Dashboard');
        }
        $this->load->model('Employee_model');
        $this->load->model('SchedEmployee_model');




    }

    public function index() {
        $data['_def_css_files'] = $this->load->view('template/assets/css_files', '', TRUE);
        $data['_def_js_files'] = $this->load->view('template/assets/js_files', '', TRUE);
        $data['_switcher_settings'] = $this->load->view('template/elements/switcher', '', TRUE);
        $data['_side_bar_navigation'] = $this->load->view('template/elements/side_bar_navigation', '', TRUE);
        $data['_top_navigation'] = $this->load->view('template/elements/top_navigation', '', TRUE);
        $data['_rights'] = $this->load->view('template/elements/rights', '', TRUE);
        $data['loader'] = $this->load->view('template/elements/loader', '', TRUE);
        $data['loaderscript'] = $this->load->view('template/elements/loaderscript', '', TRUE);
        $data['employee_list']=$this->Employee_model->get_list(array('employee_list.is_deleted'=>FALSE),'employee_list.*,CONCAT(employee_list.first_name," ",middle_name," ",employee_list.last_name) as full_name');
        $data['title'] = 'Employee Schedule Statistics';

        $this->load->view('sched_stats_view', $data);
    }











}
