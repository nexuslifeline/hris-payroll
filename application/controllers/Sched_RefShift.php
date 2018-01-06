<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Sched_RefShift extends CORE_Controller
{

    function __construct() {
        parent::__construct('');
        $this->validate_session();
        if($this->session->userdata('right_schedule_shifting_view') == 0 || $this->session->userdata('right_schedule_shifting_view') == null) {
            redirect('../Dashboard');
        }

        $this->load->model('SchedRefShift_model');



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
        $data['title'] = 'Shift';

        $this->load->view('sched_refshift_view', $data);
    }

    function transaction($txn = null) {
        switch ($txn) {
            case 'list':
                $response['data']=$this->SchedRefShift_model->get_list(
                    array('sched_refshift.is_deleted'=>FALSE)
                    );
                echo json_encode($response);
                break;

            case 'create':
                $m_shift = $this->SchedRefShift_model;
                $this->load->library('form_validation');
                $this->load->helper('security');
                $this->form_validation->set_rules('shift', 'Shift', 'strip_tags|xss_clean|required');
                if ($this->form_validation->run() == TRUE)
                {

                $m_shift->shift = $this->input->post('shift', TRUE);
                $m_shift->schedule_template_advance_in_out = $this->input->post('schedule_template_advance_in_out', TRUE);
                $m_shift->schedule_template_timein = $this->input->post('schedule_template_timein', TRUE);
                $m_shift->schedule_template_timeout = $this->input->post('schedule_template_timeout', TRUE);
                $m_shift->schedule_template_break_time = $this->input->post('schedule_template_break_time', TRUE);
                $m_shift->save();

                $sched_refshift_id = $m_shift->last_insert_id();


                $response['title'] = 'Success!';
                $response['stat'] = 'success';
                $response['msg'] = 'shift Type successfully created.';

                $response['row_added'] = $this->SchedRefShift_model->get_list($sched_refshift_id);
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
                $m_shift=$this->SchedRefShift_model;

                $sched_refshift_id=$this->input->post('sched_refshift_id',TRUE);
                $filter=$sched_refshift_id;
                $response['data']=$this->SchedRefShift_model->checkifused($filter);
                $checkcount = count($response['data']);
                if($checkcount>0){
                    $response['false']=0;
                    $response['title']='Cannot be Deleted!';
                    $response['stat']='error';
                    $response['msg']='Reference is in used!';

                    echo json_encode($response);
                }
                else{
                    $m_shift->is_deleted=1;
                    $m_shift->date_deleted = date("Y-m-d H:i:s");
                    $m_shift->deleted_by = $this->session->user_id;
                    if($m_shift->modify($sched_refshift_id)){
                    $response['title']='Success!';
                    $response['stat']='success';
                    $response['msg']='shift Type successfully Deleted.';

                    echo json_encode($response);
                    }
                }

                break;

            case 'update':
                $m_shift=$this->SchedRefShift_model;
                $this->load->library('form_validation');
                $this->load->helper('security');
                $this->form_validation->set_rules('shift', 'Sched Pay', 'strip_tags|xss_clean|required');
                if ($this->form_validation->run() == TRUE)
                {

                $sched_refshift_id=$this->input->post('sched_refshift_id',TRUE);
                $m_shift->shift = $this->input->post('shift', TRUE);
                $m_shift->schedule_template_advance_in_out = $this->input->post('schedule_template_advance_in_out', TRUE);
                $m_shift->schedule_template_timein = $this->input->post('schedule_template_timein', TRUE);
                $m_shift->schedule_template_timeout = $this->input->post('schedule_template_timeout', TRUE);
                $m_shift->schedule_template_break_time = $this->input->post('schedule_template_break_time', TRUE);
                $m_shift->modify($sched_refshift_id);

                $response['title']='Success';
                $response['stat']='success';
                $response['msg']='shift Type successfully updated.';
                $response['row_updated']=$this->SchedRefShift_model->get_list($sched_refshift_id);
                }
                else
                {
                    $response['title'] = 'Error!';
                    $response['stat'] = 'error';
                    $response['msg'] = validation_errors();

                }
                echo json_encode($response);
                break;

        }
    }











}
