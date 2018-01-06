<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class SchedTemplate extends CORE_Controller
{

    function __construct() {
        parent::__construct('');
        $this->validate_session();
        $this->load->model('Employee_model');
        $this->load->model('SchedTemplate_model');
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
        $data['title'] = 'Employee Schedule';

    }

    function transaction($txn = null) {
        switch ($txn) {
            case 'list':
                $response['data']=$this->SchedTemplate_model->get_list(
                    'schedule_template.is_deleted=0');
                echo json_encode($response);
                break;

            case 'create':

                $m_schedule_template = $this->SchedTemplate_model;

                $m_schedule_template->schedule_template_name = $this->input->post('schedule_template_name', TRUE);
                $m_schedule_template->schedule_template_advance_in_out = $this->input->post('schedule_template_advance_in_out', TRUE);
                $m_schedule_template->schedule_template_timein = $this->input->post('schedule_template_timein', TRUE);
                $m_schedule_template->schedule_template_timeout = $this->input->post('schedule_template_timeout', TRUE);
                $m_schedule_template->schedule_template_break_time = $this->input->post('schedule_template_break_time', TRUE);
                $m_schedule_template->save();
                $schedule_template_id = $m_schedule_template->last_insert_id();
                $response['title']='Success!';
                $response['stat']='success';
                $response['msg']='Schedule Template successfully Created.';
                $response['row_added']=$this->SchedTemplate_model->get_list($schedule_template_id);
                echo json_encode($response);
            break;

            case 'delete':
                $m_schedule_template=$this->SchedTemplate_model;

                $schedule_template_id=$this->input->post('schedule_template_id',TRUE);

                $m_schedule_template->is_deleted=1;
                $m_schedule_template->date_deleted = date("Y-m-d H:i:s");
                $m_schedule_template->deleted_by = $this->session->user_id;
                if($m_schedule_template->modify($schedule_template_id)){
                $response['title']='Success!';
                $response['stat']='success';
                $response['msg']='Schedule Template successfully Deleted.';
                }
                echo json_encode($response);

                break;

            case 'update':
                $m_schedule_template = $this->SchedTemplate_model;
                $schedule_template_id = $this->input->post('schedule_template_id', TRUE);
                $m_schedule_template->schedule_template_name = $this->input->post('schedule_template_name', TRUE);
                $m_schedule_template->schedule_template_advance_in_out = $this->input->post('schedule_template_advance_in_out', TRUE);
                $m_schedule_template->schedule_template_timein = $this->input->post('schedule_template_timein', TRUE);
                $m_schedule_template->schedule_template_timeout = $this->input->post('schedule_template_timeout', TRUE);
                $m_schedule_template->schedule_template_break_time = $this->input->post('schedule_template_break_time', TRUE);
                $m_schedule_template->modify($schedule_template_id);
                $response['title']='Success!';
                $response['stat']='success';
                $response['msg']='Schedule Template successfully Updated.';
                $response['row_updated']=$this->SchedTemplate_model->get_list($schedule_template_id);
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
