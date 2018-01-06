<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class SchedDTRSummary extends CORE_Controller
{

    function __construct() {
        parent::__construct('');
        $this->validate_session();
        if($this->session->userdata('right_scheddtrsummary_view') == 0 || $this->session->userdata('right_scheddtrsummary_view') == null) {
            redirect('../Dashboard');
        }
        $this->load->model('Employee_model');
        $this->load->model('RatesDuties_model');
        $this->load->model('RefDepartment_model');

        $this->load->model('SchedEmployee_model');
        $this->load->model('RefSchedPay_model');
        $this->load->model('SchedRefShift_model');
        $this->load->model('RefPayPeriod_model');
        $this->load->model('SchedDTR_model');
        $this->load->model('GeneralSettings_model');


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

        $data['pay_period']=$this->RefPayPeriod_model->get_list(
            array('refpayperiod.is_deleted'=>FALSE),
            'refpayperiod.*',
            array(
            ),
        'refpayperiod.pay_period_start DESC'
        );
        $data['title'] = 'Scheduling : DTR Summary';

        $this->load->view('sched_dtrsummary_view', $data);
    }

    function transaction($txn = null) {
        switch ($txn) {

          case 'sched-dtr-summary': //
                      $employee_id = $this->input->post('employee_id', TRUE);
                      $pay_period_id = $this->input->post('pay_period_id', TRUE);
                      $data['period']=$this->RefPayPeriod_model->get_list(
                        'refpayperiod.is_deleted=0 AND refpayperiod.pay_period_id='.$pay_period_id,
                        'CONCAT(refpayperiod.pay_period_start,"-",refpayperiod.pay_period_end) as payperiod'
                      );
                      $data['ref_department']=$this->RefDepartment_model->get_list(array('ref_department.is_deleted'=>FALSE),'ref_department_id,department',null,'ref_department_id ASC');
                      // echo json_encode($data['ref_department']);
                      // $pay_period_id=14;
                      $data['scheddtrsummary']=$this->SchedDTR_model->getdtrsummary($pay_period_id);
                      // echo json_encode($data['scheddtrsummary']);
                      $data['company_setup']=$this->GeneralSettings_model->get_list();
                      echo $this->load->view('template/scheddtr_summary_list',$data,TRUE);

          break;

        }
    }











}
