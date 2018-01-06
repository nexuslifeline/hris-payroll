<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class AdvancedSettings extends CORE_Controller
{

    function __construct() {
        parent::__construct('');
        if($this->session->userdata('user_id') == FALSE) {
            redirect('../login');
        } 
        if($this->session->userdata('right_deductionperiod_view') == 0 || $this->session->userdata('right_deductionperiod_view') == null) {
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
        $this->load->model('RefYearSetup_model');
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
        $this->load->model('RefPayPeriod_model');
        $this->load->model('RefDeductionType_model');
        $this->load->model('RefDeductionSetup_model');
        $this->load->model('Regular_Deduction_model');
        $this->load->model('GeneralSettings_model');
        $this->load->model('AdvancedSettings_model');

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
        $data['title'] = 'Advanced Settings';
        $data['system_settings_default_deductions'] = $this->AdvancedSettings_model->get_list();
        $data['refdeduction']=$this->RefDeductionSetup_model->get_list(array('refdeduction.is_deleted'=>FALSE));
        $this->load->view('advancedsettings_view', $data);
    }

    function transaction($txn = null) {
        switch ($txn) {
            case 'list':
            	$response['data']=$this->AdvancedSettings_model->get_list(
                    array('system_settings_default_deductions'),
                    'system_settings_default_deductions.*,refdeduction.*',
                    array(
                            array('refdeduction','refdeduction.deduction_id=system_settings_default_deductions.deduction_id','left')
                        )
                    );
                echo json_encode($response);
                
                break;

            case 'create':
                $m_advanced_settings = $this->AdvancedSettings_model;

                $m_advanced_settings->default_id = $this->input->post('default_id', TRUE);
                $m_advanced_settings->check1 = $this->input->post('check1', TRUE);
                $m_advanced_settings->check2 = $this->input->post('check2', TRUE);
                $m_advanced_settings->check3 = $this->input->post('check3', TRUE);
                $m_advanced_settings->check4 = $this->input->post('check4', TRUE);
                $m_adjustments->created_by = $this->session->user_id;
                $m_advanced_settings->save();

                $default_id = $m_advanced_settings->last_insert_id();


                $response['title'] = 'Success!';
                $response['stat'] = 'success';
                $response['msg'] = 'Advanced Settings information successfully created.';

                $response['row_added']=$this->AdvancedSettings_model->get_list($default_id,
                    'system_settings_default_deductions.*,refdeduction.*',
                    array(
                            array('refdeduction','refdeduction.deduction_id=system_settings_default_deductions.deduction_id','left')
                        )
                    );
                echo json_encode($response);

                break;

            case 'delete':
                $m_advanced_settings=$this->AdvancedSettings_model;

                $default_id=$this->input->post('default_id',TRUE);

                $m_advanced_settings->is_deleted=1;
                if($m_advanced_settings->modify($default_id)){
                    $response['title']='Success!';
                    $response['stat']='success';
                    $response['msg']='Advanced Settings information successfully deleted.';

                    echo json_encode($response);
                }

                break;

            case 'update':
                $m_advanced_settings=$this->AdvancedSettings_model;

                $default_id=$this->input->post('default_id',TRUE);

                $m_advanced_settings->default_id = $this->input->post('default_id', TRUE);
                $m_advanced_settings->check1 = $this->input->post('check1', TRUE);
                $m_advanced_settings->check2 = $this->input->post('check2', TRUE);
                $m_advanced_settings->check3 = $this->input->post('check3', TRUE);
                $m_advanced_settings->check4 = $this->input->post('check4', TRUE);
                $m_advanced_settings->date_modified = date("Y-m-d");
                $m_advanced_settings->modified_by = $this->session->user_id;
                $m_advanced_settings->modify($default_id);

                $response['title']='Success';
                $response['stat']='success';
                $response['msg']='Advanced Settings information successfully updated.';

                $response['row_updated']=$this->AdvancedSettings_model->get_list($default_id,
                    'system_settings_default_deductions.*,refdeduction.*',
                    array(
                            array('refdeduction','refdeduction.deduction_id=system_settings_default_deductions.deduction_id','left')
                        )
                    );
                echo json_encode($response);

                break;

        }
    }





}
