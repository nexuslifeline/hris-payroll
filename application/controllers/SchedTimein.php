<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class SchedTimein extends CORE_Controller
{

    function __construct() {
        parent::__construct('');

        $this->validate_session();
        if($this->session->userdata('right_schedule_timeinout') == 0 || $this->session->userdata('right_schedule_timeinout') == null) {
            redirect('../Dashboard');
        }
        $this->load->model('Employee_model');
        $this->load->model('SchedEmployee_model');




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
        $data['title'] = 'Employee Time In';

        $this->load->view('sched_timein_view', $data);
    }

    function transaction($txn = null) {
        switch ($txn) {
            case 'list':
                $response['data']=$this->RefBranch_model->get_list(
                    array('ref_branch.is_deleted'=>FALSE)
                    );
                echo json_encode($response);
                break;

            case 'getlivetime':
              $m_schedule=$this->SchedEmployee_model;
                $response['livetime'] =date("h:iA");
                $response['livedate'] = date("Y/m/d");
                $date = date("Y-m-d");
                $time = $date.' '.date("H:i:s");
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
                $count_whosin=$this->SchedEmployee_model->count_whosin($pay_period_id,$date,$time,$type="is_in");
                if($count_whosin!=null){
                  if($count_whosin[0]->whos_in!=$this->input->post('retrieve_whosin',TRUE)){
                    $response['count_whosin']=$count_whosin[0]->whos_in;
                    $response['whos_in']=$this->SchedEmployee_model->get_whosinout($pay_period_id,$date,$time,$type="is_in");
                    $response['status']='newdata';
                  }
                  else{
                    $response['status']='nochanges';
                    $response['count_whosin']=0;
                  }
                }
                else{
                  $response['status']='nodata';
                  $response['count_whosin']=0;
                }

                $count_whosout=$this->SchedEmployee_model->count_whosin($pay_period_id,$date,$time,$type="is_out");
                if($count_whosout!=null){
                  if($count_whosout[0]->whos_in!=$this->input->post('retrieve_whosout',TRUE)){
                    $response['count_whosout']=$count_whosout[0]->whos_in;
                    $response['whos_out']=$this->SchedEmployee_model->get_whosout($pay_period_id,$date,$time,$type="is_out");
                    $response['statusout']='newdata';
                  }
                  else{
                    $response['statusout']='nochanges';
                    $response['count_whosout']=0;
                  }
                }
                else{
                  $response['statusout']='nodata';
                  $response['count_whosout']=0;
                }



                echo json_encode($response);
                // $this->db->update_batch('schedule_employee',$updateArray, 'schedule_employee_id');

            case 'autotimeout' :
              $date = date("Y-m-d");
              $time = $date.' '.date("H:i:s");
              $pay_period_id_Temp=$this->SchedEmployee_model->get_pay_period($date);
              if(count($pay_period_id_Temp)!=0){
                  $pay_period_id = $pay_period_id_Temp[0]->pay_period_id;
                  $employee_scheds= $this->SchedEmployee_model->checkifforgottoout($pay_period_id,$date,$time);
                  if(count($employee_scheds)!=0){
                    $i=0;
                    $updateArray = array();
                    $createArray = array();
                    foreach($employee_scheds as $row){
                        $updateArray[] = array(
                            'schedule_employee_id'=>$row->schedule_employee_id,
                            'is_out' => 1,
                            'clock_out' =>$row->time_out
                        );
                      $i++;
                      $createArray[] = array(
                          'employee_id'=>$row->employee_id,
                          'date_memo' => $date,
                          'memo_number' =>rand(1000,9999),
                          'ref_disciplinary_action_policy_id' => 1,
                          'ref_action_taken_id' => 1,
                          'date_granted' => $date,
                          'remarks' => "Failure to Clock out",
                          'created_by' => $this->session->user_id,
                          'date_created' => $date
                      );
                    }
                    // echo json_encode($createArray);
                    $this->db->insert_batch('emp_memo', $createArray);
                    $this->db->update_batch('schedule_employee',$updateArray, 'schedule_employee_id');
                  }
              }

            break;

                // echo json_encode($response);
            break;

            case 'timein':
                $m_branch = $this->RefBranch_model;

                $m_branch->branch = $this->input->post('postname', TRUE);
                $m_branch->description = $this->input->post('post_description', TRUE);
                $m_branch->date_created = date("Y-m-d H:i:s");
                $m_branch->created_by = $this->session->user_id;
                $m_branch->save();

                $ref_branch_id = $m_branch->last_insert_id();


                $response['title'] = 'Success!';
                $response['stat'] = 'success';
                $response['msg'] = 'Branch information successfully created.';

                $response['row_added'] = $this->RefBranch_model->get_list($ref_branch_id);
                echo json_encode($response);

                break;

            case 'delete':

                break;

            case 'update':
                break;

        }
    }











}
