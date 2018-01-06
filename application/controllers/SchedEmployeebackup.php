<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class SchedEmployee extends CORE_Controller
{

    function __construct() {
        parent::__construct('');
        $this->validate_session();
        if($this->session->userdata('right_employee_schedule_view') == 0 || $this->session->userdata('right_employee_schedule_view') == null) {
            redirect('../Dashboard');
        }
        $this->load->model('Employee_model');
        $this->load->model('SchedEmployee_model');
        $this->load->model('RefSchedPay_model');
        $this->load->model('SchedRefShift_model');
        $this->load->model('RefPayPeriod_model');



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

        $this->load->view('sched_employee_view', $data);
    }

    function transaction($txn = null) {
         function sum_the_time($time_in, $advance_in_out) {
              $times = array($time_in, $advance_in_out);
              $seconds = 0;
              foreach ($times as $time)
              {
                list($hour,$minute,$second) = explode(':', $time);
                $seconds += $hour*3600;
                $seconds += $minute*60;
                $seconds += $second;
              }
              $hours = floor($seconds/3600);
              $seconds -= $hours*3600;
              $minutes  = floor($seconds/60);
              $seconds -= $minutes*60;
              if($seconds < 9)
              {
              $seconds = "0".$seconds;
              }
              if($minutes < 9)
              {
              $minutes = "0".$minutes;
              }
                if($hours < 9)
              {
              $hours = "0".$hours;
              }
              return "{$hours}:{$minutes}:{$seconds}";
        }
        switch ($txn) {
            case 'list':
                $employee_id = ($this->input->post('employee_id', TRUE) == null || $this->input->post('employee_id', TRUE) == "" ) ? 0 : $this->input->post('employee_id', TRUE);
                $pay_period_id = ($this->input->post('pay_period_id', TRUE) == null || $this->input->post('pay_period_id', TRUE) == "" ) ? 0 : $this->input->post('pay_period_id', TRUE);
                $response['data']=$this->SchedEmployee_model->get_list(
                    'schedule_employee.is_deleted=0 AND schedule_employee.employee_id='.$employee_id.' AND schedule_employee.pay_period_id='.$pay_period_id.' ',
                    'schedule_employee.*,sched_refpay.schedpay,sched_refshift.shift,CONCAT(employee_list.first_name," ",employee_list.middle_name," ",employee_list.last_name) as full_name',
                    array(
                        array('sched_refpay','sched_refpay.sched_refpay_id=schedule_employee.sched_refpay_id','left'),
                        array('sched_refshift','sched_refshift.sched_refshift_id=schedule_employee.sched_refshift_id','left'),
                        array('employee_list','employee_list.employee_id=schedule_employee.employee_id','left'),
                        ),
                    'schedule_employee.date DESC'
                    );
                echo json_encode($response);
                break;

            case 'create':

                $m_schedule = $this->SchedEmployee_model;
                $this->load->library('form_validation');
                $this->load->helper('security');
                $this->form_validation->set_rules('employee_id', 'Employee', 'strip_tags|xss_clean|required');
                $this->form_validation->set_rules('pay_period_id', 'Pay Period', 'strip_tags|xss_clean|required');
                $this->form_validation->set_rules('sched_refshift_id', 'Shift', 'strip_tags|xss_clean|required');
                $this->form_validation->set_rules('time_in', 'Time In', 'strip_tags|xss_clean|required');
                $this->form_validation->set_rules('time_out', 'Time Out', 'strip_tags|xss_clean|required');

                $employee_id = $this->input->post('employee_id', TRUE);
                $pay_period_id = $this->input->post('pay_period_id', TRUE);
                $advance_in_out = $this->input->post('advance_in_out', TRUE);
                $time_in = $this->input->post('time_in', TRUE);
                $time_out = $this->input->post('time_out', TRUE);
                $break_time = $this->input->post('break_time', TRUE);
                $date = date("Y-m-d", strtotime($this->input->post('date', TRUE)));
                $sched_refshift_id = $this->input->post('sched_refshift_id', TRUE);

                if ($this->form_validation->run() == TRUE)
                {
                    $ifschedoverlaps=$this->SchedEmployee_model->ifschedoverlaps($employee_id,$pay_period_id,$date,$time_in,$time_out);
                    /*echo json_encode($ifschedoverlaps);*/
                    if(count($ifschedoverlaps)>0){
                        $response['title']='Notice';
                        $response['stat']='warning';
                        $response['msg']='Sorry, Date or time overlaps';


                    }
                    else{

                        $checkshiftexist=$this->SchedEmployee_model->checkshiftexist($employee_id,$pay_period_id,$date,$time_in,$time_out,$sched_refshift_id);
                        if(count($checkshiftexist)>0){
                            $response['title']='Notice';
                            $response['stat']='warning';
                            $response['msg']='Sorry, The Chosen Shifting for this date is already exist';
                        }
                        if(count($checkshiftexist)==0){
                            /*echo $count($checkshiftexist);*/
                            $m_schedule->employee_id = $this->input->post('employee_id', TRUE);
                            $m_schedule->pay_period_id = $this->input->post('pay_period_id', TRUE);
                            $m_schedule->sched_refshift_id = $this->input->post('sched_refshift_id', TRUE);
                            $m_schedule->sched_refpay_id = $this->input->post('sched_refpay_id', TRUE);
                            $m_schedule->day = $this->input->post('day', TRUE);
                            $m_schedule->date = date("Y-m-d", strtotime($this->input->post('date', TRUE)));
                            $m_schedule->advance_in_out = $this->input->post('advance_in_out', TRUE);
                            $m_schedule->time_in = $this->input->post('time_in', TRUE);
                            $m_schedule->time_out = $this->input->post('time_out', TRUE);
                            $m_schedule->break_time = $this->input->post('break_time', TRUE);
                           /* $m_schedule->total = $this->input->post('total', TRUE);*/
                            $m_schedule->created_by = $this->session->user_id;
                            $m_schedule->date_created = date("Y-m-d H:i:s");
                            $time_in = new DateTime($time_in);
                            $time_out = new DateTime($time_out);

                            /*$sumtime = sum_the_time($time_in,$advance_in_out);
                            $sum= new DateTime($sumtime);*/
                            $difference = $time_in ->diff($time_out );

                            $total_hours = $difference ->format('%H.%i');
                            $total_hours = new DateTime($total_hours);
                            $break_time = new DateTime($break_time);
                            $total_attending_hours = $total_hours ->diff($break_time );
                            $total_attending_hours = $total_attending_hours ->format('%H.%i');
                            $m_schedule->total = $total_attending_hours;
                            $m_schedule->save();

                            $schedule_employee_id = $m_schedule->last_insert_id();
                            $response['title'] = 'Success!';
                            $response['stat'] = 'success';
                            $response['msg'] = 'Employee Schedule successfully created.';
                        }

                    }


                    /*$response['row_added'] = $this->SchedEmployee_model->get_list($schedule_employee_id);*/
               }
                else
                {
                    $response['title'] = 'Error!';
                    $response['stat'] = 'error';
                    $response['msg'] = validation_errors();

                }
                echo json_encode($response);
            break;

            case 'delete':
                $m_schedule=$this->SchedEmployee_model;

                $schedule_employee_id=$this->input->post('schedule_employee_id',TRUE);

                $m_schedule->is_deleted=1;
                $m_schedule->date_deleted = date("Y-m-d H:i:s");
                $m_schedule->deleted_by = $this->session->user_id;
                if($m_schedule->modify($schedule_employee_id)){
                $response['title']='Success!';
                $response['stat']='success';
                $response['msg']='Department Reference successfully Deleted.';
                }
                echo json_encode($response);

                break;

            case 'update':
                $m_schedule=$this->SchedEmployee_model;
                $this->load->library('form_validation');
                $this->load->helper('security');
                $this->form_validation->set_rules('employee_id', 'Employee', 'strip_tags|xss_clean|required');
                $this->form_validation->set_rules('pay_period_id', 'Pay Period', 'strip_tags|xss_clean|required');
                $this->form_validation->set_rules('sched_refshift_id', 'Shift', 'strip_tags|xss_clean|required');
                $this->form_validation->set_rules('time_in', 'Time In', 'strip_tags|xss_clean|required');
                $this->form_validation->set_rules('time_out', 'Time Out', 'strip_tags|xss_clean|required');
                /*$this->form_validation->set_rules('total', 'Total', 'strip_tags|xss_clean|required');     */

                $schedule_employee_id=$this->input->post('schedule_employee_id',TRUE);

                $employee_id = $this->input->post('employee_id', TRUE);
                $pay_period_id = $this->input->post('pay_period_id', TRUE);
                $advance_in_out = $this->input->post('advance_in_out', TRUE);
                $time_in = $this->input->post('time_in', TRUE);
                $time_out = $this->input->post('time_out', TRUE);
                $break_time = $this->input->post('break_time', TRUE);
                $date = date("Y-m-d", strtotime($this->input->post('date', TRUE)));
                $sched_refshift_id = $this->input->post('sched_refshift_id', TRUE);
                if ($this->form_validation->run() == TRUE)
                {
                    $ifschedoverlaps=$this->SchedEmployee_model->ifschedoverlaps($employee_id,$pay_period_id,$date,$time_in,$time_out);
                    /*echo json_encode($ifschedoverlaps);*/
                    if(count($ifschedoverlaps)>0){
                        if($time_in >= $ifschedoverlaps[0]->time_in && $time_in <= $ifschedoverlaps[0]->time_out){
                            if($ifschedoverlaps[0]->sched_refshift_id==$sched_refshift_id){
                                    $m_schedule->employee_id = $this->input->post('employee_id', TRUE);
                                    $m_schedule->pay_period_id = $this->input->post('pay_period_id', TRUE);
                                    $m_schedule->sched_refshift_id = $this->input->post('sched_refshift_id', TRUE);
                                    $m_schedule->sched_refpay_id = $this->input->post('sched_refpay_id', TRUE);
                                    $m_schedule->day = $this->input->post('day', TRUE);
                                    $m_schedule->date = date("Y-m-d", strtotime($this->input->post('date', TRUE)));
                                    $m_schedule->advance_in_out = $this->input->post('advance_in_out', TRUE);
                                    $m_schedule->time_in = $this->input->post('time_in', TRUE);
                                    $m_schedule->time_out = $this->input->post('time_out', TRUE);
                                    $m_schedule->break_time = $this->input->post('break_time', TRUE);
                                   /* $m_schedule->total = $this->input->post('total', TRUE);*/
                                    $m_schedule->created_by = $this->session->user_id;
                                    $m_schedule->date_created = date("Y-m-d H:i:s");
                                    $time_in = new DateTime($time_in);
                                    $time_out = new DateTime($time_out);

                                    /*$sumtime = sum_the_time($time_in,$advance_in_out);
                                    $sum= new DateTime($sumtime);*/
                                    $difference = $time_in ->diff($time_out );

                                    $total_hours = $difference ->format('%H.%i');
                                    $total_hours = new DateTime($total_hours);
                                    $break_time = new DateTime($break_time);
                                    $total_attending_hours = $total_hours ->diff($break_time );
                                    $total_attending_hours = $total_attending_hours ->format('%H.%i');
                                    $m_schedule->total = $total_attending_hours;
                                    /*echo $return_time;*/
                                    $m_schedule->modify($schedule_employee_id);

                                    $response['title']='Success';
                                    $response['stat']='success';
                                    $response['msg']='Employee Schedule successfully updated1.';
                                    /*$response['row_updated']=$this->SchedEmployee_model->get_list(
                                        $schedule_employee_id,
                                        'schedule_employee.*,sched_refpay.schedpay,sched_refshift.shift',
                                        array(
                                            array('sched_refpay','sched_refpay.sched_refpay_id=schedule_employee.sched_refpay_id','left'),
                                            array('sched_refshift','sched_refshift.sched_refshift_id=schedule_employee.sched_refshift_id','left'),
                                            ),
                                        'schedule_employee.day DESC'
                                        );*/
                            }
                            else{
                                $checkshiftexist=$this->SchedEmployee_model->checkshiftexist($employee_id,$pay_period_id,$date,$time_in,$time_out,$sched_refshift_id);
                                if(count($checkshiftexist)>0){
                                    $response['title']='Notice';
                                    $response['stat']='warning';
                                    $response['msg']='Sorry, The Chosen Shifting for this date is already exist1';
                                }
                                if(count($checkshiftexist)==0){
                                    /*echo $count($checkshiftexist);*/
                                    $m_schedule->employee_id = $this->input->post('employee_id', TRUE);
                                    $m_schedule->pay_period_id = $this->input->post('pay_period_id', TRUE);
                                    $m_schedule->sched_refshift_id = $this->input->post('sched_refshift_id', TRUE);
                                    $m_schedule->sched_refpay_id = $this->input->post('sched_refpay_id', TRUE);
                                    $m_schedule->day = $this->input->post('day', TRUE);
                                    $m_schedule->date = date("Y-m-d", strtotime($this->input->post('date', TRUE)));
                                    $m_schedule->advance_in_out = $this->input->post('advance_in_out', TRUE);
                                    $m_schedule->time_in = $this->input->post('time_in', TRUE);
                                    $m_schedule->time_out = $this->input->post('time_out', TRUE);
                                    $m_schedule->break_time = $this->input->post('break_time', TRUE);
                                   /* $m_schedule->total = $this->input->post('total', TRUE);*/
                                    $m_schedule->created_by = $this->session->user_id;
                                    $m_schedule->date_created = date("Y-m-d H:i:s");
                                    $time_in = new DateTime($time_in);
                                    $time_out = new DateTime($time_out);

                                    /*$sumtime = sum_the_time($time_in,$advance_in_out);
                                    $sum= new DateTime($sumtime);*/
                                    $difference = $time_in ->diff($time_out );

                                    $total_hours = $difference ->format('%H.%i');
                                    $total_hours = new DateTime($total_hours);
                                    $break_time = new DateTime($break_time);
                                    $total_attending_hours = $total_hours ->diff($break_time );
                                    $total_attending_hours = $total_attending_hours ->format('%H.%i');
                                    $m_schedule->total = $total_attending_hours;
                                    $m_schedule->modify($schedule_employee_id);

                                    $response['title']='Success';
                                    $response['stat']='success';
                                    $response['msg']='Employee Schedule successfully updated2.';
                                    /*$response['row_updated']=$this->SchedEmployee_model->get_list(
                                        $schedule_employee_id,
                                        'schedule_employee.*,sched_refpay.schedpay,sched_refshift.shift',
                                        array(
                                            array('sched_refpay','sched_refpay.sched_refpay_id=schedule_employee.sched_refpay_id','left'),
                                            array('sched_refshift','sched_refshift.sched_refshift_id=schedule_employee.sched_refshift_id','left'),
                                            ),
                                        'schedule_employee.day DESC'
                                        );*/
                                }
                            }

                        }
                        else{
                            $checkshiftexist=$this->SchedEmployee_model->checkshiftexist($employee_id,$pay_period_id,$date,$time_in,$time_out,$sched_refshift_id);
                            if(count($checkshiftexist)>0){

                                if($checkshiftexist[0]->sched_refshift_id==$sched_refshift_id){
                                    $m_schedule->employee_id = $this->input->post('employee_id', TRUE);
                                    $m_schedule->pay_period_id = $this->input->post('pay_period_id', TRUE);
                                    $m_schedule->sched_refshift_id = $this->input->post('sched_refshift_id', TRUE);
                                    $m_schedule->sched_refpay_id = $this->input->post('sched_refpay_id', TRUE);
                                    $m_schedule->day = $this->input->post('day', TRUE);
                                    $m_schedule->date = date("Y-m-d", strtotime($this->input->post('date', TRUE)));
                                    $m_schedule->advance_in_out = $this->input->post('advance_in_out', TRUE);
                                    $m_schedule->time_in = $this->input->post('time_in', TRUE);
                                    $m_schedule->time_out = $this->input->post('time_out', TRUE);
                                    $m_schedule->break_time = $this->input->post('break_time', TRUE);
                                   /* $m_schedule->total = $this->input->post('total', TRUE);*/
                                    $m_schedule->created_by = $this->session->user_id;
                                    $m_schedule->date_created = date("Y-m-d H:i:s");
                                    $time_in = new DateTime($time_in);
                                    $time_out = new DateTime($time_out);

                                    /*$sumtime = sum_the_time($time_in,$advance_in_out);
                                    $sum= new DateTime($sumtime);*/
                                    $difference = $time_in ->diff($time_out );

                                    $total_hours = $difference ->format('%H.%i');
                                    $total_hours = new DateTime($total_hours);
                                    $break_time = new DateTime($break_time);
                                    $total_attending_hours = $total_hours ->diff($break_time );
                                    $total_attending_hours = $total_attending_hours ->format('%H.%i');
                                    $m_schedule->total = $total_attending_hours;
                                    $m_schedule->modify($schedule_employee_id);

                                    $response['title']='Success';
                                    $response['stat']='success';
                                    $response['msg']='Employee Schedule successfully updated.';
                                }
                                else{
                                    $response['title']='Notice';
                                    $response['stat']='warning';
                                    $response['msg']='Sorry, The Chosen Shifting for this date is already exist';
                                }
                            }
                            if(count($checkshiftexist)==0){
                                /*echo $count($checkshiftexist);*/
                                $m_schedule->employee_id = $this->input->post('employee_id', TRUE);
                                $m_schedule->pay_period_id = $this->input->post('pay_period_id', TRUE);
                                $m_schedule->sched_refshift_id = $this->input->post('sched_refshift_id', TRUE);
                                $m_schedule->sched_refpay_id = $this->input->post('sched_refpay_id', TRUE);
                                $m_schedule->day = $this->input->post('day', TRUE);
                                $m_schedule->date = date("Y-m-d", strtotime($this->input->post('date', TRUE)));
                                $m_schedule->advance_in_out = $this->input->post('advance_in_out', TRUE);
                                $m_schedule->time_in = $this->input->post('time_in', TRUE);
                                $m_schedule->time_out = $this->input->post('time_out', TRUE);
                                $m_schedule->break_time = $this->input->post('break_time', TRUE);
                               /* $m_schedule->total = $this->input->post('total', TRUE);*/
                                $m_schedule->created_by = $this->session->user_id;
                                $m_schedule->date_created = date("Y-m-d H:i:s");
                                $time_in = new DateTime($time_in);
                                $time_out = new DateTime($time_out);

                                /*$sumtime = sum_the_time($time_in,$advance_in_out);
                                $sum= new DateTime($sumtime);*/
                                $difference = $time_in ->diff($time_out );

                                $total_hours = $difference ->format('%H.%i');
                                $total_hours = new DateTime($total_hours);
                                $break_time = new DateTime($break_time);
                                $total_attending_hours = $total_hours ->diff($break_time );
                                $total_attending_hours = $total_attending_hours ->format('%H.%i');
                                $m_schedule->total = $total_attending_hours;
                                $m_schedule->modify($schedule_employee_id);

                                $response['title']='Success';
                                $response['stat']='success';
                                $response['msg']='Employee Schedule successfully updated.';
                                /*$response['row_updated']=$this->SchedEmployee_model->get_list(
                                    $schedule_employee_id,
                                    'schedule_employee.*,sched_refpay.schedpay,sched_refshift.shift',
                                    array(
                                        array('sched_refpay','sched_refpay.sched_refpay_id=schedule_employee.sched_refpay_id','left'),
                                        array('sched_refshift','sched_refshift.sched_refshift_id=schedule_employee.sched_refshift_id','left'),
                                        ),
                                    'schedule_employee.day DESC'
                                    );*/
                            }

                        }

                       /* $response['title']='Notice';
                        $response['stat']='warning';
                        $response['msg']='Sorry, Date or time overlaps';*/


                    }
                    else{
                        $m_schedule->employee_id = $this->input->post('employee_id', TRUE);
                        $m_schedule->pay_period_id = $this->input->post('pay_period_id', TRUE);
                        $m_schedule->sched_refshift_id = $this->input->post('sched_refshift_id', TRUE);
                        $m_schedule->sched_refpay_id = $this->input->post('sched_refpay_id', TRUE);
                        $m_schedule->day = $this->input->post('day', TRUE);
                        $m_schedule->date = date("Y-m-d", strtotime($this->input->post('date', TRUE)));
                        $m_schedule->advance_in_out = $this->input->post('advance_in_out', TRUE);
                        $m_schedule->time_in = $this->input->post('time_in', TRUE);
                        $m_schedule->time_out = $this->input->post('time_out', TRUE);
                        $m_schedule->break_time = $this->input->post('break_time', TRUE);
                       /* $m_schedule->total = $this->input->post('total', TRUE);*/
                        $m_schedule->created_by = $this->session->user_id;
                        $m_schedule->date_created = date("Y-m-d H:i:s");
                        $time_in = new DateTime($time_in);
                        $time_out = new DateTime($time_out);

                        /*$sumtime = sum_the_time($time_in,$advance_in_out);
                        $sum= new DateTime($sumtime);*/
                        $difference = $time_in ->diff($time_out );

                        $total_hours = $difference ->format('%H.%i');
                        $total_hours = new DateTime($total_hours);
                        $break_time = new DateTime($break_time);
                        $total_attending_hours = $total_hours ->diff($break_time );
                        $total_attending_hours = $total_attending_hours ->format('%H.%i');
                        $m_schedule->total = $total_attending_hours;
                        /*echo $return_time;*/
                        $m_schedule->modify($schedule_employee_id);

                        $response['title']='Success';
                        $response['stat']='success';
                        $response['msg']='Employee Schedule successfully updated.';
                    }
                    /*$response="yes";*/


                    /*$response['row_added'] = $this->SchedEmployee_model->get_list($schedule_employee_id);*/
               }
                else
                {
                    $response['title'] = 'Error!';
                    $response['stat'] = 'error';
                    $response['msg'] = validation_errors();

                }
                echo json_encode($response);
            break;

            case 'manualinout':
            $m_schedule=$this->SchedEmployee_model;
              $schedule_employee_id = $this->input->post('schedule_employee_id', TRUE);
              $clock_in = $this->input->post('clock_in', TRUE);
              $clock_out = $this->input->post('clock_out', TRUE);
              if($clock_in!=null){
                $m_schedule->clock_in = $clock_in;
                $m_schedule->is_in = 1;
              }
              if($clock_out!=null){
                $m_schedule->clock_out = $clock_out;
                $m_schedule->is_out = 1;
              }
              $m_schedule->modify($schedule_employee_id);
              $schedemployee_manual=$this->SchedEmployee_model->get_list('schedule_employee.schedule_employee_id='.$schedule_employee_id);
              $is_in = $schedemployee_manual[0]->is_in;
              $is_out = $schedemployee_manual[0]->is_out;
              $break_time = $schedemployee_manual[0]->break_time;
              $clock_in = $schedemployee_manual[0]->clock_in;
              $clock_out = $schedemployee_manual[0]->clock_out;
              $sched_hours = $schedemployee_manual[0]->total;
              $time_out = $schedemployee_manual[0]->time_out;


              $start_t = new DateTime($clock_in);
              $current_t = new DateTime($clock_out);
              $difference = $start_t ->diff($current_t );
              $return_time = $difference ->format('%H.%i');
              $total_hours_attended = $return_time-$break_time;//1 is 1 hour lunch break nvm
              /*echo $total_hours_attended;*/
              $hours_percentage = ($total_hours_attended/$sched_hours)*100;//total hours
              $hours_percentage = ($hours_percentage > 100 ? '100' : $hours_percentage);
              $hours_percentage = ($hours_percentage < 0 ? '0' : $hours_percentage);
              $m_schedule->stat_completion = $hours_percentage;
              $m_schedule->modify($schedule_employee_id);
              // echo $hours_percentage;
              // $m_schedule->modify($schedule_employee_id);
              $response['title']='Success';
              $response['stat']='success';
              $response['msg']='Manual Employee Time IN/OUT  Successful .';
              echo json_encode($response);
            break;

            case 'timein':
                $m_schedule=$this->SchedEmployee_model;
                $employee_code = '"'.$this->input->post('employee_code', TRUE).'"';
                $response['employee_list']=$this->Employee_model->get_list(
                    'employee_list.is_deleted=0 AND ecode='.$employee_code,
                    'employee_list.employee_id,employee_list.ecode,employee_list.image_name,CONCAT(employee_list.first_name," ",middle_name," ",employee_list.last_name) as full_name,
                    ref_department.department,ref_position.position,ref_branch.branch',
                    array(
                        array('emp_rates_duties','emp_rates_duties.emp_rates_duties_id=employee_list.emp_rates_duties_id','left'),
                        array('ref_department','ref_department.ref_department_id=emp_rates_duties.ref_department_id','left'),
                        array('ref_position','ref_position.ref_position_id=emp_rates_duties.ref_position_id','left'),
                        array('ref_branch','ref_branch.ref_branch_id=emp_rates_duties.ref_branch_id','left'),
                        )
                );

                $date = date("Y-m-d");
                $time = date("H:i:s");

                if(count($response['employee_list'])!=0){
                    $employee_id = $response['employee_list'][0]->employee_id;
                    $response['period_stats']=$this->SchedEmployee_model->get_period_sched($employee_id,$date);
                }
                else{
                    $response['title']='Notice';
                    $response['stat']='error';
                    $response['msg']='Employee not found!';
                    echo json_encode($response);
                    exit();
                }

                $pay_period_id_Temp=$this->SchedEmployee_model->get_pay_period($date);
                if(count($pay_period_id_Temp)!=0){
                    $pay_period_id = $pay_period_id_Temp[0]->pay_period_id;
                }
                else{
                    $response['title']='Notice';
                    $response['stat']='warning';
                    $response['msg']='Pay Period not found, Check the Pay Period.';
                    echo json_encode($response);
                    exit();
                }



                $schedule_employee_id_temp=$this->SchedEmployee_model->get_schedule_id($employee_id,$pay_period_id,$date,$time);

                if(count($schedule_employee_id_temp)!=0){
                    $schedule_employee_id = $schedule_employee_id_temp[0]->schedule_employee_id;
                    $is_in = $schedule_employee_id_temp[0]->is_in;
                    $is_out = $schedule_employee_id_temp[0]->is_out;
                    $break_time = $schedule_employee_id_temp[0]->break_time;
                    $clock_in = $schedule_employee_id_temp[0]->clock_in;
                    $sched_hours = $schedule_employee_id_temp[0]->total;
                    $time_out = $schedule_employee_id_temp[0]->time_out;
                    //period stat goes here
                    /*$response['period_stats']=$this->SchedEmployee_model->get_period_sched($employee_id);*/
                }
                else{
                    $response['title']='Notice';
                    $response['stat']='warning';
                    $response['msg']='Sorry, You do not have Time schedule today';
                    echo json_encode($response);
                    exit();
                }
                if($is_in==0){
                    $m_schedule->is_in=1;
                    $m_schedule->clock_in = date("H:i:s");
                    $state="In";
                }
                if($is_in==1 && $is_out==0){
                    $m_schedule->is_out=1;
                    $m_schedule->clock_out = date("H:i:s");
                    $state="Out";

                        $start_t = new DateTime($clock_in);
                        $current_t = new DateTime(date("H:i:s"));
                        $difference = $start_t ->diff($current_t );
                        $return_time = $difference ->format('%H.%i');
                        $total_hours_attended = $return_time-$break_time;//1 is 1 hour lunch break nvm
                        /*echo $total_hours_attended;*/
                        $hours_percentage = ($total_hours_attended/$sched_hours)*100;//total hours
                        $hours_percentage = ($hours_percentage > 100 ? '100' : $hours_percentage);
                        $hours_percentage = ($hours_percentage < 0 ? '0' : $hours_percentage);
                     $m_schedule->stat_completion = $hours_percentage;
                }
                if($is_in==1 && $is_out==1){
                    $response['title']='Notice';
                    $response['stat']='warning';
                    $response['msg']='Sorry, You already clocked out for this day.';
                    $clock = $this->SchedEmployee_model->get_list(
                    $schedule_employee_id,
                        'schedule_employee.clock_in,schedule_employee.clock_out,schedule_employee.is_in,schedule_employee.is_out'
                    );
                    $response['clock_in'] = date("h:iA", strtotime($clock[0]->clock_in));
                    $response['clock_out'] = date("h:iA", strtotime($clock[0]->clock_out));
                    echo json_encode($response);
                    exit();
                }
                $m_schedule->modify($schedule_employee_id);

                $response['title']='Success';
                $response['stat']='success';
                $response['msg']='Employee Time '.$state.' Successful.';
                $clock = $this->SchedEmployee_model->get_list(
                    $schedule_employee_id,
                    'schedule_employee.clock_in,schedule_employee.clock_out,schedule_employee.is_in,schedule_employee.is_out'
                );
                $response['clock_in'] = date("h:iA", strtotime($clock[0]->clock_in));
                $response['period_stats']=$this->SchedEmployee_model->get_period_sched($employee_id,$date);
                $response['is_out'] = $clock[0]->is_out;
                if($clock[0]->is_out!=0){
                    $response['clock_out'] = date("h:iA", strtotime($clock[0]->clock_out));
                }
                else{
                    $response['clock_out'] = 'notset';
                }
                echo json_encode($response);
            break;

            case 'schedstats':
                $m_schedule=$this->SchedEmployee_model;
                $employee_code = '"'.$this->input->post('employee_code', TRUE).'"';
                $response['employee_list']=$this->Employee_model->get_list(
                    'employee_list.is_deleted=0 AND ecode='.$employee_code,
                    'employee_list.employee_id,employee_list.ecode,employee_list.image_name,CONCAT(employee_list.first_name," ",middle_name," ",employee_list.last_name) as full_name,
                    ref_department.department,ref_position.position,ref_branch.branch',
                    array(
                        array('emp_rates_duties','emp_rates_duties.emp_rates_duties_id=employee_list.emp_rates_duties_id','left'),
                        array('ref_department','ref_department.ref_department_id=emp_rates_duties.ref_department_id','left'),
                        array('ref_position','ref_position.ref_position_id=emp_rates_duties.ref_position_id','left'),
                        array('ref_branch','ref_branch.ref_branch_id=emp_rates_duties.ref_branch_id','left'),
                        )
                );

                $date = date("Y-m-d");
                $time = date("H:i:s");

                if(count($response['employee_list'])!=0){
                    $employee_id = $response['employee_list'][0]->employee_id;
                    $response['period_stats']=$this->SchedEmployee_model->get_period_sched($employee_id,$date);
                }
                else{
                    $response['title']='Notice';
                    $response['stat']='error';
                    $response['msg']='Employee not found!';
                    echo json_encode($response);
                    exit();
                }

                $pay_period_id_Temp=$this->SchedEmployee_model->get_pay_period($date);
                if(count($pay_period_id_Temp)!=0){
                    $pay_period_id = $pay_period_id_Temp[0]->pay_period_id;
                }
                else{
                    $response['title']='Notice';
                    $response['stat']='warning';
                    $response['msg']='You do not have schedule for this Pay Period.';
                    echo json_encode($response);
                    exit();
                }



                $schedule_employee_id_temp=$this->SchedEmployee_model->get_schedule_stat($employee_id,$pay_period_id);

                if(count($schedule_employee_id_temp)!=0){
                    $schedule_employee_id = $schedule_employee_id_temp[0]->schedule_employee_id;
                    /*$response['period_stats']=$this->SchedEmployee_model->get_period_sched($employee_id);*/
                }
                else{
                    $response['title']='Notice';
                    $response['stat']='warning';
                    $response['msg']='No Schedule Found';
                    echo json_encode($response);
                    exit();
                }

                $response['title']='Success';
                $response['stat']='success';
                $response['msg']='Employee Schedule Found.';
                $clock = $this->SchedEmployee_model->get_list(
                    $schedule_employee_id,
                    'schedule_employee.clock_in,schedule_employee.clock_out,schedule_employee.is_in,schedule_employee.is_out'
                );
                $response['clock_in'] = date("h:iA", strtotime($clock[0]->clock_in));
                $response['period_stats']=$this->SchedEmployee_model->get_period_sched($employee_id,$date);
                echo json_encode($response);
            break;

            case 'test' :
                $start_t = new DateTime('8:00:00');
                $current_t = new DateTime('17:00:00');
                $difference = $start_t ->diff($current_t );
                $return_time = $difference ->format('%H.%i');
                $total_hours_attended = $return_time - 1;//1 is 1 hour lunch break
                echo $hours_percentage = ($total_hours_attended/8)*100;//total hours
                /*echo $return_time;*/

            break;

        }
    }











}
