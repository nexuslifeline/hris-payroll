<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class PayrollReports extends CORE_Controller
{

    function __construct() {
        parent::__construct('');
        $this->validate_session();
        $this->load->model('Employee_model');
        $this->load->model('RatesDuties_model');
        $this->load->model('Ref_Emptype_model');
        $this->load->model('RefDepartment_model');
        $this->load->model('RefPosition_model');
        $this->load->model('RefBranch_model');
        $this->load->model('RefSection_model');
        $this->load->model('TemporaryDeduction_model');
        $this->load->model('RefGroup_model');
        $this->load->model('RefDepartment_model');
        $this->load->model('RefDeductionSetup_model');
        $this->load->model('Payslip_model');
        $this->load->model('GeneralSettings_model');
        $this->load->model('RefOtherEarningRegular_model');
        $this->load->model('PaySlip_earning_model');
        $this->load->model('PaySlip_deduction_model');
        $this->load->model('Payslip_OtherEarning_model');
        $this->load->model('PayrollReports_model');
        $this->load->model('SchedEmployee_model');
        $this->load->model('RefPayPeriod_model');
    }
    public function index() {
        $data['_def_css_files'] = $this->load->view('template/assets/css_files', '', TRUE);
        $data['_def_js_files'] = $this->load->view('template/assets/js_files', '', TRUE);
        $data['_switcher_settings'] = $this->load->view('template/elements/switcher', '', TRUE);
        $data['_side_bar_navigation'] = $this->load->view('template/elements/side_bar_navigation', '', TRUE);
        $data['_top_navigation'] = $this->load->view('template/elements/top_navigation', '', TRUE);
        $data['loader'] = $this->load->view('template/elements/loader', '', TRUE);
        $data['loaderscript'] = $this->load->view('template/elements/loaderscript', '', TRUE);
        $data['ref_group']=$this->RefGroup_model->get_list(array('refgroup.is_deleted'=>FALSE));
        $data['ref_department']=$this->RefDepartment_model->get_list(array('ref_department.is_deleted'=>FALSE));
        $data['title'] = 'Payroll Reports';

        /*$this->load->view('pay_slip_view', $data);*/
    }


    function payrollreports($payrollreports=null,$filter_value=null,$filter_value2=null,$filter_value3=null,$type=null){

        switch($payrollreports){
            //****************************************************
            case 'payroll-register-summary-list': //
                        $joinsummary=array(
                             array('daily_time_record','daily_time_record.dtr_id=pay_slip.dtr_id','left'),
                             array('emp_rates_duties','emp_rates_duties.employee_id=daily_time_record.employee_id','left'),
                             array('ref_branch','ref_branch.ref_branch_id=emp_rates_duties.ref_branch_id','left'),
                             array('ref_department','ref_department.ref_department_id=emp_rates_duties.ref_department_id','left'),
                             array('refpayperiod','refpayperiod.pay_period_id=daily_time_record.pay_period_id','left'),
                             );
                        $joinearning=array(
                             array('daily_time_record','daily_time_record.dtr_id=pay_slip.dtr_id','left'),
                             array('pay_slip_other_earnings','pay_slip_other_earnings.pay_slip_id=pay_slip.pay_slip_id','left'),
                             array('emp_rates_duties','emp_rates_duties.employee_id=daily_time_record.employee_id','left'),
                             array('ref_branch','ref_branch.ref_branch_id=emp_rates_duties.ref_branch_id','left'),
                             array('ref_department','ref_department.ref_department_id=emp_rates_duties.ref_department_id','left'),
                             array('refpayperiod','refpayperiod.pay_period_id=daily_time_record.pay_period_id','left'),
                             );
                        $joindeductions=array(
                             array('daily_time_record','daily_time_record.dtr_id=pay_slip.dtr_id','left'),
                             array('pay_slip_deductions','pay_slip_deductions.pay_slip_id=pay_slip.pay_slip_id','left'),
                             array('emp_rates_duties','emp_rates_duties.employee_id=daily_time_record.employee_id','left'),
                             array('ref_branch','ref_branch.ref_branch_id=emp_rates_duties.ref_branch_id','left'),
                             array('ref_department','ref_department.ref_department_id=emp_rates_duties.ref_department_id','left'),
                             array('refpayperiod','refpayperiod.pay_period_id=daily_time_record.pay_period_id','left'),
                             );
                        if($filter_value2=="all" AND $filter_value3=="all"){
                        $filter=array('daily_time_record.pay_period_id'=>$filter_value,'emp_rates_duties.active_rates_duties'=>TRUE);
                        }
                        if($filter_value2=="all" AND $filter_value3!="all"){
                        $filter=array('daily_time_record.pay_period_id'=>$filter_value,'ref_branch.ref_branch_id'=>$filter_value3,'emp_rates_duties.active_rates_duties'=>TRUE);
                        }
                        if($filter_value2!="all" AND $filter_value3=="all"){
                        $filter=array('daily_time_record.pay_period_id'=>$filter_value,'ref_department.ref_department_id'=>$filter_value2,'emp_rates_duties.active_rates_duties'=>TRUE);
                        }
                        if($filter_value2!="all" AND $filter_value3!="all"){
                        $filter=array('daily_time_record.pay_period_id'=>$filter_value,'ref_department.ref_department_id'=>$filter_value2,'ref_branch.ref_branch_id'=>$filter_value3,'emp_rates_duties.active_rates_duties'=>TRUE);
                        }
                        $getpayrollregsummary=$this->Payslip_model->get_list(
                        $filter,
                        'pay_slip.*,SUM(reg_pay) as total_reg_pay,SUM(sun_pay+reg_hol_pay+spe_hol_pay+reg_ot_pay+sun_ot_pay) as total_hol_pay_sunday,
                        SUM(reg_nsd_pay+sun_nsd_pay) as total_nsd_amount,
                        SUM(pay_slip.minutes_late_amt) as total_minutes_late,ref_branch.branch,refpayperiod.pay_period_start,refpayperiod.pay_period_end',
                        $joinsummary
                        );
                        /*echo $branch;*/
                        //GET SALARY ADJUSTMENTS
                        $filter_salary_adjustment=$this->PayrollReports_model->filter_function_adjustment($filter_value,$filter_value2,$filter_value3);
                        $getadjustment=$this->Payslip_model->get_list(
                        $filter_salary_adjustment,
                        'SUM(pay_slip_other_earnings.earnings_amount) as total_adjustment_amount',
                        $joinearning
                        );
                        //GET OTHER PAY/EARNING
                        $filter_other_earnings=$this->PayrollReports_model->filter_function_otherearnings($filter_value,$filter_value2,$filter_value3);
                        $getotherpay=$this->Payslip_model->get_list(
                        $filter_other_earnings,
                        'SUM(earnings_amount) as total_other_pay',
                        $joinearning
                        );
                        /*$getotherpay=$this->Payslip_OtherEarning_model->get_list(
                        'pay_slip_other_earnings.earnings_id!=2',
                        'SUM(earnings_amount) as total_other_pay'
                        );*/
                         //TOTAL SSS DEDUCTION GET
                        $deduction_id_filter=1;
                        $filter_deduction=$this->PayrollReports_model->filter_function_deduction($deduction_id_filter,$filter_value,$filter_value2,$filter_value3);
                        $gettotalsssdeduction=$this->Payslip_model->get_list(
                        $filter_deduction,
                        'SUM(deduction_amount) as total_sss_deduct',
                        $joindeductions
                        );

                        /*$gettotalsssdeduction=$this->PaySlip_deduction_model->get_list(
                        'deduction_id=1 AND active_deduct=TRUE',
                        'SUM(deduction_amount) as total_sss_deduct'
                        );*/

                        //TOTAL PHILHEALTH GET
                        $deduction_id_filter=2;
                        $filter_deduction=$this->PayrollReports_model->filter_function_deduction($deduction_id_filter,$filter_value,$filter_value2,$filter_value3);
                        $gettotalphilhealthdeduction=$this->Payslip_model->get_list(
                        $filter_deduction,
                        'SUM(deduction_amount) as total_philhealth_deduct',
                        $joindeductions
                        );
                        /*$gettotalphilhealthdeduction=$this->PaySlip_deduction_model->get_list(
                        'deduction_id=2 AND active_deduct=TRUE',
                        'SUM(deduction_amount) as total_philhealth_deduct'
                        );*/
                        //TOTAL PAGIBIG GET
                        $deduction_id_filter=3;
                        $filter_deduction=$this->PayrollReports_model->filter_function_deduction($deduction_id_filter,$filter_value,$filter_value2,$filter_value3);
                        $gettotalpagibigdeduction=$this->Payslip_model->get_list(
                        $filter_deduction,
                        'SUM(deduction_amount) as total_pagibig_deduct',
                        $joindeductions
                        );
                        /*$gettotalpagibigdeduction=$this->PaySlip_deduction_model->get_list(
                        'deduction_id=3 AND active_deduct=TRUE',
                        'SUM(deduction_amount) as total_pagibig_deduct'
                        );*/
                        //TOTAL WTAX GET
                        $deduction_id_filter=4;
                        $filter_deduction=$this->PayrollReports_model->filter_function_deduction($deduction_id_filter,$filter_value,$filter_value2,$filter_value3);
                        $gettotalwithholdingdeduction=$this->Payslip_model->get_list(
                        $filter_deduction,
                        'SUM(deduction_amount) as total_withholdingtax_deduct',
                        $joindeductions
                        );
                        /*$gettotalwithholdingdeduction=$this->PaySlip_deduction_model->get_list(
                        'deduction_id=4 AND active_deduct=TRUE',
                        'SUM(deduction_amount) as total_withholdingtax_deduct'
                        );*/
                        //get total sss loan
                        $deduction_id_filter=5;
                        $filter_deduction=$this->PayrollReports_model->filter_function_deduction($deduction_id_filter,$filter_value,$filter_value2,$filter_value3);
                        $gettotalsssloandeduction=$this->Payslip_model->get_list(
                        $filter_deduction,
                        'SUM(deduction_amount) as total_sss_loan',
                        $joindeductions
                        );
                        /*$gettotalsssloandeduction=$this->PaySlip_deduction_model->get_list(
                        'deduction_id=5 AND active_deduct=TRUE',
                        'SUM(deduction_amount) as total_sss_loan'
                        );*/
                        //get total pagibig loan
                        $deduction_id_filter=6;
                        $filter_deduction=$this->PayrollReports_model->filter_function_deduction($deduction_id_filter,$filter_value,$filter_value2,$filter_value3);
                        $gettotalpagibigloandeduction=$this->Payslip_model->get_list(
                        $filter_deduction,
                        'SUM(deduction_amount) as total_pagibig_loan',
                        $joindeductions
                        );
                        /*$gettotalpagibigloandeduction=$this->PaySlip_deduction_model->get_list(
                        'deduction_id=6 AND active_deduct=TRUE',
                        'SUM(deduction_amount) as total_pagibig_loan'
                        );*/
                        //COOP LOAN DEDUCTION GET
                        $deduction_id_filter=8;
                        $filter_deduction=$this->PayrollReports_model->filter_function_deduction($deduction_id_filter,$filter_value,$filter_value2,$filter_value3);
                        $gettotalcooploandeduction=$this->Payslip_model->get_list(
                        $filter_deduction,
                        'SUM(deduction_amount) as total_coop_loan',
                        $joindeductions
                        );
                        /*$gettotalcooploandeduction=$this->PaySlip_deduction_model->get_list(
                        'deduction_id=8 AND active_deduct=TRUE',
                        'SUM(deduction_amount) as total_coop_loan'
                        );*/
                        //COOP CONTRIBUTION DEDUCTION GET
                        $deduction_id_filter=9;
                        $filter_deduction=$this->PayrollReports_model->filter_function_deduction($deduction_id_filter,$filter_value,$filter_value2,$filter_value3);
                        $gettotalcoopcontributiondeduction=$this->Payslip_model->get_list(
                        $filter_deduction,
                        'SUM(deduction_amount) as total_coop_contribution',
                        $joindeductions
                        );
                        //ATOE 1
                        $deduction_id_filter=14;
                        $filter_deduction=$this->PayrollReports_model->filter_function_deduction($deduction_id_filter,$filter_value,$filter_value2,$filter_value3);
                        $gettotalatoe1=$this->Payslip_model->get_list(
                        $filter_deduction,
                        'SUM(deduction_amount) as total_atoe1',
                        $joindeductions
                        );
                        //ATOE 2
                        $deduction_id_filter=14;
                        $filter_deduction=$this->PayrollReports_model->filter_function_deduction($deduction_id_filter,$filter_value,$filter_value2,$filter_value3);
                        $gettotalatoe2=$this->Payslip_model->get_list(
                        $filter_deduction,
                        'SUM(deduction_amount) as total_atoe2',
                        $joindeductions
                        );
                        //ATOE 3
                        $deduction_id_filter=11;
                        $filter_deduction=$this->PayrollReports_model->filter_function_deduction($deduction_id_filter,$filter_value,$filter_value2,$filter_value3);
                        $gettotalatoe3=$this->Payslip_model->get_list(
                        $filter_deduction,
                        'SUM(deduction_amount) as total_atoe3',
                        $joindeductions
                        );
                        if($filter_value3!="all"){
                            $getbranch=$this->RefBranch_model->get_list(
                            $filter_value3,
                            'ref_branch.branch'
                            );
                            $get_branch = $getbranch[0]->branch;
                        }
                        else{
                            $get_branch = "All";
                        }
                        /*echo json_encode($getbranch);*/
                        /*$gettotalcoopcontributiondeduction=$this->PaySlip_deduction_model->get_list(
                        'deduction_id=9 AND active_deduct=TRUE',
                        'SUM(deduction_amount) as total_coop_contribution'
                        );*/
                        //OTHER DEDUCTION GET
                        if($filter_value2=="all" AND $filter_value3=="all"){
                            $filter_deduct='refpayperiod.pay_period_id='.$filter_value.' AND deduction_id!=1 AND deduction_id!=2  AND deduction_id!=3  AND deduction_id!=4  AND deduction_id!=5
                             AND deduction_id!=6  AND deduction_id!=7  AND deduction_id!=8  AND deduction_id!=9 AND deduction_id!=14 AND deduction_id!=15 AND deduction_id!=11 AND emp_rates_duties.active_rates_duties=TRUE';
                        }
                        if($filter_value2=="all" AND $filter_value3!="all"){
                            $filter_deduct='refpayperiod.pay_period_id='.$filter_value.' AND ref_branch.ref_branch_id='.$filter_value3.' AND deduction_id!=1 AND deduction_id!=2  AND deduction_id!=3  AND deduction_id!=4  AND deduction_id!=5
                             AND deduction_id!=6  AND deduction_id!=7  AND deduction_id!=8  AND deduction_id!=9 AND deduction_id!=14 AND deduction_id!=15 AND deduction_id!=11 AND emp_rates_duties.active_rates_duties=TRUE';
                        }
                        if($filter_value2!="all" AND $filter_value3=="all"){
                            $filter_deduct='refpayperiod.pay_period_id='.$filter_value.' AND ref_department.ref_department_id='.$filter_value2.' AND deduction_id!=1 AND deduction_id!=2  AND deduction_id!=3  AND deduction_id!=4  AND deduction_id!=5
                             AND deduction_id!=6  AND deduction_id!=7  AND deduction_id!=8  AND deduction_id!=9 AND deduction_id!=14 AND deduction_id!=15 AND deduction_id!=11 AND emp_rates_duties.active_rates_duties=TRUE';
                        }
                        if($filter_value2!="all" AND $filter_value3!="all"){
                            $filter_deduct='refpayperiod.pay_period_id='.$filter_value.' AND ref_department.ref_department_id='.$filter_value2.'  AND ref_branch.ref_branch_id='.$filter_value3.' AND deduction_id!=1 AND deduction_id!=2  AND deduction_id!=3  AND deduction_id!=4  AND deduction_id!=5
                             AND deduction_id!=6  AND deduction_id!=7  AND deduction_id!=8  AND deduction_id!=9 AND deduction_id!=14 AND deduction_id!=15 AND deduction_id!=11 AND emp_rates_duties.active_rates_duties=TRUE';
                        }
                       /* $filter_deduction=$this->PayrollReports_model->filter_function_other_deduction($filter_value,$filter_value2,$filter_value3);*/
                        $gettotalotherdeduction=$this->Payslip_model->get_list(
                        $filter_deduct,
                            'SUM(deduction_amount) as total_other_deduction',
                        array(
                             array('daily_time_record','daily_time_record.dtr_id=pay_slip.dtr_id','left'),
                             array('pay_slip_deductions','pay_slip_deductions.pay_slip_id=pay_slip.pay_slip_id','left'),
                             array('refpayperiod','refpayperiod.pay_period_id=daily_time_record.pay_period_id','left'),
                             array('emp_rates_duties','emp_rates_duties.employee_id=daily_time_record.employee_id','left'),
                             array('ref_branch','ref_branch.ref_branch_id=emp_rates_duties.ref_branch_id','left'),
                             array('ref_department','ref_department.ref_department_id=emp_rates_duties.ref_department_id','left'),
                             )
                        );
                        /*echo json_encode($gettotalotherdeduction);*/
                        /*$gettotalotherdeduction=$this->PaySlip_deduction_model->get_list(
                        'deduction_id!=1  AND deduction_id!=2  AND deduction_id!=3  AND deduction_id!=4
                         AND deduction_id!=5  AND deduction_id!=6  AND deduction_id!=7  AND deduction_id!=8  AND deduction_id!=9 AND active_deduct=TRUE',
                        'SUM(deduction_amount) as total_other_deduction'
                        );*/

                       /*echo json_encode($gettotalotherdeduction);*/


                        $data['payroll_register_summary']=$getpayrollregsummary[0];
                        $data['total_adjustment_amount']=$getadjustment[0];
                        $data['total_other_pay']=$getotherpay[0];
                        $data['total_sss_deduct']=$gettotalsssdeduction[0];
                        $data['total_philhealth_deduct']=$gettotalphilhealthdeduction[0];
                        $data['total_pagibig_deduct']=$gettotalpagibigdeduction[0];
                        $data['total_withholdingtax_deduct']=$gettotalwithholdingdeduction[0];
                        $data['total_sss_loan']=$gettotalsssloandeduction[0];
                        $data['total_pagibig_loan']=$gettotalpagibigloandeduction[0];
                        $data['total_coop_loan']=$gettotalcooploandeduction[0];
                        $data['total_coop_contribution']=$gettotalcoopcontributiondeduction[0];
                        $data['total_other_deduction']=$gettotalotherdeduction[0];
                        $data['total_atoe1']=$gettotalatoe1[0];
                        $data['total_atoe2']=$gettotalatoe2[0];
                        $data['total_atoe3']=$gettotalatoe3[0];
                        $data['getbranch']=$get_branch;

                        if($type=='fullview'||$type==null){
                            echo $this->load->view('template/payroll_register_summary_html',$data,TRUE);
                            //echo $this->load->view('template/dr_content_menus',$data,TRUE);
                        }

                        //show only inside grid without menu button
                        if($type=='contentview'){
                            echo $this->load->view('template/payroll_register_summary_html',$data,TRUE);
                        }


                        //download pdf
                        if($type=='pdf'){
                            $pdfFilePath = "PR-Summary-".$getpayrollregsummary[0]->branch.".pdf"; //generate filename base on id
                            $pdf = $this->m_pdf->load(); //pass the instance of the mpdf class
                            $content=$this->load->view('template/payroll_register_summary',$data,TRUE); //load the template
                            $pdf->setFooter('{PAGENO}');
                            $pdf->WriteHTML($content);
                            //download it.
                            $pdf->Output($pdfFilePath,"D");

                        }

                        //preview on browser
                        if($type=='preview'){
                            $pdfFilePath = "PR-Summary-".$getpayrollregsummary[0]->branch.".pdf"; //generate filename base on id
                            $pdf = $this->m_pdf->load(); //pass the instance of the mpdf class
                            $content=$this->load->view('template/payroll_register_summary',$data,TRUE); //load the template
                            $pdf->setFooter('{PAGENO}');
                            $pdf->WriteHTML($content);
                            //download it.
                            /*$pdf->SetJS('this.print();');*/
                            $pdf->Output();
                        }

                        break;

            case 'payroll-employee-ledger': //
                        $data['loans']=$this->PayrollReports_model->getloan($filter_value,$filter_value2);
                        $loans = $data['loans'];
                        $getcompany=$this->GeneralSettings_model->get_list(
                        null,
                        'company_setup.*'
                        );
                         $data['company']=$getcompany[0];
                        if(isset($loans[0]->deduction_regular_id)){
                            $deduction_regular_id = $loans[0]->deduction_regular_id;
                            $data['loanadjustments']=$this->PayrollReports_model->getloanadjustments($deduction_regular_id);
                        }
                        else{

                        }


                            $typeofloan=$this->RefDeductionSetup_model->get_list(
                            $filter_value2,
                            'refdeduction.deduction_desc'
                            );
                            $get_type = $typeofloan[0]->deduction_desc;
                        $data['get_type']=$get_type;
                        /*$data['loanadjustments']=$this->PayrollReports_model->getloan($filter_value,$filter_value2);*/
                        $data['total_loan_amount']=$this->PayrollReports_model->getloanamount($filter_value,$filter_value2);
                        /*echo json_encode($data);*/
                            echo $this->load->view('template/payroll_employee_loans_html',$data,TRUE);

                        break;

            case 'payroll-loan-amount-get': //
                    $loan_total_amount=$this->PayrollReports_model->getloanamount($filter_value,$filter_value2);
                    if($loan_total_amount[0]->count==0 || $loan_total_amount[0]->count==null){
                        $response['deduction_regular_id']=$loan_total_amount[0]->deduction_regular_id;
                        $response['total_loan_amount']="No Loan Found";
                        $response['deduction_per_pay_amount']=0;
                        $response['deduction_total_amount']=0;
                        echo json_encode($response);
                    }
                    else{
                        /*$response['test'] = $loan_total_amount[0]->psdamount;*/
                        $totalbalance = $loan_total_amount[0]->deduction_total_amount;
                        $response['deduction_regular_id']=$loan_total_amount[0]->deduction_regular_id;
                        $response['total_loan_amount']=$loan_total_amount[0]->loan_total_amount;
                        $response['deduction_per_pay_amount']=$loan_total_amount[0]->deduction_per_pay_amount;
                        $response['deduction_total_amount']=$totalbalance;

                        echo json_encode($response);
                    }
            break;

            case 'alpha_list':
              $getcompany=$this->GeneralSettings_model->get_list(
              null,
              'company_setup.*'
              );

              $data['alpha_list']=$this->PayrollReports_model->get_alpha_list($filter_value);
              $data['year']=$filter_value;
              $data['company']=$getcompany[0];
                echo $this->load->view('template/alpha_list_html',$data,TRUE);
            break;

            case 'emp_sched_report':
              $getcompany=$this->GeneralSettings_model->get_list(
              null,
              'company_setup.*'
              );
              $data['company']=$getcompany[0];
              $data['emp_info']=$this->Employee_model->get_list(
                            'employee_list.employee_id='.$filter_value,
                            'employee_list.*,CONCAT(employee_list.first_name," ",employee_list.middle_name," ",employee_list.last_name) as full_name
                            ,ref_branch.branch,ref_department.department',
                            array(
                                array('emp_rates_duties','emp_rates_duties.emp_rates_duties_id=employee_list.emp_rates_duties_id','left'),
                                array('ref_branch','ref_branch.ref_branch_id=emp_rates_duties.ref_branch_id','left'),
                                array('ref_department','ref_department.ref_department_id=emp_rates_duties.ref_department_id','left'),
                                )
                            );

              $data['payperiod']=$this->RefPayPeriod_model->get_list(
                            'pay_period_id='.$filter_value2,
                            'CONCAT(pay_period_start," ~ ",pay_period_end) as pay_period'
              );

              $data['emp_sched_report']=$this->SchedEmployee_model->get_list(
                  'schedule_employee.is_deleted=0 AND schedule_employee.employee_id='.$filter_value.' AND schedule_employee.pay_period_id='.$filter_value2.' ',
                  'schedule_employee.*,sched_refpay.schedpay,sched_refshift.shift,CONCAT(employee_list.first_name," ",employee_list.middle_name," ",employee_list.last_name) as full_name, employee_list.ecode,
                  CASE WHEN ( ROUND((TIMESTAMPDIFF(MINUTE,schedule_employee.clock_in,schedule_employee.clock_out)/60)-(TIME_TO_SEC(schedule_employee.break_time) / 60 /60),2) )
                  >=
                  ( ROUND((TIMESTAMPDIFF(MINUTE,schedule_employee.time_in,schedule_employee.time_out)/60)-(TIME_TO_SEC(schedule_employee.break_time) / 60 /60),2) )
                  THEN ( ROUND((TIMESTAMPDIFF(MINUTE,schedule_employee.time_in,schedule_employee.time_out)/60)-(TIME_TO_SEC(schedule_employee.break_time) / 60 /60),2) )
                  ELSE
                  ( ROUND((TIMESTAMPDIFF(MINUTE,schedule_employee.clock_in,schedule_employee.clock_out)/60)-(TIME_TO_SEC(schedule_employee.break_time) / 60 /60),2) )
                  END as totalhrs',
                  array(
                      array('sched_refpay','sched_refpay.sched_refpay_id=schedule_employee.sched_refpay_id','left'),
                      array('sched_refshift','sched_refshift.sched_refshift_id=schedule_employee.sched_refshift_id','left'),
                      array('employee_list','employee_list.employee_id=schedule_employee.employee_id','left'),
                      ),
                  'schedule_employee.date ASC'
                  );

                echo $this->load->view('template/employee_schedule_report_html',$data,TRUE);
            break;
        }
    }
}
