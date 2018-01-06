<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class RefEarningType extends CORE_Controller
{

    function __construct() {
        parent::__construct('');
        if($this->session->userdata('user_id') == FALSE) {
            redirect('../login');
        } 
        if($this->session->userdata('right_earningtype_view') == 0 || $this->session->userdata('right_earningtype_view') == null) {
            redirect('../Dashboard');
        }
        else{
            
        }
        $this->validate_session();
        $this->load->model('Employee_model');
        $this->load->model('RatesDuties_model');
        $this->load->model('Ref_Emptype_model');
        $this->load->model('RefDepartment_model');
        $this->load->model('RefPosition_model');
        $this->load->model('RefBranch_model');
        $this->load->model('RefSection_model');
        $this->load->model('RefReligion_model');
        $this->load->model('RefCourse_model');
        $this->load->model('RefRelationship_model');
        $this->load->model('RefLeave_model');
        $this->load->model('RefCertificate_model');
        $this->load->model('RefAction_model');
        $this->load->model('RefDiscipline_model');
        $this->load->model('RefCompensation_model');
        $this->load->model('RefPayment_model');
        $this->load->model('RefSSS_Contribution_model');
        $this->load->model('RefPhilHealth_Contribution_model');
        $this->load->model('RefGroup_model');
        $this->load->model('RefEarningSetup_model');
        $this->load->model('RefEarningType_model');



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
        $data['title'] = 'Earning Type';

        $this->load->view('ref_earningtype_view', $data);
    }

    function transaction($txn = null) {
        switch ($txn) {
            case 'list':
                $response['data']=$this->RefEarningType_model->get_list(
                    array('refotherearningstype.is_deleted'=>FALSE)
                    );
                echo json_encode($response);
                break;

            case 'create':
                $m_earningtype = $this->RefEarningType_model;

                $m_earningtype->earnings_type_desc = $this->input->post('earnings_type_desc', TRUE);
                $m_earningtype->date_created = date("Y-m-d H:i:s");
                $m_earningtype->created_by = $this->session->user_id;
                $m_earningtype->save();

                $earnings_type_id = $m_earningtype->last_insert_id();


                $response['title'] = 'Success!';
                $response['stat'] = 'success';
                $response['msg'] = 'Earning Type information successfully created.';

                $response['row_added'] = $this->RefEarningType_model->get_list($earnings_type_id);
                echo json_encode($response);

                break;

            case 'delete':
                $m_earningtype=$this->RefEarningType_model;

                $earnings_type_id=$this->input->post('earnings_type_id',TRUE);

                $m_earningtype->is_deleted=1;
                $m_earningtype->date_deleted = date("Y-m-d H:i:s");
                $m_earningtype->deleted_by = $this->session->user_id;
                if($m_earningtype->modify($earnings_type_id)){
                    $response['title']='Success!';
                    $response['stat']='success';
                    $response['msg']='Earning Type information successfully deleted.';

                    echo json_encode($response);
                }

                break;

            case 'update':
                $m_earningtype = $this->RefEarningType_model;
                $earnings_type_id = $this->input->post('earnings_type_id',TRUE);

                $m_earningtype->earnings_type_desc = $this->input->post('earnings_type_desc', TRUE);
                $m_earningtype->date_modified = date("Y-m-d H:i:s");
                $m_earningtype->modified_by = $this->session->user_id;
                $m_earningtype->modify($earnings_type_id);

                $response['title']='Success';
                $response['stat']='success';
                $response['msg']='Earning Type information successfully updated.';
                $response['row_updated']=$this->RefEarningType_model->get_list($earnings_type_id);
                echo json_encode($response);

                break;

            case 'test':
            	
            	break;

        }
    }











}
