<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class EmployeeCompensation extends CORE_Controller
{

    function __construct() {
        parent::__construct('');
        $this->validate_session();
        // if($this->session->userdata('right_scheddtrdetailed_view') == 0 || $this->session->userdata('right_scheddtrdetailed_view') == null) {
        //     redirect('../Dashboard');
        // }
        $this->load->model('Employee_model');
        $this->load->model('SchedEmployee_model');
        $this->load->model('RefSchedPay_model');
        $this->load->model('SchedRefShift_model');
        $this->load->model('RefPayPeriod_model');
        $this->load->model('SchedDTR_model');

    }
    public function index() {
        $data['_def_css_files'] = $this->load->view('template/assets/css_files', '', TRUE);
        $data['_def_js_files'] = $this->load->view('template/assets/js_files', '', TRUE);
        $data['_switcher_settings'] = $this->load->view('template/elements/switcher', '', TRUE);
        $data['_side_bar_navigation'] = $this->load->view('template/elements/side_bar_navigation', '', TRUE);
        $data['_top_navigation'] = $this->load->view('template/elements/top_navigation', '', TRUE);
        $data['loader'] = $this->load->view('template/elements/loader', '', TRUE);
        $data['loaderscript'] = $this->load->view('template/elements/loaderscript', '', TRUE);
        $data['payperiod'] = $this->RefPayPeriod_model->get_list('refpayperiod.is_deleted=0','refpayperiod.*',null,'pay_period_start DESC');
        $data['employee'] = $this->Employee_model->get_list('
          employee_list.is_deleted=0 AND  emp_rates_duties.active_rates_duties=1',
          'employee_list.employee_id,CONCAT(employee_list.first_name," ",middle_name," ",employee_list.last_name) as full_name',
            array(
                array('emp_rates_duties','emp_rates_duties.employee_id=employee_list.employee_id','left'),
            ),
          'full_name ASC');
        $data['title'] = 'Employee Compensation History';

        $this->load->view('employee_compensation_view', $data);
    }


    function schedule($transaction=null,$filter_value=null,$filter_value2=null,$type=null){




        switch($transaction){

            case 'sched-dtr-detailed': //
                        $data['period_days']=$this->RefPayPeriod_model->get_list('pay_period_id='.$filter_value);

                        $data['employee_schedule']=$this->Employee_model->get_list(
                            'schedule_employee.pay_period_id=10',
                            'schedule_employee.sched_refshift_id,schedule_employee.date,CONCAT(employee_list.first_name," ",employee_list.middle_name," ",employee_list.last_name) as full_name
                            ,ref_branch.branch,ref_department.department',
                            array(
                                array('schedule_employee','schedule_employee.employee_id=employee_list.employee_id','left'),
                                array('emp_rates_duties','emp_rates_duties.emp_rates_duties_id=employee_list.emp_rates_duties_id','left'),
                                array('ref_branch','ref_branch.ref_branch_id=emp_rates_duties.ref_branch_id','left'),
                                array('ref_department','ref_department.ref_department_id=emp_rates_duties.ref_department_id','left'),
                                ),
                           'schedule_employee.date ASC'
                            );

                        /*$data['_pay_period']=$this->RefPayPeriod_model->get_list(
                            $filter_value,
                            'pay_period_start,pay_period_end'
                            );*/

                        $data['schedules'] = $this->SchedDTR_model->getscheddtrdetailed($filter_value,$filter_value2);
                        /*echo json_encode($test['data'][0]->data_serial);*/


                        /*echo json_encode($arr);*/
                        /*echo json_encode($data['employee_schedule']);*/

                        if($type=='fullview'||$type==null){
                            echo $this->load->view('template/scheddtrdetailed_view',$data,TRUE);
                            //echo $this->load->view('template/dr_content_menus',$data,TRUE);
                        }

                        //show only inside grid without menu button
                        if($type=='contentview'){
                            echo $this->load->view('template/scheddtrdetailed_view',$data,TRUE);
                        }


            break;

        }


    }


}
