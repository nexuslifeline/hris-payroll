<?php

class Employee_model extends CORE_Model {
    protected  $table="employee_list";
    protected  $pk_id="employee_id";

    function __construct() {
        parent::__construct();
    }

    function getcountemployee() {
        $query = $this->db->query('SELECT COUNT(employee_list.employee_id) as total_employee FROM employee_list
								LEFT join emp_rates_duties ON
								employee_list.employee_id=emp_rates_duties.employee_id
								 WHERE employee_list.is_deleted=0 AND active_rates_duties=TRUE');
                            $query->result();

                          return $query->result();
    }

    function empcountperdept() {
        $query = $this->db->query('SELECT COUNT(ref_department.ref_department_id) as totalperdept,ref_department.department FROM employee_list
        LEFT JOIN emp_rates_duties ON
        emp_rates_duties.employee_id=employee_list.employee_id
        LEFT JOIN ref_department ON
        ref_department.ref_department_id=emp_rates_duties.ref_department_id
        WHERE active_rates_duties=1 AND employee_list.is_deleted=0
        GROUP BY ref_department.ref_department_id');
        $query->result();
        return $query->result();
    }

    function empcountperbranch() {
        $query = $this->db->query('SELECT COUNT(ref_branch.ref_branch_id) as totalperbranch,ref_branch.branch FROM employee_list
        LEFT JOIN emp_rates_duties ON
        emp_rates_duties.employee_id=employee_list.employee_id
        LEFT JOIN ref_branch ON
        ref_branch.ref_branch_id=emp_rates_duties.ref_branch_id
        WHERE active_rates_duties=1 AND employee_list.is_deleted=0
        GROUP BY ref_branch.ref_branch_id');
        $query->result();
        return $query->result();
    }

    function dashmonthlygross() {
        $query = $this->db->query("SELECT m.*
        	FROM(SELECT (CASE
        	WHEN EXTRACT(MONTH FROM pay_period_start) = '1' THEN '00'
            WHEN EXTRACT(MONTH FROM pay_period_start) = '2' THEN '01'
            WHEN EXTRACT(MONTH FROM pay_period_start) = '3' THEN '02'
            WHEN EXTRACT(MONTH FROM pay_period_start) = '4' THEN '03'
            WHEN EXTRACT(MONTH FROM pay_period_start) = '5' THEN '04'
            WHEN EXTRACT(MONTH FROM pay_period_start) = '6' THEN '05'
        	WHEN EXTRACT(MONTH FROM pay_period_start) = '7' THEN '06'
            WHEN EXTRACT(MONTH FROM pay_period_start) = '8' THEN '07'
            WHEN EXTRACT(MONTH FROM pay_period_start) = '9' THEN '08'
            WHEN EXTRACT(MONTH FROM pay_period_start) = '10' THEN '09'
            WHEN EXTRACT(MONTH FROM pay_period_start) = '11' THEN '10'
            WHEN EXTRACT(MONTH FROM pay_period_start) = '12' THEN '11'
              END) as Month,
              ROUND(SUM(reg_pay),2) as reg_pay,ROUND(SUM(net_pay),2) as net_pay
         FROM pay_slip
        LEFT JOIN daily_time_record ON
        daily_time_record.dtr_id=pay_slip.dtr_id
        LEFT JOIN refpayperiod ON
        refpayperiod.pay_period_id=daily_time_record.pay_period_id
        GROUP BY Month) as m");
        $query->result();
        return $query->result();
    }

    function dashcompensationdept() {
        $year = date('Y');
        $query = $this->db->query("SELECT m.*
          	FROM(SELECT ref_department.department,
                ROUND(SUM(reg_pay),2) as reg_pay,ROUND(SUM(net_pay),2) as net_pay
           FROM pay_slip
          LEFT JOIN daily_time_record ON
          daily_time_record.dtr_id=pay_slip.dtr_id
          LEFT JOIN refpayperiod ON
          refpayperiod.pay_period_id=daily_time_record.pay_period_id
          LEFT JOIN emp_rates_duties ON
          emp_rates_duties.employee_id=daily_time_record.employee_id
          LEFT JOIN ref_department ON
          ref_department.ref_department_id=emp_rates_duties.ref_department_id
          WHERE EXTRACT(YEAR FROM pay_period_start) = '".$year."' AND emp_rates_duties.active_rates_duties=1
          GROUP BY ref_department.ref_department_id) as m");
        $query->result();
        return $query->result();
    }
}
?>
