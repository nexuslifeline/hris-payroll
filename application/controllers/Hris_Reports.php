<?php
defined('BASEPATH') OR exit('No direct script access allowed');
    require 'application/third_party/Carbon.php';
    use Carbon\Carbon;
class Hris_Reports extends CORE_Controller
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
        $this->load->model('DailyTimeRecord_model');



    }
    public function index() {
        //HRIS REPORTS
    }

    function reports($reports=null,$filter_value=null,$filter_value2=null,$filter_value3=null,$type=null){




        switch($reports){
            //****************************************************
            case 'personnel-list': //
                        if($filter_value=="all" AND $filter_value2=="all"){
                        $filter=array('emp_rates_duties.active_rates_duties'=>TRUE,'employee_list.is_deleted'=>FALSE);
                        }
                        if($filter_value=="all" AND $filter_value2!="all"){
                            $filter=array('employee_list.is_deleted'=>FALSE,'emp_rates_duties.active_rates_duties'=>TRUE,'ref_branch.ref_branch_id'=>$filter_value2);
                        }
                        if($filter_value!="all" AND $filter_value2=="all"){
                            $filter=array('employee_list.is_deleted'=>FALSE,'emp_rates_duties.active_rates_duties'=>TRUE,'ref_department.ref_department_id'=>$filter_value);
                        }
                        if($filter_value!="all" AND $filter_value2!="all"){
                            $filter=array('employee_list.is_deleted'=>FALSE,'emp_rates_duties.active_rates_duties'=>TRUE,'ref_department.ref_department_id'=>$filter_value,'ref_branch.ref_branch_id'=>$filter_value2);
                        }
                        $data['employee_dept']=$this->Employee_model->get_list(
                        $filter,
                        'employee_list.*,ref_department.department,ref_position.position,CONCAT(employee_list.first_name," ",employee_list.middle_name," ",employee_list.last_name) as full_name,emp_rates_duties.date_start',
                        array(
                             array('emp_rates_duties','emp_rates_duties.employee_id=employee_list.employee_id','left'),
                             array('ref_department','ref_department.ref_department_id=emp_rates_duties.ref_department_id','left'),
                             array('ref_position','ref_position.ref_position_id=emp_rates_duties.ref_position_id','left'),
                             array('ref_branch','ref_branch.ref_branch_id=emp_rates_duties.ref_branch_id','left'),
                             ),
                        'employee_list.first_name ASC'
                        );

                        $getcompany=$this->GeneralSettings_model->get_list(
                        null,
                        'company_setup.*'
                        );

                        if($filter_value=="all"){
                            $data['dept']="All Department";
                        }
                        else{
                        $getdept=$this->RefDepartment_model->get_list(
                        $filter_value,
                        'ref_department.department,'
                        );
                        $data['dept']=$getdept[0]->department;
                        }
                        if($filter_value2=="all"){
                            $data['branch']="All Branch";
                        }
                        else{
                        $getbranch=$this->RefBranch_model->get_list(
                        $filter_value2,
                        'ref_branch.branch,'
                        );
                        $data['branch']=$getbranch[0]->branch;
                        }
                        //echo $data['dept'];

                        $data['company']=$getcompany[0];
                            echo $this->load->view('template/hris_personnel_list_html',$data,TRUE);

                        break;

            case 'manpower-list': //
                        $data['branch']=$filter_value2;
                        $getcompany=$this->GeneralSettings_model->get_list(
                        null,
                        'company_setup.*'
                        );

                        $data['department']=$this->RefDepartment_model->get_list(
                        array('ref_department.is_deleted'=>FALSE),
                        'ref_department.ref_department_id,ref_department.department'
                        );
                        //echo $data['dept'];

                        $data['company']=$getcompany[0];
                        $manpower="Manpower List Active";
                        if($filter_value2=="all"){
                            $data['namebranch']="All Branch";
                        }
                        else{
                        $namebranch=$this->RefBranch_model->get_list(
                        $filter_value2,
                        'ref_branch.branch,'
                        );
                        $data['namebranch']=$namebranch[0]->branch;
                        }
                        //echo json_encode($data);
                        //show only inside grid with menu button
                            echo $this->load->view('template/hris_manpower_list_html',$data,TRUE);

                        break;

            case 'employee-tenure': //

                        $data['branch']=$filter_value2;
                        $getcompany=$this->GeneralSettings_model->get_list(
                        null,
                        'company_setup.*'
                        );

                        $data['department']=$this->RefDepartment_model->get_list(
                        array('ref_department.is_deleted'=>FALSE),
                        'ref_department.ref_department_id,ref_department.department'
                        );
                        //echo $data['dept'];

                        /*$data['branches']=$this->RefBranch_model->get_list(
                        array('ref_branch.is_deleted'=>FALSE),
                        'ref_branch.ref_branch_id,ref_branch.branch'
                        );*/

                        $data['company']=$getcompany[0];
                        $manpower="Employee Tenure";

                        if($filter_value2=="all"){
                            $data['namebranch']="All Branch";
                        }
                        else{
                        $namebranch=$this->RefBranch_model->get_list(
                        $filter_value2,
                        'ref_branch.branch,'
                        );
                        $data['namebranch']=$namebranch[0]->branch;
                        }
                        //echo json_encode($data);
                        //show only inside grid with menu button
                            echo $this->load->view('template/hris_employee_tenure_html',$data,TRUE);
                        break;

            case 'sss-list': //
                        //$data['month']=$filter_value;
                        //$data['branch']=$filter_value2;
                        if($filter_value2==1){
                             $month="January";
                        }
                        else if($filter_value2==2){
                             $month="February";
                        }
                        else if($filter_value2==3){
                             $month="March";
                        }
                        else if($filter_value2==4){
                            $month="April";
                        }
                        else if($filter_value2==5){
                             $month="May";
                        }
                        else if($filter_value2==6){
                             $month="June";
                        }
                        else if($filter_value2==7){
                             $month="July";
                        }
                        else if($filter_value2==8){
                             $month="August";
                        }
                        else if($filter_value2==9){
                            $month="September";
                        }
                        else if($filter_value2==10){
                             $month="October";
                        }
                        else if($filter_value2==11){
                             $month="November";
                        }
                        else if($filter_value2==12){
                             $month="December";
                        }
                        else{
                            $month="All";
                        }

                        if($filter_value=="all"){
                            $data['branch']="All Branch";
                        }
                        else{
                        $getbranch=$this->RefBranch_model->get_list(
                        $filter_value,
                        'ref_branch.branch,'
                        );
                        $data['branch']=$getbranch[0]->branch;
                        }

                        if($filter_value=="all" AND $filter_value2=="all"){
                            $filter='pay_slip_deductions.deduction_id=1 AND emp_rates_duties.active_rates_duties=1 AND extract(YEAR from refpayperiod.pay_period_start)='.$filter_value3;
                        }
                        if($filter_value!="all" AND $filter_value2=="all"){
                            $filter='pay_slip_deductions.deduction_id=1 AND emp_rates_duties.active_rates_duties=1 AND emp_rates_duties.ref_branch_id='.$filter_value.' AND extract(YEAR from refpayperiod.pay_period_start)='.$filter_value3;
                        }
                        if($filter_value=="all" AND $filter_value2!="all"){
                            $filter='pay_slip_deductions.deduction_id=1 AND emp_rates_duties.active_rates_duties=1 AND refpayperiod.month_id='.$filter_value2.' AND extract(YEAR from refpayperiod.pay_period_start)='.$filter_value3;
                        }
                        if($filter_value!="all" AND $filter_value2!="all"){
                            $filter='pay_slip_deductions.deduction_id=1 AND emp_rates_duties.active_rates_duties=1 AND emp_rates_duties.ref_branch_id='.$filter_value.' AND refpayperiod.month_id='.$filter_value2.' AND extract(YEAR from refpayperiod.pay_period_start)='.$filter_value3;
                        }
                        $data['sss_report']=$this->DailyTimeRecord_model->get_list(
                        $filter,
                        'employee_list.sss,employee_list.ecode,CONCAT(employee_list.first_name," ",employee_list.middle_name," ",employee_list.last_name) as full_name,ROUND(pay_slip_deductions.deduction_amount,2) as sss_deduction,daily_time_record.employee_id,daily_time_record.pay_period_id,pay_slip.pay_slip_id,refpayperiod.month_id,pay_slip_deductions.deduction_amount,
                        	pay_slip_deductions.sss_id,ref_sss_contribution.employer,ref_sss_contribution.employer_contribution,ref_sss_contribution.total,CONCAT(refpayperiod.pay_period_start,"~",refpayperiod.pay_period_end) as period',
                        array(
                             array('pay_slip','pay_slip.dtr_id=daily_time_record.dtr_id','left'),
                             array('refpayperiod','refpayperiod.pay_period_id=daily_time_record.pay_period_id','left'),
                             array('pay_slip_deductions','pay_slip_deductions.pay_slip_id=pay_slip.pay_slip_id','left'),
                             array('emp_rates_duties','emp_rates_duties.employee_id=daily_time_record.employee_id','left'),
                             array('employee_list','employee_list.employee_id=daily_time_record.employee_id','left'),
                             array('ref_sss_contribution','ref_sss_contribution.ref_sss_contribution_id=pay_slip_deductions.sss_id','left'),
                             ),
                        'employee_list.first_name ASC'
                        );
                        //echo json_encode($data);

                        $getcompany=$this->GeneralSettings_model->get_list(
                        null,
                        'company_setup.*'
                        );

                        $data['company']=$getcompany[0];
                        $data['month']=$month;
                        //echo json_encode($data);
                        //show only inside grid with menu button
                            echo $this->load->view('template/sss_list_html',$data,TRUE);
                        break;

                case 'philhealth-list': //
                        //$data['month']=$filter_value;
                        //$data['branch']=$filter_value2;
                        if($filter_value2==1){
                             $month="January";
                        }
                        else if($filter_value2==2){
                             $month="February";
                        }
                        else if($filter_value2==3){
                             $month="March";
                        }
                        else if($filter_value2==4){
                            $month="April";
                        }
                        else if($filter_value2==5){
                             $month="May";
                        }
                        else if($filter_value2==6){
                             $month="June";
                        }
                        else if($filter_value2==7){
                             $month="July";
                        }
                        else if($filter_value2==8){
                             $month="August";
                        }
                        else if($filter_value2==9){
                            $month="September";
                        }
                        else if($filter_value2==10){
                             $month="October";
                        }
                        else if($filter_value2==11){
                             $month="November";
                        }
                        else if($filter_value2==12){
                             $month="December";
                        }
                        else{
                            $month="All";
                        }

                        if($filter_value=="all"){
                            $data['branch']="All Branch";
                        }
                        else{
                        $getbranch=$this->RefBranch_model->get_list(
                        $filter_value,
                        'ref_branch.branch,'
                        );
                        $data['branch']=$getbranch[0]->branch;
                        }


                        if($filter_value=="all" AND $filter_value2=="all"){
                            $filter='pay_slip_deductions.deduction_id=2 AND emp_rates_duties.active_rates_duties=1 AND extract(YEAR from refpayperiod.pay_period_start)='.$filter_value3;
                        }
                        if($filter_value!="all" AND $filter_value2=="all"){
                            $filter='pay_slip_deductions.deduction_id=2 AND emp_rates_duties.active_rates_duties=1 AND emp_rates_duties.ref_branch_id='.$filter_value.' AND extract(YEAR from refpayperiod.pay_period_start)='.$filter_value3;
                        }
                        if($filter_value=="all" AND $filter_value2!="all"){
                            $filter='pay_slip_deductions.deduction_id=2 AND emp_rates_duties.active_rates_duties=1 AND refpayperiod.month_id='.$filter_value2.' AND extract(YEAR from refpayperiod.pay_period_start)='.$filter_value3;
                        }
                        if($filter_value!="all" AND $filter_value2!="all"){
                            $filter='pay_slip_deductions.deduction_id=2 AND emp_rates_duties.active_rates_duties=1 AND emp_rates_duties.ref_branch_id='.$filter_value.' AND refpayperiod.month_id='.$filter_value2.' AND extract(YEAR from refpayperiod.pay_period_start)='.$filter_value3;
                        }
                        $data['sss_report']=$this->DailyTimeRecord_model->get_list(
                        $filter,
                        'employee_list.phil_health,employee_list.ecode,CONCAT(employee_list.first_name," ",employee_list.middle_name," ",employee_list.last_name) as full_name,ROUND(pay_slip_deductions.deduction_amount,2) as philhealth_deduction,daily_time_record.employee_id,daily_time_record.pay_period_id,pay_slip.pay_slip_id,refpayperiod.month_id,pay_slip_deductions.deduction_amount,refpayperiod.pay_period_start',
                        array(
                             array('pay_slip','pay_slip.dtr_id=daily_time_record.dtr_id','left'),
                             array('refpayperiod','refpayperiod.pay_period_id=daily_time_record.pay_period_id','left'),
                             array('pay_slip_deductions','pay_slip_deductions.pay_slip_id=pay_slip.pay_slip_id','left'),
                             array('emp_rates_duties','emp_rates_duties.employee_id=daily_time_record.employee_id','left'),
                             array('employee_list','employee_list.employee_id=daily_time_record.employee_id','left'),
                             ),
                        'employee_list.first_name ASC'
                        );
                        //echo json_encode($data);

                        $getcompany=$this->GeneralSettings_model->get_list(
                        null,
                        'company_setup.*'
                        );

                        $data['company']=$getcompany[0];
                        $data['month']=$month;
                        //echo json_encode($data);
                        //show only inside grid with menu button
                        if($type=='fullview'||$type==null){
                            echo $this->load->view('template/philhealth_list_html',$data,TRUE);
                            //echo $this->load->view('template/dr_content_menus',$data,TRUE);
                        }

                        //show only inside grid without menu button
                        if($type=='contentview'){
                            echo $this->load->view('template/philhealth_list_html',$data,TRUE);
                        }


                        //download pdf
                        if($type=='pdf'){
                            $pdfFilePath = "PhilHealth-".$data['branch']."-".$month.".pdf"; //generate filename base on id
                            $pdf = $this->m_pdf->load(); //pass the instance of the mpdf class
                            $content=$this->load->view('template/philhealth_list',$data,TRUE); //load the template
                            $pdf->setFooter('{PAGENO}');
                            $pdf->WriteHTML($content);
                            //download it.
                            $pdf->Output($pdfFilePath,"D");

                        }

                        //preview on browser
                        if($type=='preview'){
                            $pdfFilePath = "PhilHealth-".$data['branch']."-".$month.".pdf"; //generate filename base on id
                            $pdf = $this->m_pdf->load(); //pass the instance of the mpdf class
                            $content=$this->load->view('template/philhealth_list',$data,TRUE); //load the template
                            $pdf->setFooter('{PAGENO}');
                            $pdf->WriteHTML($content);
                            //download it.
                            $pdf->SetJS('this.print();');
                            $pdf->Output();
                        }

                        break;

                case 'pagibig-list': //
                        //$data['month']=$filter_value;
                        //$data['branch']=$filter_value2;
                        if($filter_value2==1){
                             $month="January";
                        }
                        else if($filter_value2==2){
                             $month="February";
                        }
                        else if($filter_value2==3){
                             $month="March";
                        }
                        else if($filter_value2==4){
                            $month="April";
                        }
                        else if($filter_value2==5){
                             $month="May";
                        }
                        else if($filter_value2==6){
                             $month="June";
                        }
                        else if($filter_value2==7){
                             $month="July";
                        }
                        else if($filter_value2==8){
                             $month="August";
                        }
                        else if($filter_value2==9){
                            $month="September";
                        }
                        else if($filter_value2==10){
                             $month="October";
                        }
                        else if($filter_value2==11){
                             $month="November";
                        }
                        else if($filter_value2==12){
                             $month="December";
                        }
                        else{
                            $month="All";
                        }

                        if($filter_value=="all"){
                            $data['branch']="All Branch";
                        }
                        else{
                        $getbranch=$this->RefBranch_model->get_list(
                        $filter_value,
                        'ref_branch.branch,'
                        );
                        $data['branch']=$getbranch[0]->branch;
                        }


                        if($filter_value=="all" AND $filter_value2=="all"){
                            $filter='pay_slip_deductions.deduction_id=3 AND emp_rates_duties.active_rates_duties=1 AND extract(YEAR from refpayperiod.pay_period_start)='.$filter_value3;
                        }
                        if($filter_value!="all" AND $filter_value2=="all"){
                            $filter='pay_slip_deductions.deduction_id=3 AND emp_rates_duties.active_rates_duties=1 AND emp_rates_duties.ref_branch_id='.$filter_value.' AND extract(YEAR from refpayperiod.pay_period_start)='.$filter_value3;
                        }
                        if($filter_value=="all" AND $filter_value2!="all"){
                            $filter='pay_slip_deductions.deduction_id=3 AND emp_rates_duties.active_rates_duties=1 AND refpayperiod.month_id='.$filter_value2.' AND extract(YEAR from refpayperiod.pay_period_start)='.$filter_value3;
                        }
                        if($filter_value!="all" AND $filter_value2!="all"){
                            $filter='pay_slip_deductions.deduction_id=3 AND emp_rates_duties.active_rates_duties=1 AND emp_rates_duties.ref_branch_id='.$filter_value.' AND refpayperiod.month_id='.$filter_value2.' AND extract(YEAR from refpayperiod.pay_period_start)='.$filter_value3;
                        }
                        $data['sss_report']=$this->DailyTimeRecord_model->get_list(
                        $filter,
                        'employee_list.pag_ibig,employee_list.ecode,CONCAT(employee_list.first_name," ",employee_list.middle_name," ",employee_list.last_name) as full_name,ROUND(pay_slip_deductions.deduction_amount,2) as pagibig_deduction,daily_time_record.employee_id,daily_time_record.pay_period_id,pay_slip.pay_slip_id,refpayperiod.month_id,pay_slip_deductions.deduction_amount,refpayperiod.pay_period_start',
                        array(
                             array('pay_slip','pay_slip.dtr_id=daily_time_record.dtr_id','left'),
                             array('refpayperiod','refpayperiod.pay_period_id=daily_time_record.pay_period_id','left'),
                             array('pay_slip_deductions','pay_slip_deductions.pay_slip_id=pay_slip.pay_slip_id','left'),
                             array('emp_rates_duties','emp_rates_duties.employee_id=daily_time_record.employee_id','left'),
                             array('employee_list','employee_list.employee_id=daily_time_record.employee_id','left'),
                             ),
                        'employee_list.first_name ASC'
                        );
                        //echo json_encode($data);

                        $getcompany=$this->GeneralSettings_model->get_list(
                        null,
                        'company_setup.*'
                        );

                        $data['company']=$getcompany[0];
                        $data['month']=$month;
                        //echo json_encode($data);
                        //show only inside grid with menu button
                            echo $this->load->view('template/pagibig_list_html',$data,TRUE);

                        break;

                case 'wtax-list': //
                        //$data['month']=$filter_value;
                        //$data['month']=$filter_value2;
                        if($filter_value2==1){
                             $month="January";
                        }
                        else if($filter_value2==2){
                             $month="February";
                        }
                        else if($filter_value2==3){
                             $month="March";
                        }
                        else if($filter_value2==4){
                            $month="April";
                        }
                        else if($filter_value2==5){
                             $month="May";
                        }
                        else if($filter_value2==6){
                             $month="June";
                        }
                        else if($filter_value2==7){
                             $month="July";
                        }
                        else if($filter_value2==8){
                             $month="August";
                        }
                        else if($filter_value2==9){
                            $month="September";
                        }
                        else if($filter_value2==10){
                             $month="October";
                        }
                        else if($filter_value2==11){
                             $month="November";
                        }
                        else if($filter_value2==12){
                             $month="December";
                        }
                        else{
                            $month="All";
                        }

                        if($filter_value=="all"){
                            $data['branch']="All Branch";
                        }
                        else{
                        $getbranch=$this->RefBranch_model->get_list(
                        $filter_value,
                        'ref_branch.branch,'
                        );
                        $data['branch']=$getbranch[0]->branch;
                        }


                        if($filter_value=="all" AND $filter_value2=="all"){
                            $filter='pay_slip_deductions.deduction_id=4 AND emp_rates_duties.active_rates_duties=1 AND extract(YEAR from refpayperiod.pay_period_start)='.$filter_value3;
                        }
                        if($filter_value!="all" AND $filter_value2=="all"){
                            $filter='pay_slip_deductions.deduction_id=4 AND emp_rates_duties.active_rates_duties=1 AND emp_rates_duties.ref_branch_id='.$filter_value.' AND extract(YEAR from refpayperiod.pay_period_start)='.$filter_value3;
                        }
                        if($filter_value=="all" AND $filter_value2!="all"){
                            $filter='pay_slip_deductions.deduction_id=4 AND emp_rates_duties.active_rates_duties=1 AND refpayperiod.month_id='.$filter_value2.' AND extract(YEAR from refpayperiod.pay_period_start)='.$filter_value3;
                        }
                        if($filter_value!="all" AND $filter_value2!="all"){
                            $filter='pay_slip_deductions.deduction_id=4 AND emp_rates_duties.active_rates_duties=1 AND emp_rates_duties.ref_branch_id='.$filter_value.' AND refpayperiod.month_id='.$filter_value2.' AND extract(YEAR from refpayperiod.pay_period_start)='.$filter_value3;
                        }
                        $data['wtax_report']=$this->DailyTimeRecord_model->get_list(
                        $filter,
                        'employee_list.tin,employee_list.ecode,CONCAT(employee_list.first_name," ",employee_list.middle_name," ",employee_list.last_name) as full_name,pay_slip_deductions.deduction_amount as wtax_deduction,daily_time_record.employee_id,daily_time_record.pay_period_id,pay_slip.pay_slip_id,pay_slip.taxable_pay,refpayperiod.month_id,pay_slip_deductions.deduction_amount,refpayperiod.pay_period_start',
                        array(
                             array('pay_slip','pay_slip.dtr_id=daily_time_record.dtr_id','left'),
                             array('refpayperiod','refpayperiod.pay_period_id=daily_time_record.pay_period_id','left'),
                             array('pay_slip_deductions','pay_slip_deductions.pay_slip_id=pay_slip.pay_slip_id','left'),
                             array('emp_rates_duties','emp_rates_duties.employee_id=daily_time_record.employee_id','left'),
                             array('employee_list','employee_list.employee_id=daily_time_record.employee_id','left'),
                             ),
                        'employee_list.first_name ASC'
                        );
                        //echo json_encode($data);

                        $getcompany=$this->GeneralSettings_model->get_list(
                        null,
                        'company_setup.*'
                        );

                        $data['company']=$getcompany[0];
                        $data['month']=$month;
                        //echo json_encode($data);
                        //show only inside grid with menu button
                            echo $this->load->view('template/wtax_list_html',$data,TRUE);

                        break;

        }
    }


}
