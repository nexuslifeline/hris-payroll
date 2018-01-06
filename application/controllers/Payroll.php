<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Payroll extends CORE_Controller
{

    function __construct() {
        parent::__construct('');
        if($this->session->userdata('right_dtr_view') != 0) {

        } 
        else{
            redirect('../Dashboard');
        }
        $this->validate_session();
        $this->load->model('Employee_model');
        $this->load->model('Payroll_model');
        $this->load->model('Ref_Emptype_model');
        $this->load->model('RefDepartment_model');
        $this->load->model('RefPosition_model');
        $this->load->model('RefBranch_model');
        $this->load->model('RefSection_model');
        $this->load->model('RefReligion_model');
        $this->load->model('RefCourse_model');
        $this->load->model('RefRelationship_model');
        $this->load->model('RefPayment_model');
        $this->load->model('RefLeave_model');
        $this->load->model('RefYearSetup_model');
        $this->load->model('RefDiscipline_model');
        $this->load->model('RefAction_model');
        $this->load->model('RefCertificate_model');
        $this->load->model('RefGroup_model');
        
        
        

    }

    public function index() {
        $data['_def_css_files'] = $this->load->view('template/assets/css_files', '', TRUE);
        $data['_def_js_files'] = $this->load->view('template/assets/js_files', '', TRUE);
        $data['_switcher_settings'] = $this->load->view('template/elements/switcher', '', TRUE);
        $data['_side_bar_navigation'] = $this->load->view('template/elements/side_bar_navigation', '', TRUE);
        $data['_top_navigation'] = $this->load->view('template/elements/top_navigationforpayroll', '', TRUE);
        $data['_rights'] = $this->load->view('template/elements/rights', '', TRUE);
        $data['loader'] = $this->load->view('template/elements/loader', '', TRUE);
        $data['loaderscript'] = $this->load->view('template/elements/loaderscript', '', TRUE);
        $data['title'] = 'Payroll : DTR';
        $data['ref_emptype']=$this->Ref_Emptype_model->get_list(array('ref_employment_type.is_deleted'=>FALSE));
        $data['ref_department']=$this->RefDepartment_model->get_list(array('ref_department.is_deleted'=>FALSE));
        $data['ref_position']=$this->RefPosition_model->get_list(array('ref_position.is_deleted'=>FALSE));
        $data['ref_branch']=$this->RefBranch_model->get_list(array('ref_branch.is_deleted'=>FALSE));
        $data['ref_section']=$this->RefSection_model->get_list(array('ref_section.is_deleted'=>FALSE));
        $data['ref_religion']=$this->RefReligion_model->get_list(array('ref_religion.is_deleted'=>FALSE));
        $data['ref_course_degree']=$this->RefCourse_model->get_list(array('ref_course_degree.is_deleted'=>FALSE));
        $data['ref_relationship']=$this->RefRelationship_model->get_list(array('ref_relationship.is_deleted'=>FALSE));
        $data['ref_payment']=$this->RefPayment_model->get_list(array('ref_payment_type.is_deleted'=>FALSE));
        $data['ref_leave_type']=$this->RefLeave_model->get_list(array('ref_leave_type.is_deleted'=>FALSE));
        $data['emp_leave_year']=$this->RefYearSetup_model->get_list(array('emp_leave_year.active_year'=>TRUE));
        $data['ref_disciplinary_action_policy']=$this->RefDiscipline_model->get_list(array('ref_disciplinary_action_policy.is_deleted'=>FALSE));
        $data['ref_action_taken']=$this->RefAction_model->get_list(array('ref_action_taken.is_deleted'=>FALSE));
        $data['ref_certificate']=$this->RefCertificate_model->get_list(array('ref_certificate.is_deleted'=>FALSE));
        $data['ref_group']=$this->RefGroup_model->get_list(array('refgroup.is_deleted'=>FALSE));
        $this->load->view('payroll_view', $data);
    }

    function transaction($txn = null) {
        switch ($txn) {
            case 'list':
                $response['data']=$this->Employee_model->get_list(
                    array('employee_list.is_deleted'=>FALSE),
                    'employee_list.*,ref_employment_type.employment_type,ref_department.department,ref_position.position,ref_branch.branch,ref_section.section,
                    ref_religion.religion,ref_payment_type.payment_type',
                    array(
                            array('emp_rates_duties','emp_rates_duties.emp_rates_duties_id=employee_list.emp_rates_duties_id','left'),
                            array('ref_employment_type','ref_employment_type.ref_employment_type_id=emp_rates_duties.ref_employment_type_id','left'),
                            array('ref_department','ref_department.ref_department_id=emp_rates_duties.ref_department_id','left'),
                            array('ref_position','ref_position.ref_position_id=emp_rates_duties.ref_position_id','left'),
                            array('ref_branch','ref_branch.ref_branch_id=emp_rates_duties.ref_branch_id','left'),
                            array('ref_section','ref_section.ref_section_id=emp_rates_duties.ref_section_id','left'),
                            array('ref_payment_type','ref_payment_type.ref_payment_type_id=emp_rates_duties.ref_payment_type_id','left'),
                            array('ref_religion','ref_religion.ref_religion_id=employee_list.ref_religion_id','left'),
                            ) 
                    );
                echo json_encode($response);
                break;

            case 'create':

                function replaceCharsInNumber($num, $chars) {
                     return substr((string) $num, 0, -strlen($chars)) . $chars;
                }

                $m_employee = $this->Employee_model;
               
                $emp_birthdatetemp = $this->input->post('birthdate', TRUE);
                $employmentdatetemp = $this->input->post('employment_date', TRUE);
                $emp_regularizationdatetemp = $this->input->post('date_regularization', TRUE);
                $emp_loandatetemp = $this->input->post('loan_date', TRUE);


				$employmentdate = date("Y-m-d", strtotime($employmentdatetemp));
                $emp_birthdate = date("Y-m-d", strtotime($emp_birthdatetemp));
                $emp_regularizationdate = date("Y-m-d", strtotime($emp_regularizationdatetemp));
                $emp_loandate = date("Y-m-d", strtotime($emp_loandatetemp));



                $m_employee->id_number = $this->input->post('id_number', TRUE);
                $m_employee->first_name = $this->input->post('first_name', TRUE);
                $m_employee->middle_name = $this->input->post('middle_name', TRUE);
                $m_employee->last_name = $this->input->post('last_name', TRUE);
                $m_employee->address_one = $this->input->post('address_one', TRUE);
                $m_employee->address_two = $this->input->post('address_two', TRUE);
                $m_employee->email_address = $this->input->post('email_address', TRUE);
                $m_employee->gender = $this->input->post('gender', TRUE);
                $m_employee->cell_number = $this->input->post('cell_number', TRUE);
                $m_employee->birthdate = $emp_birthdate;
                $m_employee->telphone_number = $this->input->post('telphone_number', TRUE);
                $m_employee->ref_religion_id = $this->input->post('ref_religion_id', TRUE);
                $m_employee->blood_type = $this->input->post('blood_type', TRUE);
                $m_employee->civil_status = $this->input->post('civil_status', TRUE);
                $m_employee->height = $this->input->post('height', TRUE);
                $m_employee->weight = $this->input->post('weight', TRUE);
                $m_employee->employment_date = $employmentdate;
                $m_employee->date_regularization = $emp_regularizationdate;
                $m_employee->sss = $this->input->post('sss', TRUE);
                $m_employee->phil_health = $this->input->post('phil_health', TRUE);
                $m_employee->pag_ibig = $this->input->post('pag_ibig', TRUE);
                $m_employee->tin = $this->input->post('tin', TRUE);
                $m_employee->bank_account = $this->input->post('bank_account', TRUE);
                $m_employee->bank_account_isprocess = $this->input->post('bank_account_isprocess', TRUE);
                $m_employee->tax_code = $this->input->post('tax_code', TRUE);
                $m_employee->exmpt_sss = $this->input->post('exmpt_sss', TRUE);
                $m_employee->exmpt_pagibig = $this->input->post('exmpt_pagibig', TRUE);
                $m_employee->exmpt_philhealth = $this->input->post('exmpt_philhealth', TRUE);
                $m_employee->image_name = $this->input->post('image_name', TRUE);
                $m_employee->loan_date = $emp_loandate;
                $m_employee->loan_amount = $this->input->post('loan_amount', TRUE);
                $m_employee->save();

                $employee_id = $m_employee->last_insert_id();

                $format = "000000";
                $temp = replaceCharsInNumber($format, $employee_id); //5069xxx
                $ecode = $temp .'-'. $today = date("Y");

                $m_employee->ecode = $ecode;
                $m_employee->modify($employee_id);

                $response['title'] = 'Success!';
                $response['stat'] = 'success';
                $response['msg'] = 'Employee information successfully created.';

                $response['row_added'] = $this->Employee_model->get_list(
                    $employee_id,
                    'employee_list.*,ref_employment_type.employment_type,ref_department.department,ref_position.position,ref_branch.branch,ref_section.section,
                    ref_religion.religion,ref_payment_type.payment_type',
                    array(
                            array('emp_rates_duties','emp_rates_duties.emp_rates_duties_id=employee_list.emp_rates_duties_id','left'),
                            array('ref_employment_type','ref_employment_type.ref_employment_type_id=emp_rates_duties.ref_employment_type_id','left'),
                            array('ref_department','ref_department.ref_department_id=emp_rates_duties.ref_department_id','left'),
                            array('ref_position','ref_position.ref_position_id=emp_rates_duties.ref_position_id','left'),
                            array('ref_branch','ref_branch.ref_branch_id=emp_rates_duties.ref_branch_id','left'),
                            array('ref_section','ref_section.ref_section_id=emp_rates_duties.ref_section_id','left'),
                            array('ref_payment_type','ref_payment_type.ref_payment_type_id=emp_rates_duties.ref_payment_type_id','left'),
                            array('ref_religion','ref_religion.ref_religion_id=employee_list.ref_religion_id','left'),
                            )
                    );
                echo json_encode($response);

                break;

            case 'delete':
                $m_employee=$this->Employee_model;

                $employee_id=$this->input->post('employee_id',TRUE);

                $m_employee->is_deleted=1;
                if($m_employee->modify($employee_id)){
                    $response['title']='Success!';
                    $response['stat']='success';
                    $response['msg']='Employee information successfully deleted.';

                    echo json_encode($response);
                }

                break;

            case 'update':
                $m_employee=$this->Employee_model;

                $employee_id=$this->input->post('employee_id',TRUE);

                $emp_birthdatetemp = $this->input->post('birthdate', TRUE);
                $employmentdatetemp = $this->input->post('employment_date', TRUE);
                $emp_regularizationdatetemp = $this->input->post('date_regularization', TRUE);
                $emp_loandatetemp = $this->input->post('loan_date', TRUE);


                $employmentdate = date("Y-m-d", strtotime($employmentdatetemp));
                $emp_birthdate = date("Y-m-d", strtotime($emp_birthdatetemp));
                $emp_regularizationdate = date("Y-m-d", strtotime($emp_regularizationdatetemp));
                $emp_loandate = date("Y-m-d", strtotime($emp_loandatetemp));



                $m_employee->id_number = $this->input->post('id_number', TRUE);
                $m_employee->first_name = $this->input->post('first_name', TRUE);
                $m_employee->middle_name = $this->input->post('middle_name', TRUE);
                $m_employee->last_name = $this->input->post('last_name', TRUE);
                $m_employee->address_one = $this->input->post('address_one', TRUE);
                $m_employee->address_two = $this->input->post('address_two', TRUE);
                $m_employee->email_address = $this->input->post('email_address', TRUE);
                $m_employee->gender = $this->input->post('gender', TRUE);
                $m_employee->cell_number = $this->input->post('cell_number', TRUE);
                $m_employee->birthdate = $emp_birthdate;
                $m_employee->telphone_number = $this->input->post('telphone_number', TRUE);
                $m_employee->ref_religion_id = $this->input->post('ref_religion_id', TRUE);
                $m_employee->blood_type = $this->input->post('blood_type', TRUE);
                $m_employee->civil_status = $this->input->post('civil_status', TRUE);
                $m_employee->height = $this->input->post('height', TRUE);
                $m_employee->weight = $this->input->post('weight', TRUE);
                $m_employee->employment_date = $employmentdate;
                $m_employee->date_regularization = $emp_regularizationdate;
                $m_employee->sss = $this->input->post('sss', TRUE);
                $m_employee->phil_health = $this->input->post('phil_health', TRUE);
                $m_employee->pag_ibig = $this->input->post('pag_ibig', TRUE);
                $m_employee->tin = $this->input->post('tin', TRUE);
                $m_employee->bank_account = $this->input->post('bank_account', TRUE);
                $m_employee->bank_account_isprocess = $this->input->post('bank_account_isprocess', TRUE);
                $m_employee->tax_code = $this->input->post('tax_code', TRUE);
                $m_employee->exmpt_sss = $this->input->post('exmpt_sss', TRUE);
                $m_employee->exmpt_pagibig = $this->input->post('exmpt_pagibig', TRUE);
                $m_employee->exmpt_philhealth = $this->input->post('exmpt_philhealth', TRUE);
                $m_employee->image_name = $this->input->post('image_name', TRUE);
                $m_employee->loan_date = $emp_loandate;
                $m_employee->loan_amount = $this->input->post('loan_amount', TRUE);
                $m_employee->modify($employee_id);

                $response['title']='Success';
                $response['stat']='success';
                $response['msg']='Employee information successfully updated.';
                $response['row_updated']=$this->Employee_model->get_list(
                    $employee_id,
                    'employee_list.*,ref_employment_type.employment_type,ref_department.department,ref_position.position,ref_branch.branch,ref_section.section,
                    ref_religion.religion,ref_payment_type.payment_type',
                    array(
                            array('emp_rates_duties','emp_rates_duties.emp_rates_duties_id=employee_list.emp_rates_duties_id','left'),
                            array('ref_employment_type','ref_employment_type.ref_employment_type_id=emp_rates_duties.ref_employment_type_id','left'),
                            array('ref_department','ref_department.ref_department_id=emp_rates_duties.ref_department_id','left'),
                            array('ref_position','ref_position.ref_position_id=emp_rates_duties.ref_position_id','left'),
                            array('ref_branch','ref_branch.ref_branch_id=emp_rates_duties.ref_branch_id','left'),
                            array('ref_section','ref_section.ref_section_id=emp_rates_duties.ref_section_id','left'),
                            array('ref_payment_type','ref_payment_type.ref_payment_type_id=emp_rates_duties.ref_payment_type_id','left'),
                            array('ref_religion','ref_religion.ref_religion_id=employee_list.ref_religion_id','left'),
                            )  
                    );
                echo json_encode($response);

                break;

            case 'upload':
                $allowed = array('png', 'jpg', 'jpeg','bmp');

                $data=array();
                $files=array();
                $directory='assets/img/employee/';

                foreach($_FILES as $file){

                    $server_file_name=uniqid('');
                    $extension = pathinfo($file['name'], PATHINFO_EXTENSION);
                    $file_path=$directory.$server_file_name.'.'.$extension;
                    $orig_file_name=$file['name'];

                    if(!in_array(strtolower($extension), $allowed)){
                        $response['title']='Invalid!';
                        $response['stat']='error';
                        $response['msg']='Image is invalid. Please select a valid photo!';
                        die(json_encode($response));
                    }

                    if(move_uploaded_file($file['tmp_name'],$file_path)){
                        $response['title']='Success!';
                        $response['stat']='success';
                        $response['msg']='Image successfully uploaded.';
                        $response['path']=$file_path;
                        echo json_encode($response);
                    }
                }
                break;

            case 'test':
function replaceCharsInNumber($num, $chars) {
   return substr((string) $num, 0, -strlen($chars)) . $chars;
}

$format = "000000";
$temp = replaceCharsInNumber($format, '180'); //5069xxx
$ecode = $temp .'-'. $today = date("Y");
echo $ecode;


                break;
                case 'test2': //traditional selecting of data
                    $date = "2016-02-16"; // Or Your date
                    $newDate = Carbon::createFromFormat('Y-m-d', $date)->addYear(1);
                    echo $newDate;
                break;
                case 'date': //traditional selecting of data
                    echo $data['datenow'] = date("m/d/Y");
                break;
                case 'test3':
                
                break;


        }
    }











}
