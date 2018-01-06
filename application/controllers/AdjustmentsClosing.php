<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class AdjustmentsClosing extends CORE_Controller
{

    function __construct() {
        parent::__construct('');
        if($this->session->userdata('user_id') !== FALSE) {

        } 
        else{
            redirect('login');
        } 
        $this->validate_session();
        $this->load->model('Employee_model');
        $this->load->model('RatesDuties_model');
        $this->load->model('Ref_Emptype_model');
        $this->load->model('RefDepartment_model');
        $this->load->model('RefPosition_model');
        $this->load->model('RefBranch_model');
        $this->load->model('AdjustmentsClosing_model');


    }

    public function index() {

    }

    function transaction($txn = null) {
        switch ($txn) {
            case 'list':
                break;

            case 'create':
                $m_adjustments = $this->AdjustmentsClosing_model;     
                $date_loan_temp = $this->input->post('date_adjusted', TRUE);
                $date_loan = date("Y-m-d", strtotime($date_loan_temp));
                $m_adjustments->particular = $this->input->post('particular', TRUE);
                $m_adjustments->deduction_regular_id = $this->input->post('reg_id_loan', TRUE);
                $m_adjustments->debit_amount = $this->input->post('debitloan', TRUE);
                $m_adjustments->credit_amount = $this->input->post('creditloan', TRUE);
                $m_adjustments->date_created = $date_loan;
                $m_adjustments->reason = $this->input->post('reasonloan', TRUE);
                $m_adjustments->date_created = date("Y-m-d");
                $m_adjustments->created_by = $this->session->user_id;
                $m_adjustments->save();
                $pay_slip_loans_adjustments_id = $m_adjustments->last_insert_id();


                $response['title'] = 'Success!';
                $response['stat'] = 'success';
                $response['msg'] = 'Adjustments/Closing information successfully saved.';
 
                echo json_encode($response);
                break;

            case 'delete':

                break;

            case 'update':

        }
    }











}
