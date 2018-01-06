<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class SchedDTR extends CORE_Controller
{

    function __construct() {
        parent::__construct('');
        $this->validate_session();
        if($this->session->userdata('right_scheddtr_view') == 0 || $this->session->userdata('right_scheddtr_view') == null) {
            redirect('../Dashboard');
        }
        $this->load->model('Employee_model');
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
        $data['employee_list']=$this->Employee_model->get_list(
                    array('employee_list.is_deleted'=>FALSE),
                    'employee_list.*,CONCAT(employee_list.first_name," ",employee_list.middle_name," ",employee_list.last_name) as full_name
                    ,ref_branch.branch,ref_department.department',
                    array(
                        array('emp_rates_duties','emp_rates_duties.emp_rates_duties_id=employee_list.emp_rates_duties_id','left'),
                        array('ref_branch','ref_branch.ref_branch_id=emp_rates_duties.ref_branch_id','left'),
                        array('ref_department','ref_department.ref_department_id=emp_rates_duties.ref_department_id','left'),
                        ),
                   'full_name ASC'
                   /*true,
                   '4'*/
                    );
        $data['pay_period']=$this->RefPayPeriod_model->get_list(
            array('refpayperiod.is_deleted'=>FALSE),
            'refpayperiod.*',
            array(
            ),
        'refpayperiod.pay_period_start DESC'
        );
        $data['schedpay']=$this->RefSchedPay_model->get_list(array('sched_refpay.is_deleted'=>FALSE));
        $data['shift']=$this->SchedRefShift_model->get_list(array('sched_refshift.is_deleted'=>FALSE));
        $data['title'] = 'Employee Schedule';

        $this->load->view('sched_dtr_view', $data);
    }

    function transaction($txn = null) {
        switch ($txn) {

          case 'sched-dtr': //
                      $employee_id = $this->input->post('employee_id', TRUE);
                      $pay_period_id = $this->input->post('pay_period_id', TRUE);

                      $data['scheddtr']=$this->SchedDTR_model->getscheddtr($employee_id,$pay_period_id);
                      $data['company_setup']=$this->GeneralSettings_model->get_list();
                      echo $this->load->view('template/sched_dtr_html',$data,TRUE);

          break;

          // case 'sched-dtr-summary': //
          //             $employee_id = $this->input->post('employee_id', TRUE);
          //             $pay_period_id = $this->input->post('pay_period_id', TRUE);
          //             $data['period']=$this->RefPayPeriod_model->get_list(
          //               'refpayperiod.is_deleted=0 AND refpayperiod.pay_period_id='.$pay_period_id,
          //               'CONCAT(refpayperiod.pay_period_start,"-",refpayperiod.pay_period_end) as payperiod'
          //             );
          //             $pay_period_id=14;
          //             $data['scheddtrsummary']=$this->SchedDTR_model->getdtrsummary($pay_period_id);
          //             $data['company_setup']=$this->GeneralSettings_model->get_list();
          //             echo $this->load->view('template/scheddtr_summary_list',$data,TRUE);
          //
          // break;

        }
    }











}
