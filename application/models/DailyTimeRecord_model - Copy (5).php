<?php

class DailyTimeRecord_model extends CORE_Model {
    protected  $table="daily_time_record";
    protected  $pk_id="dtr_id";

    function __construct() {
        parent::__construct();
    }

    function getwithoutdtr($pay_period_id) {
        $query = $this->db->query('SELECT employee_list.*,ref_department.department FROM employee_list LEFT JOIN emp_rates_duties ON employee_list.employee_id=emp_rates_duties.employee_id
        LEFT JOIN ref_department ON emp_rates_duties.ref_department_id=ref_department.ref_department_id
         WHERE employee_list.emp_rates_duties_id!=0 AND emp_rates_duties.active_rates_duties=1 AND employee_list.employee_id NOT IN(SELECT employee_id FROM daily_time_record WHERE pay_period_id ='.$pay_period_id.') ORDER BY ecode;');
                            $query->result();
                                
                          return $query->result();
    }
     function getwithoutdtrBACKUP($pay_period_id) {
        $query = $this->db->query('SELECT employee_list.*,ref_department.ref_department_id,ref_department.department,
         emp_rates_duties.emp_rates_duties_id FROM employee_list LEFT JOIN emp_rates_duties ON employee_list.employee_id=emp_rates_duties.employee_id
         LEFT JOIN ref_department ON emp_rates_duties.ref_department_id=ref_department.ref_department_id
         WHERE employee_list.employee_id NOT IN(SELECT employee_id FROM daily_time_record WHERE pay_period_id ='.$pay_period_id.')');
                            $query->result();
                                
                          return $query->result();
    }
    function applyisdeduct($m_dtr_id,$is_deduct){
        for($i=0;$i<count($is_deduct);$i++){
                        $sql = 'UPDATE dtr_deductions SET is_deduct=1 WHERE dtr_id='.$m_dtr_id.' AND deduction_id='.$is_deduct[$i];
                        $this->db->query($sql);
                    }
    }

    function get_per_hour_pay($employee_id) {
      $query = $this->db->query('SELECT * FROM emp_rates_duties
                                WHERE active_rates_duties=1 AND employee_id='.$employee_id);
                                foreach ($query->result() as $row)
                                  {
                                          $per_hour_pay = $row->per_hour_pay;
                                  }
                                  return $per_hour_pay;
    }

    function get_semi_monthly_pay($employee_id) {
      $query = $this->db->query('SELECT salary_reg_rates,ref_payment_type_id FROM emp_rates_duties
                                WHERE active_rates_duties=1 AND employee_id='.$employee_id);
                                  return $query->result();
    }

    function get_factorfile() {
      $query2 = $this->db->query('SELECT * FROM reffactorfile');

                                return $query2->result();
                          
    }

    function SSS_lookup_default($total_dtr_amount) {
      $tempsss = $this->db->query('SELECT ref_sss_contribution_id,employee FROM ref_sss_contribution WHERE '.$total_dtr_amount.' BETWEEN salary_range_from AND salary_range_to');
                                        return $tempsss->result();
                          
    }
    
    function SSS_lookup_shield($ssslookuptaxshield) {
      $ssstemplookup=$this->db->query('SELECT ref_sss_contribution_id,employee FROM ref_sss_contribution WHERE '.$ssslookuptaxshield.' BETWEEN salary_range_from AND salary_range_to');
                                        $ssstempreflookup = $ssstemplookup->result();
                                        return $ssstempreflookup[0]->employee;
                          
    }

    function Philhealth_lookup_default($total_dtr_amount) {
      $tempphilhealth = $this->db->query('SELECT ref_philhealth_contribution_id,employee FROM ref_philhealth_contribution WHERE '.$total_dtr_amount.' BETWEEN salary_range_from AND salary_range_to');
                                        return $tempphilhealth->result();
                          
    }

    function Philhealth_lookup_shield($philhealthlookuptaxshield) {
      $ssstemplookup=$this->db->query('SELECT ref_sss_contribution_id,employee FROM ref_sss_contribution WHERE '.$philhealthlookuptaxshield.' BETWEEN salary_range_from AND salary_range_to');
                                        $ssstempreflookup = $ssstemplookup->result();
                                        return $ssstempreflookup[0]->employee;
                          
    }

    function Wtax_lookup($total_dtr_amount,$emp_tax_code) {
                                $semimonthly = $this->db->query('SELECT (CASE  
    WHEN '.$total_dtr_amount.' BETWEEN reftaxcode.col1 AND reftaxcode.col2-1 THEN ('.$total_dtr_amount.'-reftaxcode.col1)*(ref_payment_type.col1_percent)+(ref_payment_type.col1_amount)
    WHEN '.$total_dtr_amount.' BETWEEN reftaxcode.col2 AND reftaxcode.col3-1 THEN ('.$total_dtr_amount.'-reftaxcode.col2)*(ref_payment_type.col2_percent)+(ref_payment_type.col2_amount)
    WHEN '.$total_dtr_amount.' BETWEEN reftaxcode.col3 AND reftaxcode.col4-1 THEN ('.$total_dtr_amount.'-reftaxcode.col3)*(ref_payment_type.col3_percent)+(ref_payment_type.col3_amount)
    WHEN '.$total_dtr_amount.' BETWEEN reftaxcode.col4 AND reftaxcode.col5-1 THEN ('.$total_dtr_amount.'-reftaxcode.col4)*(ref_payment_type.col4_percent)+(ref_payment_type.col4_amount)
    WHEN '.$total_dtr_amount.' BETWEEN reftaxcode.col5 AND reftaxcode.col6-1 THEN ('.$total_dtr_amount.'-reftaxcode.col5)*(ref_payment_type.col5_percent)+(ref_payment_type.col5_amount)
    WHEN '.$total_dtr_amount.' BETWEEN reftaxcode.col6 AND reftaxcode.col7-1 THEN ('.$total_dtr_amount.'-reftaxcode.col6)*(ref_payment_type.col6_percent)+(ref_payment_type.col6_amount)
    WHEN '.$total_dtr_amount.' BETWEEN reftaxcode.col7 AND reftaxcode.col8-1 THEN ('.$total_dtr_amount.'-reftaxcode.col7)*(ref_payment_type.col7_percent)+(ref_payment_type.col7_amount)
    ELSE ('.$total_dtr_amount.'-reftaxcode.col8)*(ref_payment_type.col8_percent)+(ref_payment_type.col8_amount) END) as wtax
    FROM reftaxcode
    LEFT JOIN ref_payment_type
    ON reftaxcode.ref_payment_type_id=ref_payment_type.ref_payment_type_id
    WHERE tax_id='.$emp_tax_code.'');
    foreach($semimonthly->result() as $row)
    {
        $wtax = $row->wtax;
    }
                                return $wtax;
                          
    }

    function Wtax_lookup_shield($taxshielddeduct,$emp_tax_code) {
                                $semimonthly = $this->db->query('SELECT (CASE  
    WHEN '.$taxshielddeduct.' BETWEEN reftaxcode.col1 AND reftaxcode.col2-1 THEN ('.$taxshielddeduct.'-reftaxcode.col1)*(ref_payment_type.col1_percent)+(ref_payment_type.col1_amount)
    WHEN '.$taxshielddeduct.' BETWEEN reftaxcode.col2 AND reftaxcode.col3-1 THEN ('.$taxshielddeduct.'-reftaxcode.col2)*(ref_payment_type.col2_percent)+(ref_payment_type.col2_amount)
    WHEN '.$taxshielddeduct.' BETWEEN reftaxcode.col3 AND reftaxcode.col4-1 THEN ('.$taxshielddeduct.'-reftaxcode.col3)*(ref_payment_type.col3_percent)+(ref_payment_type.col3_amount)
    WHEN '.$taxshielddeduct.' BETWEEN reftaxcode.col4 AND reftaxcode.col5-1 THEN ('.$taxshielddeduct.'-reftaxcode.col4)*(ref_payment_type.col4_percent)+(ref_payment_type.col4_amount)
    WHEN '.$taxshielddeduct.' BETWEEN reftaxcode.col5 AND reftaxcode.col6-1 THEN ('.$taxshielddeduct.'-reftaxcode.col5)*(ref_payment_type.col5_percent)+(ref_payment_type.col5_amount)
    WHEN '.$taxshielddeduct.' BETWEEN reftaxcode.col6 AND reftaxcode.col7-1 THEN ('.$taxshielddeduct.'-reftaxcode.col6)*(ref_payment_type.col6_percent)+(ref_payment_type.col6_amount)
    WHEN '.$taxshielddeduct.' BETWEEN reftaxcode.col7 AND reftaxcode.col8-1 THEN ('.$taxshielddeduct.'-reftaxcode.col7)*(ref_payment_type.col7_percent)+(ref_payment_type.col7_amount)
    ELSE ('.$taxshielddeduct.'-reftaxcode.col8)*(ref_payment_type.col8_percent)+(ref_payment_type.col8_amount) END) as wtax
    FROM reftaxcode
    LEFT JOIN ref_payment_type
    ON reftaxcode.ref_payment_type_id=ref_payment_type.ref_payment_type_id
    WHERE tax_id='.$emp_tax_code.'');
    foreach($semimonthly->result() as $row)
    {
        $wtax = $row->wtax;
    }
                                return $wtax;
                          
    }

    function process_payroll($dtr_id) {
      $j=0;
          foreach($dtr_id as $dtr_process)
          {
            $updateArray[] = array(
            'dtr_id'=>$dtr_id[$j],
            'is_to_process' => 0,
            );
            $j++;
          }

        $processpayroll = $this->db->update_batch('daily_time_record',$updateArray, 'dtr_id');
        $i=0;
        //echo count($dtr_id);
                foreach($dtr_id as $dtr)
                              {
                                //echo $dtr_id[$i];
                                //SELECT DTR based on dtr_id
                                $checkifexists = $this->db->query('SELECT dtr_id FROM pay_slip WHERE dtr_id='.$dtr);
                                //echo json_encode($checkifexists->result());
                                if ($checkifexists->num_rows() == 0) {
                                  //echo json_encode($checkifexists->result());
                                $this->db->select('daily_time_record.employee_id,
                                sss_phic_salary_credit,philhealth_salary_credit,pagibig_salary_credit,tax_shield,tax_code,
                                pay_period_sequence,daily_time_record.pay_period_id,emp_rates_duties.salary_reg_rates,
                                reg_amt,sun_amt,reg_hol_amt,
                                sun_reg_hol_amt,sun_reg_hol_amt,
                                spe_hol_amt,sun_spe_hol_amt,minutes_late_amt,
                                ot_reg_amt,ot_reg_reg_hol_amt,ot_reg_spe_hol_amt,
                                ot_sun_amt,ot_sun_reg_hol_amt,ot_sun_spe_hol_amt,
                                nsd_reg_amt,nsd_reg_reg_hol_amt,nsd_reg_spe_hol_amt,
                                nsd_sun_amt,nsd_sun_reg_hol_amt,nsd_sun_spe_hol_amt
                                ');
                                $where = $dtr;
                                $this->db->where('dtr_id', $where);
                                $this->db->where('active_rates_duties', 1);
                                $this->db->join('emp_rates_duties', 'emp_rates_duties.employee_id = daily_time_record.employee_id', 'left');
                                $this->db->join('employee_list', 'employee_list.employee_id = emp_rates_duties.employee_id', 'left');
                                $this->db->join('refpayperiod', 'refpayperiod.pay_period_id = daily_time_record.pay_period_id', 'left');
                                $query = $this->db->get('daily_time_record');
                                $processtemp=$query->result();
                                //TAX CODE OF EMPLOYEE
                                $emp_tax_code=$processtemp[0]->tax_code;
                                //SALARY REG RATES FOR WTAX LOOKUP
                                $salary_reg_rates=$processtemp[0]->salary_reg_rates;
                                //echo json_encode($processtemp);
                                //PROCESS PAYROLL
                                $reg_pay = $processtemp[0]->reg_amt;
                                $sun_pay = $processtemp[0]->sun_amt;
                                $reg_hol_pay = $processtemp[0]->reg_hol_amt + $processtemp[0]->sun_reg_hol_amt;
                                $spe_hol_pay = $processtemp[0]->spe_hol_amt + $processtemp[0]->sun_spe_hol_amt;
                                $reg_ot_pay = $processtemp[0]->ot_reg_amt + $processtemp[0]->ot_reg_reg_hol_amt + $processtemp[0]->ot_reg_spe_hol_amt;
                                $sun_ot_pay = $processtemp[0]->ot_sun_amt + $processtemp[0]->ot_sun_reg_hol_amt + $processtemp[0]->ot_sun_spe_hol_amt;
                                $reg_nsd_pay = $processtemp[0]->nsd_reg_amt + $processtemp[0]->nsd_reg_reg_hol_amt + $processtemp[0]->nsd_reg_spe_hol_amt;
                                $sun_nsd_pay = $processtemp[0]->nsd_sun_amt + $processtemp[0]->nsd_sun_reg_hol_amt + $processtemp[0]->nsd_sun_spe_hol_amt;
                                //TOTAL DTR AMOUNT 
                                $total_dtr_amount=$reg_pay+$sun_pay+$reg_hol_pay+$spe_hol_pay+$reg_ot_pay+$sun_ot_pay+$reg_nsd_pay+$sun_nsd_pay;
                                $total_deductions=0;
                                $sssdeduct=0;
                                $philhealthdeduct=0;
                                //echo $total_dtr_amount;
                                //GET SETTINGS OF DEDUCTIONS
                                $deductsettingstemp = $this->db->query('SELECT * FROM system_settings_default_deductions
                                                                        LEFT JOIN dtr_deductions
                                                                        ON system_settings_default_deductions.deduction_id=dtr_deductions.deduction_id
                                                                        WHERE dtr_id='.$dtr);
                                $deductsettings = $deductsettingstemp->result();
                                $sss_check1=$deductsettings[0]->check1;
                                $sss_check2=$deductsettings[0]->check2;
                                $sss_check3=$deductsettings[0]->check3;
                                $sss_check4=$deductsettings[0]->check4;
                                $sss_is_deduct=$deductsettings[0]->is_deduct;
                                $philhealth_check1=$deductsettings[1]->check1;
                                $philhealth_check2=$deductsettings[1]->check2;
                                $philhealth_check3=$deductsettings[1]->check3;
                                $philhealth_check4=$deductsettings[1]->check4;
                                $philhealth_is_deduct=$deductsettings[1]->is_deduct;
                                $pagibig_check1=$deductsettings[2]->check1;
                                $pagibig_check2=$deductsettings[2]->check2;
                                $pagibig_check3=$deductsettings[2]->check3;
                                $pagibig_check4=$deductsettings[2]->check4;
                                $pagibig_is_deduct=$deductsettings[2]->is_deduct;
                                $wtax_check1=$deductsettings[3]->check1;
                                $wtax_check2=$deductsettings[3]->check2;
                                $wtax_check3=$deductsettings[3]->check3;
                                $wtax_check4=$deductsettings[3]->check4;
                                $wtax_is_deduct=$deductsettings[3]->is_deduct;
                                //
                                      //echo json_encode($deductsettings);
                                  //SSS Setting Cycle 1 AND IS DEDUCT IS TRUE
                                  if($processtemp[0]->pay_period_sequence==$sss_check1  AND $sss_is_deduct==1){
                                    //SSS SHIELD CHECK
                                    $sss_stat="true";
                                    if($processtemp[0]->sss_phic_salary_credit==0.00 || null)
                                    {
                                        $refsss = $this->SSS_lookup_default($total_dtr_amount);
                                        $sssdeduct=$refsss[0]->employee;
                                        $sss_id=$refsss[0]->ref_sss_contribution_id;
                                    }
                                    else{
                                        $ssslookuptaxshield=$processtemp[0]->sss_phic_salary_credit;
                                        $sssdeduct = $this->SSS_lookup_shield($ssslookuptaxshield);
                                        $sss_id=0;
                                    }
                                  }
                                  //CYCLE 2
                                  elseif($processtemp[0]->pay_period_sequence==$sss_check2  AND $sss_is_deduct==1){
                                    //SSS SHIELD CHECK
                                    /*echo 2;*/
                                    $sss_stat="true";
                                    if($processtemp[0]->sss_phic_salary_credit==0.00 || null)
                                    {
                                        $refsss = $this->SSS_lookup_default($total_dtr_amount);
                                        $sssdeduct=$refsss[0]->employee;
                                        $sss_id=$refsss[0]->ref_sss_contribution_id;
                                    }
                                    else{
                                        $ssslookuptaxshield=$processtemp[0]->sss_phic_salary_credit;
                                        $sssdeduct = $this->SSS_lookup_shield($ssslookuptaxshield);
                                        $sss_id=0;
                                    }
                                  }
                                  //CYCLE 3
                                  elseif($processtemp[0]->pay_period_sequence==$sss_check3  AND $sss_is_deduct==1){
                                    //SSS SHIELD CHECK
                                    $sss_stat="true";
                                    if($processtemp[0]->sss_phic_salary_credit==0.00 || null)
                                    {
                                        $refsss = $this->SSS_lookup_default($total_dtr_amount);
                                        $sssdeduct=$refsss[0]->employee;
                                        $sss_id=$refsss[0]->ref_sss_contribution_id;
                                    }
                                    else{
                                        $ssslookuptaxshield=$processtemp[0]->sss_phic_salary_credit;
                                        $sssdeduct = $this->SSS_lookup_shield($ssslookuptaxshield);
                                        $sss_id=0;
                                    }
                                  }
                                  //CYCLE 4
                                  elseif($processtemp[0]->pay_period_sequence==$sss_check4  AND $sss_is_deduct==1){
                                    //SSS SHIELD CHECK
                                    $sss_stat="true";
                                    if($processtemp[0]->sss_phic_salary_credit==0.00 || null)
                                    {
                                        $refsss = $this->SSS_lookup_default($total_dtr_amount);
                                        $sssdeduct=$refsss[0]->employee;
                                        $sss_id=$refsss[0]->ref_sss_contribution_id;
                                    }
                                    else{
                                        $ssslookuptaxshield=$processtemp[0]->sss_phic_salary_credit;
                                        $sssdeduct = $this->SSS_lookup_shield($ssslookuptaxshield);
                                        $sss_id=0;
                                    }
                                  }
                                  else{
                                    /*echo "false";*/
                                        $sssdeduct=0;
                                        $sss_stat="false";
                                  }
                                  //PHILHEALTH Setting Cycle 1 AND IS DEDUCT IS TRUE
                                  if($processtemp[0]->pay_period_sequence==$philhealth_check1 AND $philhealth_is_deduct==1){
                                    //PHILHEALTH SHIELD CHECK
                                    $philhealth_stat="true";
                                    if($processtemp[0]->philhealth_salary_credit==0.00 || null)
                                    {
                                        $tempphilhealth = $this->db->query('SELECT ref_philhealth_contribution_id,employee FROM ref_philhealth_contribution WHERE '.$total_dtr_amount.' BETWEEN salary_range_from AND salary_range_to');
                                        $refphilhealth = $tempphilhealth->result();
                                        $philhealthdeduct=$refphilhealth[0]->employee;
                                        $philhealth_id=$refphilhealth[0]->ref_philhealth_contribution_id;
                                        //echo json_encode($refphilhealth);
                                    }
                                    else{
                                        $philhealthdeduct=$processtemp[0]->philhealth_salary_credit;
                                        $philhealth_id=0;
                                    }
                                  }
                                  //CYCLE 2
                                  elseif($processtemp[0]->pay_period_sequence==$philhealth_check2 AND $philhealth_is_deduct==1){
                                    //PHILHEALTH SHIELD CHECK
                                    $philhealth_stat="true";
                                    if($processtemp[0]->philhealth_salary_credit==0.00 || null)
                                    {
                                        $tempphilhealth = $this->db->query('SELECT ref_philhealth_contribution_id,employee FROM ref_philhealth_contribution WHERE '.$total_dtr_amount.' BETWEEN salary_range_from AND salary_range_to');
                                        $refphilhealth = $tempphilhealth->result();
                                        $philhealthdeduct=$refphilhealth[0]->employee;
                                        $philhealth_id=$refphilhealth[0]->ref_philhealth_contribution_id;
                                        //echo json_encode($refphilhealth);
                                    }
                                    else{
                                        $philhealthdeduct=$processtemp[0]->philhealth_salary_credit;
                                        $philhealth_id=0;
                                    }
                                  }
                                  //CYCLE 3
                                  elseif($processtemp[0]->pay_period_sequence==$philhealth_check3 AND $philhealth_is_deduct==1){
                                    //PHILHEALTH SHIELD CHECK
                                    $philhealth_stat="true";
                                    if($processtemp[0]->philhealth_salary_credit==0.00 || null)
                                    {
                                        $tempphilhealth = $this->db->query('SELECT ref_philhealth_contribution_id,employee FROM ref_philhealth_contribution WHERE '.$total_dtr_amount.' BETWEEN salary_range_from AND salary_range_to');
                                        $refphilhealth = $tempphilhealth->result();
                                        $philhealthdeduct=$refphilhealth[0]->employee;
                                        $philhealth_id=$refphilhealth[0]->ref_philhealth_contribution_id;
                                        //echo json_encode($refphilhealth);
                                    }
                                    else{
                                        $philhealthdeduct=$processtemp[0]->philhealth_salary_credit;
                                        $philhealth_id=0;
                                    }
                                  }
                                  //CYCLE 4
                                  elseif($processtemp[0]->pay_period_sequence==$philhealth_check4 AND $philhealth_is_deduct==1){
                                    //PHILHEALTH SHIELD CHECK
                                    $philhealth_stat="true";
                                    if($processtemp[0]->philhealth_salary_credit==0.00 || null)
                                    {
                                        $tempphilhealth = $this->db->query('SELECT ref_philhealth_contribution_id,employee FROM ref_philhealth_contribution WHERE '.$total_dtr_amount.' BETWEEN salary_range_from AND salary_range_to');
                                        $refphilhealth = $tempphilhealth->result();
                                        $philhealthdeduct=$refphilhealth[0]->employee;
                                        $philhealth_id=$refphilhealth[0]->ref_philhealth_contribution_id;
                                        //echo json_encode($refphilhealth);
                                    }
                                    else{
                                        $philhealthdeduct=$processtemp[0]->philhealth_salary_credit;
                                        $philhealth_id=0;
                                    }
                                  }
                                  else{
                                        $philhealthdeduct=0;
                                        $philhealth_stat="false";
                                  }
                                  //PAGIBIG Setting Cycle 1 AND IS DEDUCT IS TRUE
                                  if($processtemp[0]->pay_period_sequence==$pagibig_check1 AND $pagibig_is_deduct==1){
                                    //PAG IBIG SHIELD CHECK
                                    $pagibig_stat="true";
                                    if($processtemp[0]->pagibig_salary_credit==0.00 || null)
                                    {
                                        $pagibigdeduct=100;
                                    }
                                    else{
                                        $pagibigdeduct=$processtemp[0]->pagibig_salary_credit;
                                    }
                                  }
                                  //Cycle 2
                                  elseif($processtemp[0]->pay_period_sequence==$pagibig_check2 AND $pagibig_is_deduct==1){
                                    //PAG IBIG SHIELD CHECK
                                    $pagibig_stat="true";
                                    if($processtemp[0]->pagibig_salary_credit==0.00 || null)
                                    {
                                        $pagibigdeduct=100;
                                    }
                                    else{
                                        $pagibigdeduct=$processtemp[0]->pagibig_salary_credit;
                                    }
                                  }
                                  //Cycle 3
                                  elseif($processtemp[0]->pay_period_sequence==$pagibig_check3 AND $pagibig_is_deduct==1){
                                    //PAG IBIG SHIELD CHECK
                                    $pagibig_stat="true";
                                    if($processtemp[0]->pagibig_salary_credit==0.00 || null)
                                    {
                                        $pagibigdeduct=100;
                                    }
                                    else{
                                        $pagibigdeduct=$processtemp[0]->pagibig_salary_credit;
                                    }
                                  }
                                  //Cycle 4
                                  elseif($processtemp[0]->pay_period_sequence==$pagibig_check4 AND $pagibig_is_deduct==1){
                                    //PAG IBIG SHIELD CHECK
                                    $pagibig_stat="true";
                                    if($processtemp[0]->pagibig_salary_credit==0.00 || null)
                                    {
                                        $pagibigdeduct=100;
                                    }
                                    else{
                                        $pagibigdeduct=$processtemp[0]->pagibig_salary_credit;
                                    }
                                  }
                                  else{
                                        $pagibigdeduct=0;
                                        $pagibig_stat="false";
                                  }
                                  //SALARY REG RATES MINUS DEDUCTIONS SSS/PHIL/PAGIBIG
                                  $sss_phil_pagibig_deductions=$sssdeduct+$pagibigdeduct+$philhealthdeduct;
                                  $wtax_lookup_amount = $salary_reg_rates-$sss_phil_pagibig_deductions;
                                  /*echo $wtax_lookup_amount;*/
                                  //WITHHOLDING Setting Cycle 1 AND IS DEDUCT IS TRUE
                                  if($processtemp[0]->pay_period_sequence==$wtax_check1 AND $wtax_is_deduct==1){
                                    //WITH HOLDING TAX SHIELD CHECK
                                    $withholdingtax_stat="true";
                                    if($processtemp[0]->tax_shield==0.00 || null)
                                    {
                                        /*$taxshielddeduct=0;*/
                                        /*$withholding_lookup = $this->Wtax_lookup($wtax_lookup_amount,$emp_tax_code);*/
                                        $withholding_lookup = $wtax_lookup_amount;
                                    }
                                    else{
                                        $taxshielddeduct=$processtemp[0]->tax_shield;
                                        /*$withholding_lookup = $this->Wtax_lookup_shield($taxshielddeduct,$emp_tax_code);*/
                                        $withholding_lookup = $taxshielddeduct;

                                    }
                                  }
                                  //Cycle 2
                                  elseif($processtemp[0]->pay_period_sequence==$wtax_check2 AND $wtax_is_deduct==1){
                                    //WITH HOLDING TAX SHIELD CHECK
                                    $withholdingtax_stat="true";
                                    if($processtemp[0]->tax_shield==0.00 || null)
                                    {
                                        /*$taxshielddeduct=0;*/
                                        /*$withholding_lookup = $this->Wtax_lookup($wtax_lookup_amount,$emp_tax_code);*/
                                        $withholding_lookup = $wtax_lookup_amount;
                                    }
                                    else{
                                        $taxshielddeduct=$processtemp[0]->tax_shield;
                                        /*$withholding_lookup = $this->Wtax_lookup_shield($taxshielddeduct,$emp_tax_code);*/
                                        $withholding_lookup = $taxshielddeduct;
                                    }
                                  }
                                  //Cycle 3
                                  elseif($processtemp[0]->pay_period_sequence==$wtax_check3 AND $wtax_is_deduct==1){
                                    //WITH HOLDING TAX SHIELD CHECK
                                    $withholdingtax_stat="true";
                                    if($processtemp[0]->tax_shield==0.00 || null)
                                    {
                                        /*$taxshielddeduct=0;*/
                                        /*$withholding_lookup = $this->Wtax_lookup($wtax_lookup_amount,$emp_tax_code);*/
                                        $withholding_lookup = $wtax_lookup_amount;
                                    }
                                    else{
                                        $taxshielddeduct=$processtemp[0]->tax_shield;
                                        /*$withholding_lookup = $this->Wtax_lookup_shield($taxshielddeduct,$emp_tax_code);*/
                                        $withholding_lookup = $taxshielddeduct;
                                    }
                                  }
                                  //Cycle 4
                                  elseif($processtemp[0]->pay_period_sequence==$wtax_check4 AND $wtax_is_deduct==1){
                                    //WITH HOLDING TAX SHIELD CHECK
                                    $withholdingtax_stat="true";
                                    if($processtemp[0]->tax_shield==0.00 || null)
                                    {
                                         /*$taxshielddeduct=0;*/
                                        /*$withholding_lookup = $this->Wtax_lookup($wtax_lookup_amount,$emp_tax_code);*/
                                        $withholding_lookup = $wtax_lookup_amount;
                                    }
                                    else{
                                        $taxshielddeduct=$processtemp[0]->tax_shield;
                                        /*$withholding_lookup = $this->Wtax_lookup_shield($taxshielddeduct,$emp_tax_code);*/
                                        $withholding_lookup = $taxshielddeduct;
                                    }
                                  }
                                  else{
                                        $withholding_lookup=0;
                                        $withholdingtax_stat="false";
                                  }
                                //GET REGULAR EARNINGS
                                $regular_earnings=0;
                                $re=0;
                                $regearningstemp = $this->db->query('SELECT oe_regular_id,earnings_id,oe_regular_amount FROM new_otherearnings_regular WHERE employee_id='.$processtemp[0]->employee_id.' AND oe_cycle='.$processtemp[0]->pay_period_sequence.' AND is_temporary=0');
                                foreach ($regearningstemp->result() as $row)
                                {
                                        $regular_earnings+=$row->oe_regular_amount;
                                        $oe_regular_id[$re] = $row->oe_regular_id;
                                        $earnings_id[$re] = $row->earnings_id;
                                        $oe_regular_amount[$re] = $row->oe_regular_amount;
                                        $re++;
                                }
                                 //GET TEMPORARY EARNINGS
                                $temporary_earnings=0;
                                $rt=0;
                                $tempearnings = $this->db->query('SELECT oe_regular_id,earnings_id,oe_regular_amount FROM new_otherearnings_regular WHERE employee_id='.$processtemp[0]->employee_id.' AND pay_period_id='.$processtemp[0]->pay_period_id.' AND is_temporary=1');
                                foreach ($tempearnings->result() as $row)
                                {
                                        $temporary_earnings+=$row->oe_regular_amount;
                                        $oe_regular_id_T[$rt] = $row->oe_regular_id;
                                        $earnings_id_T[$rt] = $row->earnings_id;
                                        $oe_regular_amount_T[$rt] = $row->oe_regular_amount;
                                        $rt++;
                                }
                                 //GET REGULAR DEDUCTIONS
                                $regular_deductions=0;
                                $rd=0;
                                /*$regulardeductionsetting = $this->db->query('SELECT deduction_id,is_deduct FROM daily_time_record
                                                                        LEFT JOIN dtr_deductions
                                                                        ON daily_time_record.dtr_id=dtr_deductions.dtr_id
                                                                        WHERE daily_time_record.dtr_id='.$dtr_id[$i].' AND deduction_id !=1 AND deduction_id !=2 AND deduction_id !=3 AND deduction_id !=4');
                                foreach ($regulardeductionsetting->result() as $rowregsetting)
                                {
                                    if($rowregsetting->is_deduct==TRUE){
                                        echo "true";
                                    }
                                    else{
                                        echo "false";
                                    }
                                }*/
                                $regulardeduction = $this->db->query('SELECT new_deductions_regular.deduction_regular_id,deduction_per_pay_amount,daily_time_record.dtr_id,is_deduct,new_deductions_regular.deduction_id FROM daily_time_record
                                                                    LEFT JOIN dtr_deductions
                                                                    ON daily_time_record.dtr_id=dtr_deductions.dtr_id
                                                                    LEFT JOIN new_deductions_regular
                                                                    ON dtr_deductions.deduction_id=new_deductions_regular.deduction_id
                                                                    WHERE new_deductions_regular.employee_id='.$processtemp[0]->employee_id.' AND daily_time_record.dtr_id='.$dtr.' AND deduction_cycle='.$processtemp[0]->pay_period_sequence.' AND is_temporary=0 AND new_deductions_regular.deduction_id!=1
                                                                    AND new_deductions_regular.deduction_id!=2 AND new_deductions_regular.deduction_id!=3 AND new_deductions_regular.deduction_id!=4');
                                //echo json_encode($regulardeduction->result());
                                foreach ($regulardeduction->result() as $row)
                                {
                                        if($row->is_deduct!=0){
                                            $regular_deductions+=$row->deduction_per_pay_amount;
                                        }
                                        else{

                                        }
                                        $deduction_regular_id[$rd] = $row->deduction_regular_id;
                                        $deduction_id[$rd] = $row->deduction_id;
                                        $deduction_per_pay_amount[$rd] = $row->deduction_per_pay_amount;
                                        $isdeduct[$rd] = $row->is_deduct;
                                        $rd++;
                                }
                                 //GET TEMPORARY DEDUCTIONS
                                $temporary_deductions=0;
                                $td=0;
                                $tempdeduction = $this->db->query('SELECT new_deductions_regular.deduction_regular_id,deduction_per_pay_amount,daily_time_record.dtr_id,is_deduct,new_deductions_regular.deduction_id FROM daily_time_record
                                                                    LEFT JOIN dtr_deductions
                                                                    ON daily_time_record.dtr_id=dtr_deductions.dtr_id
                                                                    LEFT JOIN new_deductions_regular
                                                                    ON dtr_deductions.deduction_id=new_deductions_regular.deduction_id
                                                                    WHERE new_deductions_regular.employee_id='.$processtemp[0]->employee_id.' AND daily_time_record.dtr_id='.$dtr.' AND new_deductions_regular.pay_period_id='.$processtemp[0]->pay_period_id.' AND is_temporary=1 AND new_deductions_regular.deduction_id!=1
                                                                    AND new_deductions_regular.deduction_id!=2 AND new_deductions_regular.deduction_id!=3 AND new_deductions_regular.deduction_id!=4');
                                //echo json_encode($tempdeduction->result());
                                foreach ($tempdeduction->result() as $row)
                                {
                                        if($row->is_deduct!=0){
                                             $temporary_deductions+=$row->deduction_per_pay_amount;
                                        }
                                        else{

                                        }
                                        $deduction_regular_id_T[$td] = $row->deduction_regular_id;
                                        $deduction_id_T[$td] = $row->deduction_id;
                                        $deduction_per_pay_amount_T[$td] = $row->deduction_per_pay_amount;
                                        $isdeduct_T[$td] = $row->is_deduct;
                                        $td++;
                                }
                                //echo json_encode($regulardeduction->result());
                                //echo json_encode($tempdeduction->result());
                                //echo $regular_deductions;
                                //echo "<br>";
                                //echo $temporary_deductions;
                                ///echo $temporary_earnings;
                                //echo $regular_earnings;
                                //echo $sssdeduct;
                                //echo $pagibigdeduct;
                                //echo $taxshielddeduct;
                                $gross_pay=$total_dtr_amount+$regular_earnings+$temporary_earnings;
                                $total_deductions=$sssdeduct+$pagibigdeduct+$philhealthdeduct+$withholding_lookup+$regular_deductions+$temporary_deductions;
                                $net_pay=$gross_pay-$total_deductions-$processtemp[0]->minutes_late_amt;
                                //echo $processtemp[0]->reg_amt;
                                  $data[0] = 
                                     array(
                                        'dtr_id' => $dtr,
                                        'reg_pay' => $reg_pay,
                                        'sun_pay' => $sun_pay,
                                        'reg_hol_pay' => $reg_hol_pay,
                                        'spe_hol_pay' => $spe_hol_pay,
                                        'reg_ot_pay' => $reg_ot_pay,
                                        'sun_ot_pay' => $sun_ot_pay,
                                        'reg_nsd_pay' => $reg_nsd_pay,
                                        'sun_nsd_pay' => $sun_nsd_pay,
                                        'minutes_late_amt' => $processtemp[0]->minutes_late_amt,
                                        'total_dtr_amount' => $total_dtr_amount,
                                        'gross_pay' => $gross_pay,
                                        'taxable_pay' => $total_dtr_amount,
                                        'total_deductions' => $total_deductions,
                                        'net_pay' => $net_pay

                                     );  

                                $this->db->insert_batch('pay_slip', $data);
                                //LAST INSERT ID OF PAY SLIP
                                $pay_slip_id=$this->db->insert_id();
                                //CODE TO INSERT TO PAY SLIP EARNINGS
                                $z=0;
                                $dataregearnings="";
                                for($z;$re>$z;$z++){
                                    $dataregearnings[] = 
                                     array(
                                        'pay_slip_id' => $pay_slip_id,
                                        'earnings_id' => $earnings_id[$z],
                                        'earnings_amount' => $oe_regular_amount[$z],
                                        'oe_regular_id' => $oe_regular_id[$z]
                                     );
                                }
                                $x=0;
                                $datatempearnings="";
                                for($x;$rt>$x;$x++){
                                    $datatempearnings[] = 
                                     array(
                                        'pay_slip_id' => $pay_slip_id,
                                        'earnings_id' => $earnings_id_T[$x],
                                        'earnings_amount' => $oe_regular_amount_T[$x],
                                        'oe_regular_id' => $oe_regular_id_T[$x]
                                     );
                                }
                                $z_deduct=0;
                                $dataregdeductions="";
                                for($z_deduct;$rd>$z_deduct;$z_deduct++){
                                    $dataregdeductions[] = 
                                     array(
                                        'pay_slip_id' => $pay_slip_id,
                                        'deduction_id' => $deduction_id[$z_deduct],
                                        'deduction_amount' => $deduction_per_pay_amount[$z_deduct],
                                        'deduction_regular_id' => $deduction_regular_id[$z_deduct],
                                        'active_deduct' => $isdeduct[$z_deduct],
                                     );
                                }
                                $x_deduct=0;
                                $datatempdeductions="";
                                for($x_deduct;$td>$x_deduct;$x_deduct++){
                                    $datatempdeductions[] = 
                                     array(
                                        'pay_slip_id' => $pay_slip_id,
                                        'deduction_id' => $deduction_id_T[$x_deduct],
                                        'deduction_amount' => $deduction_per_pay_amount_T[$x_deduct],
                                        'deduction_regular_id' => $deduction_regular_id_T[$x_deduct],
                                        'active_deduct' => $isdeduct_T[$x_deduct],
                                     );
                                }
                                if($re!=0){
                                  $this->db->insert_batch('pay_slip_other_earnings', $dataregearnings);
                                }
                                else{
                                  //do not insert
                                }
                                if($rt!=0){
                                  $this->db->insert_batch('pay_slip_other_earnings', $datatempearnings);
                                }
                                else{
                                  //do not insert
                                }
                                if($z_deduct!=0){
                                  $this->db->insert_batch('pay_slip_deductions', $dataregdeductions);
                                 /* $m_products->set('quantity','quantity-'.$invalue);*/
                                }
                                else{
                                  //do not insert
                                }
                                if($x_deduct!=0){
                                  $this->db->insert_batch('pay_slip_deductions', $datatempdeductions);
                                }
                                else{
                                  //do not insert
                                }

                                if($sss_stat=="true"){
                                  $data_deductions[0] = 
                                     array(
                                        'pay_slip_id' => $pay_slip_id,
                                        'deduction_id' => 1,
                                        'deduction_amount' => $sssdeduct,
                                        'sss_id' => $sss_id,
                                        'active_deduct' => TRUE,
                                     );
                                  $this->db->insert_batch('pay_slip_deductions', $data_deductions);
                                }
                                else{
                                  //insert with false deduct
                                    $data_deductions[] = 
                                     array(
                                        'pay_slip_id' => $pay_slip_id,
                                        'deduction_id' => 1,
                                        'deduction_amount' => $sssdeduct,
                                        'active_deduct' => FALSE,
                                     );
                                    $this->db->insert_batch('pay_slip_deductions', $data_deductions);
                                }
                                if($philhealth_stat=="true"){
                                  $data_deductions_phil[0] = 
                                     array(
                                        'pay_slip_id' => $pay_slip_id,
                                        'deduction_id' => 2,
                                        'deduction_amount' => $philhealthdeduct,
                                        'philhealth_id' => $philhealth_id,
                                        'active_deduct' => TRUE,
                                     );
                                  $this->db->insert_batch('pay_slip_deductions', $data_deductions_phil);
                                }
                                else{
                                  //insert with false deduct
                                    $data_deductions_phil[0] = 
                                     array(
                                        'pay_slip_id' => $pay_slip_id,
                                        'deduction_id' => 2,
                                        'deduction_amount' => $philhealthdeduct,
                                        'active_deduct' => FALSE,
                                     );
                                    $this->db->insert_batch('pay_slip_deductions', $data_deductions_phil);

                                }
                                if($pagibig_stat=="true"){
                                  $data_deductions_pagibig[0] = 
                                     array(
                                        'pay_slip_id' => $pay_slip_id,
                                        'deduction_id' => 3,
                                        'deduction_amount' => $pagibigdeduct,
                                        'active_deduct' => TRUE,
                                     );
                                  $this->db->insert_batch('pay_slip_deductions', $data_deductions_pagibig);
                                }
                                else{
                                  //insert pagibig with flase deduct
                                    $data_deductions_pagibig[0] = 
                                     array(
                                        'pay_slip_id' => $pay_slip_id,
                                        'deduction_id' => 3,
                                        'deduction_amount' => $pagibigdeduct,
                                        'active_deduct' => FALSE,
                                     );
                                    $this->db->insert_batch('pay_slip_deductions', $data_deductions_pagibig);
                                }
                                //WITHHOLDING TAX TRUE
                                if($withholdingtax_stat=="true"){
                                    /*$wtax = $this->Wtax_lookup($total_dtr_amount);*/
                                    /*echo $wtax;*/
                                    /*echo "true";*/
                                  $data_deductions_withholdingtax_e[0] = 
                                     array(
                                        'pay_slip_id' => $pay_slip_id,
                                        'deduction_id' => 4,
                                        'deduction_amount' => $withholding_lookup,
                                        'active_deduct' => TRUE,
                                     );
                                    $this->db->insert_batch('pay_slip_deductions', $data_deductions_withholdingtax_e);
                                }
                                else{
                                  //insert WH TAX with false deduct
                                    /*$wtax = $this->Wtax_lookup($total_dtr_amount);*/
                                    /*echo $wtax;*/
                                    $data_deductions_withholdingtax_e[0] = 
                                     array(
                                        'pay_slip_id' => $pay_slip_id,
                                        'deduction_id' => 4,
                                        'deduction_amount' => $withholding_lookup,
                                        'active_deduct' => FALSE,
                                     );
                                    $this->db->insert_batch('pay_slip_deductions', $data_deductions_withholdingtax_e);
                                }
                                
                                
                                //echo json_encode($regearningstemp->result());

                                //return true;
                                }
                                else{
                                    //echo "else";
                                    //DELETE where payslip
                                $where = $dtr;
                                $this->db->where('pay_slip.dtr_id', $where);
                                $this->db->select('pay_slip_id');
                                $query = $this->db->get('pay_slip');
                                //echo json_encode($query->result());
                                $payslipid =  $query->result();

                                $this->db->where('pay_slip_id',$payslipid[0]->pay_slip_id);
                                $this->db->delete('pay_slip_deductions');

                                $this->db->where('pay_slip_id',$payslipid[0]->pay_slip_id);
                                $this->db->delete('pay_slip_other_earnings');

                                $where = $dtr;
                                $this->db->where('dtr_id', $where);
                                $this->db->where('active_rates_duties', 1);
                                $this->db->join('emp_rates_duties', 'emp_rates_duties.employee_id = daily_time_record.employee_id', 'left');
                                $this->db->join('employee_list', 'employee_list.employee_id = emp_rates_duties.employee_id', 'left');
                                $this->db->join('refpayperiod', 'refpayperiod.pay_period_id = daily_time_record.pay_period_id', 'left');
                                $query = $this->db->get('daily_time_record','employee_list');
                                $processtemp=$query->result();
                                $emp_tax_code=$processtemp[0]->tax_code;
                                //echo json_encode($processtemp);
                                //PROCESS PAYROLL
                                $reg_pay = $processtemp[0]->reg_amt;
                                $sun_pay = $processtemp[0]->sun_amt;
                                $reg_hol_pay = $processtemp[0]->reg_hol_amt + $processtemp[0]->sun_reg_hol_amt;
                                $spe_hol_pay = $processtemp[0]->spe_hol_amt + $processtemp[0]->sun_spe_hol_amt;
                                $reg_ot_pay = $processtemp[0]->ot_reg_amt + $processtemp[0]->ot_reg_reg_hol_amt + $processtemp[0]->ot_reg_spe_hol_amt;
                                $sun_ot_pay = $processtemp[0]->ot_sun_amt + $processtemp[0]->ot_sun_reg_hol_amt + $processtemp[0]->ot_sun_spe_hol_amt;
                                $reg_nsd_pay = $processtemp[0]->nsd_reg_amt + $processtemp[0]->nsd_reg_reg_hol_amt + $processtemp[0]->nsd_reg_spe_hol_amt;
                                $sun_nsd_pay = $processtemp[0]->nsd_sun_amt + $processtemp[0]->nsd_sun_reg_hol_amt + $processtemp[0]->nsd_sun_spe_hol_amt;
                                $total_dtr_amount=$reg_pay+$sun_pay+$reg_hol_pay+$spe_hol_pay+$reg_ot_pay+$sun_ot_pay+$reg_nsd_pay+$sun_nsd_pay;
                                /*echo $total_dtr_amount;*/
                                $total_deductions=0;
                                $sssdeduct=0;
                                $philhealthdeduct=0;
                                //echo $total_dtr_amount;
                                //GET SETTINGS OF DEDUCTIONS
                                $deductsettingstemp = $this->db->query('SELECT * FROM system_settings_default_deductions
                                                                        LEFT JOIN dtr_deductions
                                                                        ON system_settings_default_deductions.deduction_id=dtr_deductions.deduction_id
                                                                        WHERE dtr_id='.$dtr);
                                $deductsettings = $deductsettingstemp->result();
                                $sss_check1=$deductsettings[0]->check1;
                                $sss_check2=$deductsettings[0]->check2;
                                $sss_check3=$deductsettings[0]->check3;
                                $sss_check4=$deductsettings[0]->check4;
                                $sss_is_deduct=$deductsettings[0]->is_deduct;
                                $philhealth_check1=$deductsettings[1]->check1;
                                $philhealth_check2=$deductsettings[1]->check2;
                                $philhealth_check3=$deductsettings[1]->check3;
                                $philhealth_check4=$deductsettings[1]->check4;
                                $philhealth_is_deduct=$deductsettings[1]->is_deduct;
                                $pagibig_check1=$deductsettings[2]->check1;
                                $pagibig_check2=$deductsettings[2]->check2;
                                $pagibig_check3=$deductsettings[2]->check3;
                                $pagibig_check4=$deductsettings[2]->check4;
                                $pagibig_is_deduct=$deductsettings[2]->is_deduct;
                                $wtax_check1=$deductsettings[3]->check1;
                                $wtax_check2=$deductsettings[3]->check2;
                                $wtax_check3=$deductsettings[3]->check3;
                                $wtax_check4=$deductsettings[3]->check4;
                                $wtax_is_deduct=$deductsettings[3]->is_deduct;
                                //
                                      //echo json_encode($deductsettings);
                                  //SSS Setting Cycle 1 AND IS DEDUCT IS TRUE
                                  if($processtemp[0]->pay_period_sequence==$sss_check1  AND $sss_is_deduct==1){
                                    //SSS SHIELD CHECK
                                    $sss_stat="true";
                                    if($processtemp[0]->sss_phic_salary_credit==0.00 || null)
                                    {
                                        $refsss = $this->SSS_lookup_default($total_dtr_amount);
                                        $sssdeduct=$refsss[0]->employee;
                                        $sss_id=$refsss[0]->ref_sss_contribution_id;
                                    }
                                    else{
                                        $ssslookuptaxshield=$processtemp[0]->sss_phic_salary_credit;
                                        $sssdeduct = $this->SSS_lookup_shield($ssslookuptaxshield);
                                        $sss_id=0;
                                    }
                                  }
                                  //CYCLE 2
                                  elseif($processtemp[0]->pay_period_sequence==$sss_check2  AND $sss_is_deduct==1){
                                    //SSS SHIELD CHECK
                                    /*echo 2;*/
                                    $sss_stat="true";
                                    if($processtemp[0]->sss_phic_salary_credit==0.00 || null)
                                    {
                                        $refsss = $this->SSS_lookup_default($total_dtr_amount);
                                        $sssdeduct=$refsss[0]->employee;
                                        $sss_id=$refsss[0]->ref_sss_contribution_id;
                                    }
                                    else{
                                        $ssslookuptaxshield=$processtemp[0]->sss_phic_salary_credit;
                                        $sssdeduct = $this->SSS_lookup_shield($ssslookuptaxshield);
                                        $sss_id=0;
                                    }
                                  }
                                  //CYCLE 3
                                  elseif($processtemp[0]->pay_period_sequence==$sss_check3  AND $sss_is_deduct==1){
                                    //SSS SHIELD CHECK
                                    $sss_stat="true";
                                    if($processtemp[0]->sss_phic_salary_credit==0.00 || null)
                                    {
                                        $refsss = $this->SSS_lookup_default($total_dtr_amount);
                                        $sssdeduct=$refsss[0]->employee;
                                        $sss_id=$refsss[0]->ref_sss_contribution_id;
                                    }
                                    else{
                                        $ssslookuptaxshield=$processtemp[0]->sss_phic_salary_credit;
                                        $sssdeduct = $this->SSS_lookup_shield($ssslookuptaxshield);
                                        $sss_id=0;
                                    }
                                  }
                                  //CYCLE 4
                                  elseif($processtemp[0]->pay_period_sequence==$sss_check4  AND $sss_is_deduct==1){
                                    //SSS SHIELD CHECK
                                    $sss_stat="true";
                                    if($processtemp[0]->sss_phic_salary_credit==0.00 || null)
                                    {
                                        $refsss = $this->SSS_lookup_default($total_dtr_amount);
                                        $sssdeduct=$refsss[0]->employee;
                                        $sss_id=$refsss[0]->ref_sss_contribution_id;
                                    }
                                    else{
                                        $ssslookuptaxshield=$processtemp[0]->sss_phic_salary_credit;
                                        $sssdeduct = $this->SSS_lookup_shield($ssslookuptaxshield);
                                        $sss_id=0;
                                    }
                                  }
                                  else{
                                    /*echo "false";*/
                                        $sssdeduct=0;
                                        $sss_stat="false";
                                  }
                                  //PHILHEALTH Setting Cycle 1 AND IS DEDUCT IS TRUE
                                  if($processtemp[0]->pay_period_sequence==$philhealth_check1 AND $philhealth_is_deduct==1){
                                    //PHILHEALTH SHIELD CHECK
                                    $philhealth_stat="true";
                                    if($processtemp[0]->philhealth_salary_credit==0.00 || null)
                                    {
                                        $refphilhealth = $this->Philhealth_lookup_default($total_dtr_amount);
                                        $philhealthdeduct=$refphilhealth[0]->employee;
                                        $philhealth_id=$refphilhealth[0]->ref_philhealth_contribution_id;
                                        //echo json_encode($refphilhealth);
                                    }
                                    else{
                                        $philhealthlookuptaxshield=$processtemp[0]->philhealth_salary_credit;
                                        $philhealthdeduct=$this->SSS_lookup_shield($philhealthlookuptaxshield);
                                        $philhealth_id=0;
                                    }
                                  }
                                  //CYCLE 2
                                  elseif($processtemp[0]->pay_period_sequence==$philhealth_check2 AND $philhealth_is_deduct==1){
                                    //PHILHEALTH SHIELD CHECK
                                    $philhealth_stat="true";
                                    if($processtemp[0]->philhealth_salary_credit==0.00 || null)
                                    {
                                        $refphilhealth = $this->Philhealth_lookup_default($total_dtr_amount);
                                        $philhealthdeduct=$refphilhealth[0]->employee;
                                        $philhealth_id=$refphilhealth[0]->ref_philhealth_contribution_id;
                                        //echo json_encode($refphilhealth);
                                    }
                                    else{
                                        $philhealthlookuptaxshield=$processtemp[0]->philhealth_salary_credit;
                                        $philhealthdeduct=$this->SSS_lookup_shield($philhealthlookuptaxshield);
                                        $philhealth_id=0;
                                    }
                                  }
                                  //CYCLE 3
                                  elseif($processtemp[0]->pay_period_sequence==$philhealth_check3 AND $philhealth_is_deduct==1){
                                    //PHILHEALTH SHIELD CHECK
                                    $philhealth_stat="true";
                                    if($processtemp[0]->philhealth_salary_credit==0.00 || null)
                                    {
                                        $refphilhealth = $this->Philhealth_lookup_default($total_dtr_amount);
                                        $philhealthdeduct=$refphilhealth[0]->employee;
                                        $philhealth_id=$refphilhealth[0]->ref_philhealth_contribution_id;
                                        //echo json_encode($refphilhealth);
                                    }
                                    else{
                                        $philhealthlookuptaxshield=$processtemp[0]->philhealth_salary_credit;
                                        $philhealthdeduct=$this->SSS_lookup_shield($philhealthlookuptaxshield);
                                        $philhealth_id=0;
                                    }
                                  }
                                  //CYCLE 4
                                  elseif($processtemp[0]->pay_period_sequence==$philhealth_check4 AND $philhealth_is_deduct==1){
                                    //PHILHEALTH SHIELD CHECK
                                    $philhealth_stat="true";
                                    if($processtemp[0]->philhealth_salary_credit==0.00 || null)
                                    {
                                        $refphilhealth = $this->Philhealth_lookup_default($total_dtr_amount);
                                        $philhealthdeduct=$refphilhealth[0]->employee;
                                        $philhealth_id=$refphilhealth[0]->ref_philhealth_contribution_id;
                                        //echo json_encode($refphilhealth);
                                    }
                                    else{
                                        $philhealthlookuptaxshield=$processtemp[0]->philhealth_salary_credit;
                                        $philhealthdeduct=$this->SSS_lookup_shield($philhealthlookuptaxshield);
                                        $philhealth_id=0;
                                    }
                                  }
                                  else{
                                        $philhealthdeduct=0;
                                        $philhealth_stat="false";
                                  }
                                  //PAGIBIG Setting Cycle 1 AND IS DEDUCT IS TRUE
                                  if($processtemp[0]->pay_period_sequence==$pagibig_check1 AND $pagibig_is_deduct==1){
                                    //PAG IBIG SHIELD CHECK
                                    $pagibig_stat="true";
                                    if($processtemp[0]->pagibig_salary_credit==0.00 || null)
                                    {
                                        $pagibigdeduct=100;
                                    }
                                    else{
                                        $pagibigdeduct=$processtemp[0]->pagibig_salary_credit;
                                    }
                                  }
                                  //Cycle 2
                                  elseif($processtemp[0]->pay_period_sequence==$pagibig_check2 AND $pagibig_is_deduct==1){
                                    //PAG IBIG SHIELD CHECK
                                    $pagibig_stat="true";
                                    if($processtemp[0]->pagibig_salary_credit==0.00 || null)
                                    {
                                        $pagibigdeduct=100;
                                    }
                                    else{
                                        $pagibigdeduct=$processtemp[0]->pagibig_salary_credit;
                                    }
                                  }
                                  //Cycle 3
                                  elseif($processtemp[0]->pay_period_sequence==$pagibig_check3 AND $pagibig_is_deduct==1){
                                    //PAG IBIG SHIELD CHECK
                                    $pagibig_stat="true";
                                    if($processtemp[0]->pagibig_salary_credit==0.00 || null)
                                    {
                                        $pagibigdeduct=100;
                                    }
                                    else{
                                        $pagibigdeduct=$processtemp[0]->pagibig_salary_credit;
                                    }
                                  }
                                  //Cycle 4
                                  elseif($processtemp[0]->pay_period_sequence==$pagibig_check4 AND $pagibig_is_deduct==1){
                                    //PAG IBIG SHIELD CHECK
                                    $pagibig_stat="true";
                                    if($processtemp[0]->pagibig_salary_credit==0.00 || null)
                                    {
                                        $pagibigdeduct=100;
                                    }
                                    else{
                                        $pagibigdeduct=$processtemp[0]->pagibig_salary_credit;
                                    }
                                  }
                                  else{
                                        $pagibigdeduct=0;
                                        $pagibig_stat="false";
                                  }
                                  //SALARY REG RATES MINUS DEDUCTIONS SSS/PHIL/PAGIBIG
                                  $salary_reg_rates = $processtemp[0]->salary_reg_rates;
                                  $sss_phil_pagibig_deductions=$sssdeduct+$pagibigdeduct+$philhealthdeduct;
                                  $wtax_lookup_amount = $salary_reg_rates-$sss_phil_pagibig_deductions;
                                  /*echo $wtax_lookup_amount;*/
                                  //WITHHOLDING Setting Cycle 1 AND IS DEDUCT IS TRUE
                                  if($processtemp[0]->pay_period_sequence==$wtax_check1 AND $wtax_is_deduct==1){
                                    //WITH HOLDING TAX SHIELD CHECK
                                    $withholdingtax_stat="true";
                                    if($processtemp[0]->tax_shield==0.00 || null)
                                    {
                                        /*$taxshielddeduct=0;*/
                                        /*$withholding_lookup = $this->Wtax_lookup($wtax_lookup_amount,$emp_tax_code);*/
                                        $withholding_lookup = $wtax_lookup_amount;
                                    }
                                    else{
                                        $taxshielddeduct=$processtemp[0]->tax_shield;
                                        /*$withholding_lookup = $this->Wtax_lookup_shield($taxshielddeduct,$emp_tax_code);*/
                                        $withholding_lookup = $taxshielddeduct;

                                    }
                                  }
                                  //Cycle 2
                                  elseif($processtemp[0]->pay_period_sequence==$wtax_check2 AND $wtax_is_deduct==1){
                                    //WITH HOLDING TAX SHIELD CHECK
                                    $withholdingtax_stat="true";
                                    /*echo "True";*/
                                    if($processtemp[0]->tax_shield==0.00 || null)
                                    {
                                        /*$taxshielddeduct=0;*/
                                        /*$withholding_lookup = $this->Wtax_lookup($wtax_lookup_amount,$emp_tax_code);*/
                                        /*echo $withholding_lookup;*/
                                        $withholding_lookup = $wtax_lookup_amount;
                                    }
                                    else{
                                        $taxshielddeduct=$processtemp[0]->tax_shield;
                                        /*echo $taxshielddeduct;*/
                                        /*$withholding_lookup = $this->Wtax_lookup_shield($taxshielddeduct,$emp_tax_code);*/
                                        /*echo $withholding_lookup;*/
                                        $withholding_lookup = $taxshielddeduct;
                                    }
                                  }
                                  //Cycle 3
                                  elseif($processtemp[0]->pay_period_sequence==$wtax_check3 AND $wtax_is_deduct==1){
                                    //WITH HOLDING TAX SHIELD CHECK
                                    $withholdingtax_stat="true";
                                    if($processtemp[0]->tax_shield==0.00 || null)
                                    {
                                        /*$taxshielddeduct=0;*/
                                        /*$withholding_lookup = $this->Wtax_lookup($wtax_lookup_amount,$emp_tax_code);*/
                                        $withholding_lookup = $wtax_lookup_amount;
                                    }
                                    else{
                                        $taxshielddeduct=$processtemp[0]->tax_shield;
                                        /*$withholding_lookup = $this->Wtax_lookup_shield($taxshielddeduct,$emp_tax_code);*/
                                        $withholding_lookup = $taxshielddeduct;
                                    }
                                  }
                                  //Cycle 4
                                  elseif($processtemp[0]->pay_period_sequence==$wtax_check4 AND $wtax_is_deduct==1){
                                    //WITH HOLDING TAX SHIELD CHECK
                                    $withholdingtax_stat="true";
                                    if($processtemp[0]->tax_shield==0.00 || null)
                                    {
                                         /*$taxshielddeduct=0;*/
                                        /*$withholding_lookup = $this->Wtax_lookup($wtax_lookup_amount,$emp_tax_code);*/
                                        $withholding_lookup = $wtax_lookup_amount;
                                    }
                                    else{
                                        $taxshielddeduct=$processtemp[0]->tax_shield;
                                        /*$withholding_lookup = $this->Wtax_lookup_shield($taxshielddeduct,$emp_tax_code);*/
                                        $withholding_lookup = $taxshielddeduct;
                                    }
                                  }
                                  else{
                                        $withholding_lookup=0;
                                        $withholdingtax_stat="false";
                                  }
                                //GET REGULAR EARNINGS
                                $regular_earnings=0;
                                $re=0;
                                $regearningstemp = $this->db->query('SELECT oe_regular_id,earnings_id,oe_regular_amount FROM new_otherearnings_regular WHERE employee_id='.$processtemp[0]->employee_id.' AND oe_cycle='.$processtemp[0]->pay_period_sequence.' AND is_temporary=0');
                                foreach ($regearningstemp->result() as $row)
                                {
                                        $regular_earnings+=$row->oe_regular_amount;
                                        $oe_regular_id[$re] = $row->oe_regular_id;
                                        $earnings_id[$re] = $row->earnings_id;
                                        $oe_regular_amount[$re] = $row->oe_regular_amount;
                                        $re++;
                                }
                                 //GET TEMPORARY EARNINGS
                                $temporary_earnings=0;
                                $rt=0;
                                $tempearnings = $this->db->query('SELECT oe_regular_id,earnings_id,oe_regular_amount FROM new_otherearnings_regular WHERE employee_id='.$processtemp[0]->employee_id.' AND pay_period_id='.$processtemp[0]->pay_period_id.' AND is_temporary=1');
                                foreach ($tempearnings->result() as $row)
                                {
                                        $temporary_earnings+=$row->oe_regular_amount;
                                        $oe_regular_id_T[$rt] = $row->oe_regular_id;
                                        $earnings_id_T[$rt] = $row->earnings_id;
                                        $oe_regular_amount_T[$rt] = $row->oe_regular_amount;
                                        $rt++;
                                }
                                 //GET REGULAR DEDUCTIONS
                                $regular_deductions=0;
                                $rd=0;
                                /*$regulardeductionsetting = $this->db->query('SELECT deduction_id,is_deduct FROM daily_time_record
                                                                        LEFT JOIN dtr_deductions
                                                                        ON daily_time_record.dtr_id=dtr_deductions.dtr_id
                                                                        WHERE daily_time_record.dtr_id='.$dtr_id[$i].' AND deduction_id !=1 AND deduction_id !=2 AND deduction_id !=3 AND deduction_id !=4');
                                foreach ($regulardeductionsetting->result() as $rowregsetting)
                                {
                                    if($rowregsetting->is_deduct==TRUE){
                                        echo "true";
                                    }
                                    else{
                                        echo "false";
                                    }
                                }*/
                                $regulardeduction = $this->db->query('SELECT new_deductions_regular.deduction_regular_id,deduction_per_pay_amount,daily_time_record.dtr_id,is_deduct,new_deductions_regular.deduction_id FROM daily_time_record
                                                                    LEFT JOIN dtr_deductions
                                                                    ON daily_time_record.dtr_id=dtr_deductions.dtr_id
                                                                    LEFT JOIN new_deductions_regular
                                                                    ON dtr_deductions.deduction_id=new_deductions_regular.deduction_id
                                                                    WHERE new_deductions_regular.employee_id='.$processtemp[0]->employee_id.' AND daily_time_record.dtr_id='.$dtr.' AND deduction_cycle='.$processtemp[0]->pay_period_sequence.' AND is_temporary=0 AND new_deductions_regular.deduction_id!=1
                                                                    AND new_deductions_regular.deduction_id!=2 AND new_deductions_regular.deduction_id!=3 AND new_deductions_regular.deduction_id!=4');
                                //echo json_encode($regulardeduction->result());
                                foreach ($regulardeduction->result() as $row)
                                {
                                        if($row->is_deduct!=0){
                                            $regular_deductions+=$row->deduction_per_pay_amount;
                                        }
                                        else{

                                        }
                                        $deduction_regular_id[$rd] = $row->deduction_regular_id;
                                        $deduction_id[$rd] = $row->deduction_id;
                                        $deduction_per_pay_amount[$rd] = $row->deduction_per_pay_amount;
                                        $isdeduct[$rd] = $row->is_deduct;
                                        $rd++;
                                }
                                 //GET TEMPORARY DEDUCTIONS
                                $temporary_deductions=0;
                                $td=0;
                                $tempdeduction = $this->db->query('SELECT new_deductions_regular.deduction_regular_id,deduction_per_pay_amount,daily_time_record.dtr_id,is_deduct,new_deductions_regular.deduction_id FROM daily_time_record
                                                                    LEFT JOIN dtr_deductions
                                                                    ON daily_time_record.dtr_id=dtr_deductions.dtr_id
                                                                    LEFT JOIN new_deductions_regular
                                                                    ON dtr_deductions.deduction_id=new_deductions_regular.deduction_id
                                                                    WHERE new_deductions_regular.employee_id='.$processtemp[0]->employee_id.' AND daily_time_record.dtr_id='.$dtr.' AND new_deductions_regular.pay_period_id='.$processtemp[0]->pay_period_id.' AND is_temporary=1 AND new_deductions_regular.deduction_id!=1
                                                                    AND new_deductions_regular.deduction_id!=2 AND new_deductions_regular.deduction_id!=3 AND new_deductions_regular.deduction_id!=4');
                                //echo json_encode($tempdeduction->result());
                                foreach ($tempdeduction->result() as $row)
                                {
                                        if($row->is_deduct!=0){
                                             $temporary_deductions+=$row->deduction_per_pay_amount;
                                        }
                                        else{

                                        }
                                        $deduction_regular_id_T[$td] = $row->deduction_regular_id;
                                        $deduction_id_T[$td] = $row->deduction_id;
                                        $deduction_per_pay_amount_T[$td] = $row->deduction_per_pay_amount;
                                        $isdeduct_T[$td] = $row->is_deduct;
                                        $td++;
                                }
                                //echo json_encode($regulardeduction->result());
                                //echo json_encode($tempdeduction->result());
                                //echo $regular_deductions;
                                //echo "<br>";
                                //echo $temporary_deductions;
                                ///echo $temporary_earnings;
                                //echo $regular_earnings;
                                //echo $sssdeduct;
                                //echo $pagibigdeduct;
                                //echo $taxshielddeduct;
                                $gross_pay=$total_dtr_amount+$regular_earnings+$temporary_earnings;
                                $total_deductions=$sssdeduct+$pagibigdeduct+$philhealthdeduct+$withholding_lookup+$regular_deductions+$temporary_deductions;
                                $net_pay=$gross_pay-$total_deductions-$processtemp[0]->minutes_late_amt;
                                //echo $processtemp[0]->reg_amt;
                                  $dataupdate[0] = 
                                     array(
                                        'dtr_id' => $dtr,
                                        'reg_pay' => $reg_pay,
                                        'sun_pay' => $sun_pay,
                                        'reg_hol_pay' => $reg_hol_pay,
                                        'spe_hol_pay' => $spe_hol_pay,
                                        'reg_ot_pay' => $reg_ot_pay,
                                        'sun_ot_pay' => $sun_ot_pay,
                                        'reg_nsd_pay' => $reg_nsd_pay,
                                        'sun_nsd_pay' => $sun_nsd_pay,
                                        'minutes_late_amt' => $processtemp[0]->minutes_late_amt,
                                        'total_dtr_amount' => $total_dtr_amount,
                                        'gross_pay' => $gross_pay,
                                        'taxable_pay' => $total_dtr_amount,
                                        'total_deductions' => $total_deductions,
                                        'net_pay' => $net_pay

                                     );
                                $this->db->update_batch('pay_slip',$dataupdate, 'dtr_id');
                                //LAST INSERT ID OF PAY SLIP
                                //$pay_slip_id=$this->db->insert_id();
                                //CODE TO INSERT TO PAY SLIP EARNINGS
                                $z=0;
                                $dataregearnings_e="";
                                for($z;$re>$z;$z++){
                                    $dataregearnings_e[] = 
                                     array(
                                        'pay_slip_id' => $payslipid[0]->pay_slip_id,
                                        'earnings_id' => $earnings_id[$z],
                                        'earnings_amount' => $oe_regular_amount[$z],
                                        'oe_regular_id' => $oe_regular_id[$z]
                                     );
                                }
                                $x=0;
                                $datatempearnings_e="";
                                for($x;$rt>$x;$x++){
                                    $datatempearnings_e[] = 
                                     array(
                                        'pay_slip_id' => $payslipid[0]->pay_slip_id,
                                        'earnings_id' => $earnings_id_T[$x],
                                        'earnings_amount' => $oe_regular_amount_T[$x],
                                        'oe_regular_id' => $oe_regular_id_T[$x]
                                     );
                                }
                                $z_deduct=0;
                                $dataregdeductions_e ="";
                                for($z_deduct;$rd>$z_deduct;$z_deduct++){
                                    $dataregdeductions_e[] = 
                                     array(
                                        'pay_slip_id' => $payslipid[0]->pay_slip_id,
                                        'deduction_id' => $deduction_id[$z_deduct],
                                        'deduction_amount' => $deduction_per_pay_amount[$z_deduct],
                                        'deduction_regular_id' => $deduction_regular_id[$z_deduct],
                                        'active_deduct' => $isdeduct[$z_deduct],
                                     );
                                }
                                $x_deduct=0;
                                $datatempdeductions_e="";
                                for($x_deduct;$td>$x_deduct;$x_deduct++){
                                    $datatempdeductions_e[] = 
                                     array(
                                        'pay_slip_id' => $payslipid[0]->pay_slip_id,
                                        'deduction_id' => $deduction_id_T[$x_deduct],
                                        'deduction_amount' => $deduction_per_pay_amount_T[$x_deduct],
                                        'deduction_regular_id' => $deduction_regular_id_T[$x_deduct],
                                        'active_deduct' => $isdeduct_T[$x_deduct],
                                     );
                                }
                                if($re!=0){
                                  $this->db->insert_batch('pay_slip_other_earnings', $dataregearnings_e);
                                }
                                else{
                                  //do not insert
                                }
                                if($rt!=0){
                                  $this->db->insert_batch('pay_slip_other_earnings', $datatempearnings_e);
                                }
                                else{
                                  //do not insert
                                }
                                if($z_deduct!=0){
                                  $this->db->insert_batch('pay_slip_deductions', $dataregdeductions_e);
                                }
                                else{
                                  //do not insert
                                }
                                if($x_deduct!=0){
                                  $this->db->insert_batch('pay_slip_deductions', $datatempdeductions_e);
                                }
                                else{
                                  //do not insert
                                }

                                if($sss_stat=="true"){
                                  $data_deductions_e[0] = 
                                     array(
                                        'pay_slip_id' => $payslipid[0]->pay_slip_id,
                                        'deduction_id' => 1,
                                        'deduction_amount' => $sssdeduct,
                                        'sss_id' => $sss_id,
                                        'active_deduct' => TRUE,
                                     );
                                  $this->db->insert_batch('pay_slip_deductions', $data_deductions_e);
                                }
                                else{
                                  //insert with false deduct
                                    $data_deductions_e[0] = 
                                     array(
                                        'pay_slip_id' => $payslipid[0]->pay_slip_id,
                                        'deduction_id' => 1,
                                        'deduction_amount' => $sssdeduct,
                                        'active_deduct' => FALSE,
                                     );
                                    $this->db->insert_batch('pay_slip_deductions', $data_deductions_e);
                                }
                                if($philhealth_stat=="true"){
                                  $data_deductions_phil_e[0] = 
                                     array(
                                        'pay_slip_id' => $payslipid[0]->pay_slip_id,
                                        'deduction_id' => 2,
                                        'deduction_amount' => $philhealthdeduct,
                                        'philhealth_id' => $philhealth_id,
                                        'active_deduct' => TRUE,
                                     );
                                  $this->db->insert_batch('pay_slip_deductions', $data_deductions_phil_e);
                                }
                                else{
                                  //insert with false deduct
                                    $data_deductions_phil_e[0] = 
                                     array(
                                        'pay_slip_id' => $payslipid[0]->pay_slip_id,
                                        'deduction_id' => 2,
                                        'deduction_amount' => $philhealthdeduct,
                                        'active_deduct' => FALSE,
                                     );
                                    $this->db->insert_batch('pay_slip_deductions', $data_deductions_phil_e);

                                }
                                if($pagibig_stat=="true"){
                                  $data_deductions_pagibig_e[0] = 
                                     array(
                                        'pay_slip_id' => $payslipid[0]->pay_slip_id,
                                        'deduction_id' => 3,
                                        'deduction_amount' => $pagibigdeduct,
                                        'active_deduct' => TRUE,
                                     );
                                  $this->db->insert_batch('pay_slip_deductions', $data_deductions_pagibig_e);
                                }
                                else{
                                  //insert pagibig with flase deduct
                                    $data_deductions_pagibig_e[0] = 
                                     array(
                                        'pay_slip_id' => $payslipid[0]->pay_slip_id,
                                        'deduction_id' => 3,
                                        'deduction_amount' => $pagibigdeduct,
                                        'active_deduct' => FALSE,
                                     );
                                    $this->db->insert_batch('pay_slip_deductions', $data_deductions_pagibig_e);
                                }
                                //WITHHOLDING TAX TRUE
                                if($withholdingtax_stat=="true"){
                                    /*$wtax = $this->Wtax_lookup($total_dtr_amount);*/
                                    /*echo $wtax;*/
                                    /*echo "true";*/
                                  $data_deductions_withholdingtax_e[0] = 
                                     array(
                                        'pay_slip_id' => $payslipid[0]->pay_slip_id,
                                        'deduction_id' => 4,
                                        'deduction_amount' => $withholding_lookup,
                                        'active_deduct' => TRUE,
                                     );
                                    $this->db->insert_batch('pay_slip_deductions', $data_deductions_withholdingtax_e);
                                }
                                else{
                                  //insert WH TAX with false deduct
                                    /*$wtax = $this->Wtax_lookup($total_dtr_amount);*/
                                    /*echo $wtax;*/
                                    $data_deductions_withholdingtax_e[0] = 
                                     array(
                                        'pay_slip_id' => $payslipid[0]->pay_slip_id,
                                        'deduction_id' => 4,
                                        'deduction_amount' => $withholding_lookup,
                                        'active_deduct' => FALSE,
                                     );
                                    $this->db->insert_batch('pay_slip_deductions', $data_deductions_withholdingtax_e);
                                }


                            }
                        $i++;
                        }
                    return true;        
    }

}
?>