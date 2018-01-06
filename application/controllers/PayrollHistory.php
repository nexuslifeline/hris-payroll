<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class PayrollHistory extends CORE_Controller
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


    }
    public function index() {
        $data['_def_css_files'] = $this->load->view('template/assets/css_files', '', TRUE);
        $data['_def_js_files'] = $this->load->view('template/assets/js_files', '', TRUE);
        $data['_switcher_settings'] = $this->load->view('template/elements/switcher', '', TRUE);
        $data['_side_bar_navigation'] = $this->load->view('template/elements/side_bar_navigation', '', TRUE);
        $data['_top_navigation'] = $this->load->view('template/elements/top_navigation', '', TRUE);
        $data['loader'] = $this->load->view('template/elements/loader', '', TRUE);
        $data['loaderscript'] = $this->load->view('template/elements/loaderscript', '', TRUE);
        $data['ref_branch']=$this->RefBranch_model->get_list(array('ref_branch.is_deleted'=>FALSE));
        $data['ref_department']=$this->RefDepartment_model->get_list(array('ref_department.is_deleted'=>FALSE));
        $data['title'] = 'Pay Slip';

        $this->load->view('pay_slip_view', $data);
    }

    function transaction($txn = null) {
        switch ($txn) {
            case 'list':
                $pay_period_id = $this->input->post('pay_period_id', TRUE);
                $ref_department_id = $this->input->post('ref_department_id', TRUE);
                $ref_branch_id = $this->input->post('ref_branch_id', TRUE);
                $space=" ";
                $test="";
                if($ref_department_id=="all" AND $ref_branch_id=="all"){
                $test=array('daily_time_record.pay_period_id'=>$pay_period_id,'daily_time_record.is_deleted'=>FALSE,'emp_rates_duties.active_rates_duties'=>TRUE,'employee_list.is_deleted'=>FALSE);
                }
                if($ref_department_id=="all" AND $ref_branch_id!="all"){
                $test=array('daily_time_record.pay_period_id'=>$pay_period_id,'daily_time_record.is_deleted'=>FALSE,'emp_rates_duties.active_rates_duties'=>TRUE,'emp_rates_duties.ref_branch_id'=>$ref_branch_id,'employee_list.is_deleted'=>FALSE);

                }
                if($ref_department_id!="all" AND $ref_branch_id=="all"){
                $test=array('daily_time_record.pay_period_id'=>$pay_period_id,'daily_time_record.is_deleted'=>FALSE,'emp_rates_duties.active_rates_duties'=>TRUE,'emp_rates_duties.ref_department_id'=>$ref_department_id,'employee_list.is_deleted'=>FALSE);

                }
                if($ref_department_id!="all" AND $ref_branch_id!="all"){
                $test=array('daily_time_record.pay_period_id'=>$pay_period_id,'daily_time_record.is_deleted'=>FALSE,'emp_rates_duties.active_rates_duties'=>TRUE,'emp_rates_duties.ref_department_id'=>$ref_department_id,'emp_rates_duties.ref_branch_id'=>$ref_branch_id,'employee_list.is_deleted'=>FALSE);

                }
                $response['data']=$this->Payslip_model->get_list(
                    $test,
                    'pay_slip.net_pay,pay_slip.pay_slip_id,employee_list.*,CONCAT(employee_list.first_name," ",middle_name," ",employee_list.last_name) as full_name',
                    array(
                        array('daily_time_record','daily_time_record.dtr_id=pay_slip.dtr_id','left'),
                         array('employee_list','employee_list.employee_id=daily_time_record.employee_id','left'),
                         array('emp_rates_duties','emp_rates_duties.emp_rates_duties_id=employee_list.emp_rates_duties_id','left'),
                         )
                    );
                echo json_encode($response);

                break;
        }
    }


    function layout($layout=null,$filter_value=null,$filter_value2=null,$filter_value3,$type=null){




        switch($layout){
            //****************************************************
            case 'employeee-payroll-history': //
                        //show only inside grid with menu button
                        if($filter_value!="all" AND $filter_value2!="all"){
                            $getpayrollregsummary=$this->PayrollReports_model->get_employee_history($filter_value,$filter_value2,$filter_value3);
                            /*echo json_encode($getpayrollregsummary);*/
                        }
                        if($filter_value=="all" AND $filter_value2!="all"){
                            $getpayrollregsummary=$this->PayrollReports_model->get_employee_history_filter_year($filter_value2,$filter_value3);
                        }
                        // if($filter_value!="all" AND $filter_value2=="all"){
                        //     $getpayrollregsummary=$this->PayrollReports_model->get_employee_history_filter_employee($filter_value,$filter_value3);
                        // }
                        // if($filter_value=="all" AND $filter_value2=="all"){
                        //     $getpayrollregsummary=$this->PayrollReports_model->get_employee_history_wofilter($filter_value3);
                        // }

                        /*echo json_encode($getpayrollregsummary);*/
                        /*$getpayrollregsummary=$this->Payslip_model->get_list(
                        null,
                        'pay_slip.*,refpayperiod.pay_period_start,refpayperiod.pay_period_end',
                        array(
                             array('daily_time_record','daily_time_record.dtr_id=pay_slip.dtr_id','left'),
                             array('refpayperiod','refpayperiod.pay_period_id=daily_time_record.pay_period_id','left'),
                             )
                        );*/
                        /*//GET SALARY ADJUSTMENTS
                        $getadjustment=$this->Payslip_OtherEarning_model->get_list(
                        array('pay_slip_other_earnings.earnings_id'=>2),
                        'SUM(earnings_amount) as total_adjustment_amount'
                        );
                         //GET OTHER PAY/EARNING
                        $getotherpay=$this->Payslip_OtherEarning_model->get_list(
                        'pay_slip_other_earnings.earnings_id!=2',
                        'SUM(earnings_amount) as total_other_pay'
                        );
                         //TOTAL SSS DEDUCTION GET
                        $gettotalsssdeduction=$this->PaySlip_deduction_model->get_list(
                        'deduction_id=1 AND active_deduct=TRUE',
                        'SUM(deduction_amount) as total_sss_deduct'
                        );

                        //TOTAL PHILHEALTH GET
                        $gettotalphilhealthdeduction=$this->PaySlip_deduction_model->get_list(
                        'deduction_id=2 AND active_deduct=TRUE',
                        'SUM(deduction_amount) as total_philhealth_deduct'
                        );
                        //TOTAL PHILHEALTH GET
                        $gettotalpagibigdeduction=$this->PaySlip_deduction_model->get_list(
                        'deduction_id=3 AND active_deduct=TRUE',
                        'SUM(deduction_amount) as total_pagibig_deduct'
                        );

                        $gettotalwithholdingdeduction=$this->PaySlip_deduction_model->get_list(
                        'deduction_id=4 AND active_deduct=TRUE',
                        'SUM(deduction_amount) as total_withholdingtax_deduct'
                        );
                        //get total sss loan
                        $gettotalsssloandeduction=$this->PaySlip_deduction_model->get_list(
                        'deduction_id=5 AND active_deduct=TRUE',
                        'SUM(deduction_amount) as total_sss_loan'
                        );
                        //get total pagibig loan
                        $gettotalpagibigloandeduction=$this->PaySlip_deduction_model->get_list(
                        'deduction_id=6 AND active_deduct=TRUE',
                        'SUM(deduction_amount) as total_pagibig_loan'
                        );
                        //COOP LOAN DEDUCTION GET
                        $gettotalcooploandeduction=$this->PaySlip_deduction_model->get_list(
                        'deduction_id=8 AND active_deduct=TRUE',
                        'SUM(deduction_amount) as total_coop_loan'
                        );
                        //COOP CONTRIBUTION DEDUCTION GET
                        $gettotalcoopcontributiondeduction=$this->PaySlip_deduction_model->get_list(
                        'deduction_id=9 AND active_deduct=TRUE',
                        'SUM(deduction_amount) as total_coop_contribution'
                        );
                        //OTHER DEDUCTION GET
                        $gettotalotherdeduction=$this->PaySlip_deduction_model->get_list(
                        'deduction_id!=1  AND deduction_id!=2  AND deduction_id!=3  AND deduction_id!=4
                         AND deduction_id!=5  AND deduction_id!=6  AND deduction_id!=7  AND deduction_id!=8  AND deduction_id!=9 AND active_deduct=TRUE',
                        'SUM(deduction_amount) as total_other_deduction'
                        );*/

                       /*echo json_encode($gettotalotherdeduction);*/

                        /*echo json_encode($getpayrollregsummary);*/
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

                        $data['payroll_register_summary']=$getpayrollregsummary;
                        $data['get_branch']=$get_branch;
                        $getcompany=$this->GeneralSettings_model->get_list(
                        null,
                        'company_setup.*'
                        );
                        $data['company']=$getcompany[0];

                        /*$data['total_adjustment_amount']=$getadjustment[0];
                        $data['total_other_pay']=$getotherpay[0];
                        $data['total_sss_deduct']=$gettotalsssdeduction[0];
                        $data['total_philhealth_deduct']=$gettotalphilhealthdeduction[0];
                        $data['total_pagibig_deduct']=$gettotalpagibigdeduction[0];
                        $data['total_withholdingtax_deduct']=$gettotalwithholdingdeduction[0];
                        $data['total_sss_loan']=$gettotalsssloandeduction[0];
                        $data['total_pagibig_loan']=$gettotalpagibigloandeduction[0];
                        $data['total_coop_loan']=$gettotalcooploandeduction[0];
                        $data['total_coop_contribution']=$gettotalcoopcontributiondeduction[0];
                        $data['total_other_deduction']=$gettotalotherdeduction[0];*/
                            echo $this->load->view('template/employee_payroll_history_html',$data,TRUE);

                        break;

            case 'employeee-monthly-salary': //

                        $filter2 = explode('~',$filter_value2);
                        $filter_value2 = $filter2[0];
                        $filter_year = $filter2[1];
                        //show only inside grid with menu button
                        if($filter_value!="all" AND $filter_value2!="all"){
                            $getpayrollregsummary=$this->PayrollReports_model->get_monthly_salary_history($filter_value,$filter_value2,$filter_value3,$filter_year);
                            /*echo json_encode($getpayrollregsummary);*/
                        }
                        if($filter_value=="all" AND $filter_value2!="all"){
                            $getpayrollregsummary=$this->PayrollReports_model->get_monthly_salary_filter_year($filter_value2,$filter_value3,$filter_year);
                        }
                        // if($filter_value!="all" AND $filter_value2=="all"){
                        //   echo 3;
                        //     $getpayrollregsummary=$this->PayrollReports_model->get_monthly_salary_filter_employee($filter_value,$filter_value3,$filter_year);
                        // }
                        // if($filter_value=="all" AND $filter_value2=="all"){
                        //   echo 4;
                        //     $getpayrollregsummary=$this->PayrollReports_model->get_monthly_salary_wofilter($filter_value3,$filter_year);
                        // }

                        /*echo json_encode($getpayrollregsummary);*/
                        /*$getpayrollregsummary=$this->Payslip_model->get_list(
                        null,
                        'pay_slip.*,refpayperiod.pay_period_start,refpayperiod.pay_period_end',
                        array(
                             array('daily_time_record','daily_time_record.dtr_id=pay_slip.dtr_id','left'),
                             array('refpayperiod','refpayperiod.pay_period_id=daily_time_record.pay_period_id','left'),
                             )
                        );*/
                        /*//GET SALARY ADJUSTMENTS
                        $getadjustment=$this->Payslip_OtherEarning_model->get_list(
                        array('pay_slip_other_earnings.earnings_id'=>2),
                        'SUM(earnings_amount) as total_adjustment_amount'
                        );
                         //GET OTHER PAY/EARNING
                        $getotherpay=$this->Payslip_OtherEarning_model->get_list(
                        'pay_slip_other_earnings.earnings_id!=2',
                        'SUM(earnings_amount) as total_other_pay'
                        );
                         //TOTAL SSS DEDUCTION GET
                        $gettotalsssdeduction=$this->PaySlip_deduction_model->get_list(
                        'deduction_id=1 AND active_deduct=TRUE',
                        'SUM(deduction_amount) as total_sss_deduct'
                        );

                        //TOTAL PHILHEALTH GET
                        $gettotalphilhealthdeduction=$this->PaySlip_deduction_model->get_list(
                        'deduction_id=2 AND active_deduct=TRUE',
                        'SUM(deduction_amount) as total_philhealth_deduct'
                        );
                        //TOTAL PHILHEALTH GET
                        $gettotalpagibigdeduction=$this->PaySlip_deduction_model->get_list(
                        'deduction_id=3 AND active_deduct=TRUE',
                        'SUM(deduction_amount) as total_pagibig_deduct'
                        );

                        $gettotalwithholdingdeduction=$this->PaySlip_deduction_model->get_list(
                        'deduction_id=4 AND active_deduct=TRUE',
                        'SUM(deduction_amount) as total_withholdingtax_deduct'
                        );
                        //get total sss loan
                        $gettotalsssloandeduction=$this->PaySlip_deduction_model->get_list(
                        'deduction_id=5 AND active_deduct=TRUE',
                        'SUM(deduction_amount) as total_sss_loan'
                        );
                        //get total pagibig loan
                        $gettotalpagibigloandeduction=$this->PaySlip_deduction_model->get_list(
                        'deduction_id=6 AND active_deduct=TRUE',
                        'SUM(deduction_amount) as total_pagibig_loan'
                        );
                        //COOP LOAN DEDUCTION GET
                        $gettotalcooploandeduction=$this->PaySlip_deduction_model->get_list(
                        'deduction_id=8 AND active_deduct=TRUE',
                        'SUM(deduction_amount) as total_coop_loan'
                        );
                        //COOP CONTRIBUTION DEDUCTION GET
                        $gettotalcoopcontributiondeduction=$this->PaySlip_deduction_model->get_list(
                        'deduction_id=9 AND active_deduct=TRUE',
                        'SUM(deduction_amount) as total_coop_contribution'
                        );
                        //OTHER DEDUCTION GET
                        $gettotalotherdeduction=$this->PaySlip_deduction_model->get_list(
                        'deduction_id!=1  AND deduction_id!=2  AND deduction_id!=3  AND deduction_id!=4
                         AND deduction_id!=5  AND deduction_id!=6  AND deduction_id!=7  AND deduction_id!=8  AND deduction_id!=9 AND active_deduct=TRUE',
                        'SUM(deduction_amount) as total_other_deduction'
                        );*/

                       /*echo json_encode($gettotalotherdeduction);*/

                        /*echo json_encode($getpayrollregsummary);*/
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

                        $data['payroll_register_summary']=$getpayrollregsummary;
                        $data['get_branch']=$get_branch;
                        $data['month']=$filter_value2;
                        $getcompany=$this->GeneralSettings_model->get_list(
                        null,
                        'company_setup.*'
                        );
                        $data['company']=$getcompany[0];



                        /*$data['total_adjustment_amount']=$getadjustment[0];
                        $data['total_other_pay']=$getotherpay[0];
                        $data['total_sss_deduct']=$gettotalsssdeduction[0];
                        $data['total_philhealth_deduct']=$gettotalphilhealthdeduction[0];
                        $data['total_pagibig_deduct']=$gettotalpagibigdeduction[0];
                        $data['total_withholdingtax_deduct']=$gettotalwithholdingdeduction[0];
                        $data['total_sss_loan']=$gettotalsssloandeduction[0];
                        $data['total_pagibig_loan']=$gettotalpagibigloandeduction[0];
                        $data['total_coop_loan']=$gettotalcooploandeduction[0];
                        $data['total_coop_contribution']=$gettotalcoopcontributiondeduction[0];
                        $data['total_other_deduction']=$gettotalotherdeduction[0];*/
                            echo $this->load->view('template/employee_monthly_salary_html',$data,TRUE);

                        break;
            case 'employeee-yearly-salary': //

                        //show only inside grid with menu button
                        if($filter_value!="all" AND $filter_value2!="all"){
                            $getpayrollregsummary=$this->PayrollReports_model->get_yearly_salary_history($filter_value,$filter_value2,$filter_value3);
                            /*echo json_encode($getpayrollregsummary);*/
                        }
                        if($filter_value=="all" AND $filter_value2!="all"){
                            $getpayrollregsummary=$this->PayrollReports_model->get_yearly_salary_filter_year($filter_value2,$filter_value3);
                        }
                        // if($filter_value!="all" AND $filter_value2=="all"){
                        //     $getpayrollregsummary=$this->PayrollReports_model->get_yearly_salary_filter_employee($filter_value,$filter_value3);
                        // }
                        // if($filter_value=="all" AND $filter_value2=="all"){
                        //     $getpayrollregsummary=$this->PayrollReports_model->get_yearly_salary_wofilter($filter_value3);
                        // }

                        /*echo json_encode($getpayrollregsummary);*/
                        /*$getpayrollregsummary=$this->Payslip_model->get_list(
                        null,
                        'pay_slip.*,refpayperiod.pay_period_start,refpayperiod.pay_period_end',
                        array(
                             array('daily_time_record','daily_time_record.dtr_id=pay_slip.dtr_id','left'),
                             array('refpayperiod','refpayperiod.pay_period_id=daily_time_record.pay_period_id','left'),
                             )
                        );*/
                        /*//GET SALARY ADJUSTMENTS
                        $getadjustment=$this->Payslip_OtherEarning_model->get_list(
                        array('pay_slip_other_earnings.earnings_id'=>2),
                        'SUM(earnings_amount) as total_adjustment_amount'
                        );
                         //GET OTHER PAY/EARNING
                        $getotherpay=$this->Payslip_OtherEarning_model->get_list(
                        'pay_slip_other_earnings.earnings_id!=2',
                        'SUM(earnings_amount) as total_other_pay'
                        );
                         //TOTAL SSS DEDUCTION GET
                        $gettotalsssdeduction=$this->PaySlip_deduction_model->get_list(
                        'deduction_id=1 AND active_deduct=TRUE',
                        'SUM(deduction_amount) as total_sss_deduct'
                        );

                        //TOTAL PHILHEALTH GET
                        $gettotalphilhealthdeduction=$this->PaySlip_deduction_model->get_list(
                        'deduction_id=2 AND active_deduct=TRUE',
                        'SUM(deduction_amount) as total_philhealth_deduct'
                        );
                        //TOTAL PHILHEALTH GET
                        $gettotalpagibigdeduction=$this->PaySlip_deduction_model->get_list(
                        'deduction_id=3 AND active_deduct=TRUE',
                        'SUM(deduction_amount) as total_pagibig_deduct'
                        );

                        $gettotalwithholdingdeduction=$this->PaySlip_deduction_model->get_list(
                        'deduction_id=4 AND active_deduct=TRUE',
                        'SUM(deduction_amount) as total_withholdingtax_deduct'
                        );
                        //get total sss loan
                        $gettotalsssloandeduction=$this->PaySlip_deduction_model->get_list(
                        'deduction_id=5 AND active_deduct=TRUE',
                        'SUM(deduction_amount) as total_sss_loan'
                        );
                        //get total pagibig loan
                        $gettotalpagibigloandeduction=$this->PaySlip_deduction_model->get_list(
                        'deduction_id=6 AND active_deduct=TRUE',
                        'SUM(deduction_amount) as total_pagibig_loan'
                        );
                        //COOP LOAN DEDUCTION GET
                        $gettotalcooploandeduction=$this->PaySlip_deduction_model->get_list(
                        'deduction_id=8 AND active_deduct=TRUE',
                        'SUM(deduction_amount) as total_coop_loan'
                        );
                        //COOP CONTRIBUTION DEDUCTION GET
                        $gettotalcoopcontributiondeduction=$this->PaySlip_deduction_model->get_list(
                        'deduction_id=9 AND active_deduct=TRUE',
                        'SUM(deduction_amount) as total_coop_contribution'
                        );
                        //OTHER DEDUCTION GET
                        $gettotalotherdeduction=$this->PaySlip_deduction_model->get_list(
                        'deduction_id!=1  AND deduction_id!=2  AND deduction_id!=3  AND deduction_id!=4
                         AND deduction_id!=5  AND deduction_id!=6  AND deduction_id!=7  AND deduction_id!=8  AND deduction_id!=9 AND active_deduct=TRUE',
                        'SUM(deduction_amount) as total_other_deduction'
                        );*/

                       /*echo json_encode($gettotalotherdeduction);*/

                        /*echo json_encode($getpayrollregsummary);*/
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

                        $data['payroll_register_summary']=$getpayrollregsummary;
                        $data['get_branch']=$get_branch;
                        $data['yearly']=$filter_value2;
                        $getcompany=$this->GeneralSettings_model->get_list(
                        null,
                        'company_setup.*'
                        );
                        $data['company']=$getcompany[0];



                        /*$data['total_adjustment_amount']=$getadjustment[0];
                        $data['total_other_pay']=$getotherpay[0];
                        $data['total_sss_deduct']=$gettotalsssdeduction[0];
                        $data['total_philhealth_deduct']=$gettotalphilhealthdeduction[0];
                        $data['total_pagibig_deduct']=$gettotalpagibigdeduction[0];
                        $data['total_withholdingtax_deduct']=$gettotalwithholdingdeduction[0];
                        $data['total_sss_loan']=$gettotalsssloandeduction[0];
                        $data['total_pagibig_loan']=$gettotalpagibigloandeduction[0];
                        $data['total_coop_loan']=$gettotalcooploandeduction[0];
                        $data['total_coop_contribution']=$gettotalcoopcontributiondeduction[0];
                        $data['total_other_deduction']=$gettotalotherdeduction[0];*/
                            echo $this->load->view('template/employee_yearly_salary_html',$data,TRUE);

                        break;

                     case 'employeee-13thmonth-pay': //
                        //show only inside grid with menu button
                        if($filter_value!="all" AND $filter_value2!="all"){
                            $get13thmonth_pay=$this->PayrollReports_model->get_13thmonthpay($filter_value,$filter_value2,$filter_value3);
                            /*echo json_encode($getpayrollregsummary);*/
                        }
                        if($filter_value=="all" AND $filter_value2!="all"){
                            $get13thmonth_pay=$this->PayrollReports_model->get_13thmonthpay_year_filter($filter_value2,$filter_value3);
                        }
                        if($filter_value!="all" AND $filter_value2=="all"){
                            $get13thmonth_pay=$this->PayrollReports_model->get_13thmonthpay_employee_filter($filter_value,$filter_value3);
                        }
                        if($filter_value=="all" AND $filter_value2=="all"){
                            $get13thmonth_pay=$this->PayrollReports_model->get_13thmonthpay_wofilter($filter_value3);
                        }

                        /*echo json_encode($getpayrollregsummary);*/
                        /*$getpayrollregsummary=$this->Payslip_model->get_list(
                        null,
                        'pay_slip.*,refpayperiod.pay_period_start,refpayperiod.pay_period_end',
                        array(
                             array('daily_time_record','daily_time_record.dtr_id=pay_slip.dtr_id','left'),
                             array('refpayperiod','refpayperiod.pay_period_id=daily_time_record.pay_period_id','left'),
                             )
                        );*/
                        /*//GET SALARY ADJUSTMENTS
                        $getadjustment=$this->Payslip_OtherEarning_model->get_list(
                        array('pay_slip_other_earnings.earnings_id'=>2),
                        'SUM(earnings_amount) as total_adjustment_amount'
                        );
                         //GET OTHER PAY/EARNING
                        $getotherpay=$this->Payslip_OtherEarning_model->get_list(
                        'pay_slip_other_earnings.earnings_id!=2',
                        'SUM(earnings_amount) as total_other_pay'
                        );
                         //TOTAL SSS DEDUCTION GET
                        $gettotalsssdeduction=$this->PaySlip_deduction_model->get_list(
                        'deduction_id=1 AND active_deduct=TRUE',
                        'SUM(deduction_amount) as total_sss_deduct'
                        );

                        //TOTAL PHILHEALTH GET
                        $gettotalphilhealthdeduction=$this->PaySlip_deduction_model->get_list(
                        'deduction_id=2 AND active_deduct=TRUE',
                        'SUM(deduction_amount) as total_philhealth_deduct'
                        );
                        //TOTAL PHILHEALTH GET
                        $gettotalpagibigdeduction=$this->PaySlip_deduction_model->get_list(
                        'deduction_id=3 AND active_deduct=TRUE',
                        'SUM(deduction_amount) as total_pagibig_deduct'
                        );

                        $gettotalwithholdingdeduction=$this->PaySlip_deduction_model->get_list(
                        'deduction_id=4 AND active_deduct=TRUE',
                        'SUM(deduction_amount) as total_withholdingtax_deduct'
                        );
                        //get total sss loan
                        $gettotalsssloandeduction=$this->PaySlip_deduction_model->get_list(
                        'deduction_id=5 AND active_deduct=TRUE',
                        'SUM(deduction_amount) as total_sss_loan'
                        );
                        //get total pagibig loan
                        $gettotalpagibigloandeduction=$this->PaySlip_deduction_model->get_list(
                        'deduction_id=6 AND active_deduct=TRUE',
                        'SUM(deduction_amount) as total_pagibig_loan'
                        );
                        //COOP LOAN DEDUCTION GET
                        $gettotalcooploandeduction=$this->PaySlip_deduction_model->get_list(
                        'deduction_id=8 AND active_deduct=TRUE',
                        'SUM(deduction_amount) as total_coop_loan'
                        );
                        //COOP CONTRIBUTION DEDUCTION GET
                        $gettotalcoopcontributiondeduction=$this->PaySlip_deduction_model->get_list(
                        'deduction_id=9 AND active_deduct=TRUE',
                        'SUM(deduction_amount) as total_coop_contribution'
                        );
                        //OTHER DEDUCTION GET
                        $gettotalotherdeduction=$this->PaySlip_deduction_model->get_list(
                        'deduction_id!=1  AND deduction_id!=2  AND deduction_id!=3  AND deduction_id!=4
                         AND deduction_id!=5  AND deduction_id!=6  AND deduction_id!=7  AND deduction_id!=8  AND deduction_id!=9 AND active_deduct=TRUE',
                        'SUM(deduction_amount) as total_other_deduction'
                        );*/

                       /*echo json_encode($gettotalotherdeduction);*/

                        /*echo json_encode($getpayrollregsummary);*/
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

                        $data['get13thmonth_pay']=$get13thmonth_pay;
                        $data['get_branch']=$get_branch;
                        $data['yearfilter']=$filter_value2;
                        $getcompany=$this->GeneralSettings_model->get_list(
                        null,
                        'company_setup.*'
                        );
                        $data['company']=$getcompany[0];


                        /*$data['total_adjustment_amount']=$getadjustment[0];
                        $data['total_other_pay']=$getotherpay[0];
                        $data['total_sss_deduct']=$gettotalsssdeduction[0];
                        $data['total_philhealth_deduct']=$gettotalphilhealthdeduction[0];
                        $data['total_pagibig_deduct']=$gettotalpagibigdeduction[0];
                        $data['total_withholdingtax_deduct']=$gettotalwithholdingdeduction[0];
                        $data['total_sss_loan']=$gettotalsssloandeduction[0];
                        $data['total_pagibig_loan']=$gettotalpagibigloandeduction[0];
                        $data['total_coop_loan']=$gettotalcooploandeduction[0];
                        $data['total_coop_contribution']=$gettotalcoopcontributiondeduction[0];
                        $data['total_other_deduction']=$gettotalotherdeduction[0];*/
                        echo $this->load->view('template/employee_13thmonth_html',$data,TRUE);

                        break;

                        case 'employee-compensation':
                            $data['employee_compensation']=$this->PayrollReports_model->get_employee_compensation($filter_value,$filter_value2);
                            $data['employeename']=$this->Employee_model->get_list(
                            $filter_value,
                            'CONCAT(employee_list.first_name," ",middle_name," ",employee_list.last_name) as full_name,ecode'
                            );
                            $data['date']=$filter_value2;
                            $getcompany=$this->GeneralSettings_model->get_list(
                            null,
                            'company_setup.*'
                            );
                            $data['company']=$getcompany[0];

                            echo $this->load->view('template/employee_compensation_html',$data,TRUE);
                            // echo json_encode($data);
                        break;

                        case 'employee-deduction-history':
                            $data['employee_deduction']=$this->PayrollReports_model->get_employee_deduction_history($filter_value,$filter_value2);
                            $data['employeename']=$this->Employee_model->get_list(
                            $filter_value,
                            'CONCAT(employee_list.first_name," ",middle_name," ",employee_list.last_name) as full_name,ecode'
                            );
                            $data['date']=$filter_value2;
                            $getcompany=$this->GeneralSettings_model->get_list(
                            null,
                            'company_setup.*'
                            );
                            $data['company']=$getcompany[0];
                            echo $this->load->view('template/employee_deduction_history_html',$data,TRUE);
                            // echo json_encode($data);
                        break;

                        case 'date':
                            date_default_timezone_set("Asia/Taipei");
                            echo "The time is " .date("Y/m/d");
                        break;

        }
    }
}
