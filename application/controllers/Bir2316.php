<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Bir2316 extends CORE_Controller
{

    function __construct() {
        parent::__construct('');
        if($this->session->userdata('user_id') == FALSE) {
            redirect('../login');
        } 
        if($this->session->userdata('right_bir2316_view') == 0 || $this->session->userdata('right_bir2316_view') == null) {
            redirect('../Dashboard');
        }
        else{
            
        }
        $this->validate_session();
        $this->load->model('Employee_model');
        $this->load->model('Bir2316_model');
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
        $data['employees']=$this->Employee_model->get_list(array('employee_list.is_deleted'=>FALSE),'employee_list.*,CONCAT(first_name," ",middle_name," ",last_name) as fullname',null,'fullname ASC');
        $data['company_setup']=$this->GeneralSettings_model->get_list();
        $data['title'] = 'BIR FORM 2316';

        $this->load->view('bir2316_view', $data);
    }

    function transaction($txn = null) {
        switch ($txn) {
            case 'list':
                $response['data']=$this->Bir2316_model->get_list(
                    array('bir_2316.is_deleted='=>FALSE),
                    'bir_2316.*,CONCAT(employee_list.first_name," ",middle_name," ",employee_list.last_name) as fullname',
                   array(
                            array('employee_list','employee_list.employee_id=bir_2316.employee_id','left')
                            )
                    );
                echo json_encode($response);
                break;

            case 'create':
                $m_bir2316 = $this->Bir2316_model;
                foreach($_POST as $key => $val)  
                {  
                    $m_bir2316->$key=$this->input->post($key);
                }

                $m_bir2316->created_by = $this->session->user_id;
                $m_bir2316->date_created = date("Y-m-d H:i:s");
                $m_bir2316->save();
                $bir_2316_id = $m_bir2316->last_insert_id();


                $response['title'] = 'Success!';
                $response['stat'] = 'success';
                $response['msg'] = 'Bir2316 successfully updated.';

                $response['row_added'] = $this->Bir2316_model->get_list(
                    $bir_2316_id,
                    'bir_2316.*,CONCAT(employee_list.first_name," ",middle_name," ",employee_list.last_name) as fullname',
                   array(
                            array('employee_list','employee_list.employee_id=bir_2316.employee_id','left')
                            )

                    );
                echo json_encode($response);
                break;

            case 'delete':
                $m_bir2316=$this->Bir2316_model;

                $bir_2316_id=$this->input->post('bir_2316_id',TRUE);
                
                    $m_bir2316->is_deleted=1;
                    $m_bir2316->date_deleted = date("Y-m-d H:i:s");
                    $m_bir2316->deleted_by = $this->session->user_id;
                    $m_bir2316->modify($bir_2316_id);
                    $response['title']='Success!';
                    $response['stat']='success';
                    $response['msg']='Bir 2316 successfully Deleted.';

                    echo json_encode($response);

                break;

            case 'update':
                $m_bir2316 = $this->Bir2316_model;
                $bir_2316_id = $this->input->post('bir_2316_id',TRUE);
                foreach($_POST as $key => $val)  
                {  
                    if($key=="bir_2316_id"){
                        /*echo "patient";*/
                    }
                    else{
                        $m_bir2316->$key=$this->input->post($key);
                    }
                }

                $m_bir2316->date_modified = date("Y-m-d H:i:s");
                $m_bir2316->modified_by = $this->session->user_id;
                $m_bir2316->modify($bir_2316_id);
                


                $response['title'] = 'Success!';
                $response['stat'] = 'success';
                $response['msg'] = 'Bir2316 successfully created.';

                $response['row_updated'] = $this->Bir2316_model->get_list(
                    $bir_2316_id,
                    'bir_2316.*,CONCAT(employee_list.first_name," ",middle_name," ",employee_list.last_name) as fullname',
                   array(
                            array('employee_list','employee_list.employee_id=bir_2316.employee_id','left')
                            )

                    );
                echo json_encode($response);
                break;

        }
    }











}
