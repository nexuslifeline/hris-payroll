<?php

class SchedDTR_model extends CORE_Model {
    protected  $table="schedule_employee";
    protected  $pk_id="schedule_employee_id";

    function __construct() {
        parent::__construct();
    }

    function getscheddtr($employee_id,$pay_period_id) {
        $query = $this->db->query("SELECT CASE WHEN clock_in <= time_in THEN 0 ELSE TIMESTAMPDIFF(MINUTE,time_in,clock_in) END as timelate,
                                    ottime,
                                    CASE WHEN ((totalattendedhours/60)-(breaktime)) >= (totalhours/60)-(breaktime) THEN ROUND((totalhours/60)-(breaktime),2)
                                     ELSE ROUND(((totalattendedhours/60)-(breaktime)),2) END as newhour,
                                t.fullname,t.*,ROUND((totalattendedhours/60)-(breaktime),2) as tfinalhours,
                                ROUND(TIME_TO_SEC(total) / 60 /60,2) as totalhrs
                                FROM
                                (SELECT TIMESTAMPDIFF(MINUTE,clock_in,clock_out) as totalattendedhours,clock_in,clock_out,
                                TIMESTAMPDIFF(MINUTE,time_in,time_out) as totalhours, ROUND(TIME_TO_SEC(break_time) / 60 /60,2) as breaktime ,
                                COALESCE(TIMESTAMPDIFF(MINUTE,time_out,ot_out),0) as ottime,
                                	CONCAT(first_name,' ',middle_name,' ',last_name) as fullname,
                                    CONCAT(refpayperiod.pay_period_start,'-',refpayperiod.pay_period_end) as payperiod,date,time_in,time_out,total
                                    FROM schedule_employee
                                	LEFT JOIN employee_list
                                	ON schedule_employee.employee_id=employee_list.employee_id
                                	LEFT JOIN refpayperiod
                                	ON schedule_employee.pay_period_id=refpayperiod.pay_period_id
                                  WHERE schedule_employee.employee_id='".$employee_id."' AND schedule_employee.pay_period_id=".$pay_period_id." AND
                                   schedule_employee.is_deleted=0) as t");
        return $query->result();

    }

    function getdtrsummary($pay_period_id) {
        $query = $this->db->query("SELECT ecode,CONCAT(first_name,' ',middle_name,' ',last_name) as fullname,ROUND(se.newhour,2) as totalperiodhours,se.breaktime,se.timelate,
                                    se.ottime
                                    ,ref_department.ref_department_id
                                    FROM employee_list
                                    LEFT JOIN(
                                    SELECT b.* FROM
                                    (
                                    	SELECT
                                         SUM(CASE WHEN ( (TIMESTAMPDIFF(MINUTE,clock_in,clock_out)/60)-(TIME_TO_SEC(break_time) / 60 /60) )
                                    	 >=
                                         ( (TIMESTAMPDIFF(MINUTE,time_in,time_out)/60)-(TIME_TO_SEC(break_time) / 60 /60) )
                                         THEN ( (TIMESTAMPDIFF(MINUTE,time_in,time_out)/60)-(TIME_TO_SEC(break_time) / 60 /60) )
                                         ELSE
                                         ( (TIMESTAMPDIFF(MINUTE,clock_in,clock_out)/60)-(TIME_TO_SEC(break_time) / 60 /60) )
                                         END )
                                         as newhour,
                                        SUM(CASE WHEN clock_in <= time_in THEN 0 ELSE TIMESTAMPDIFF(MINUTE,time_in,clock_in) END) as timelate,
                                        COALESCE(SUM(TIMESTAMPDIFF(MINUTE,time_out,ot_out)),0) as ottime,
                                         employee_id,TIMESTAMPDIFF(MINUTE,clock_in,clock_out) as totalattendedhours,clock_in,clock_out,
                                    	TIMESTAMPDIFF(MINUTE,time_in,time_out) as totalhours, SUM(ROUND(TIME_TO_SEC(break_time) / 60 /60,2)) as breaktime,
                                        time_in,time_out,total
                                        FROM schedule_employee
                                        WHERE pay_period_id=".$pay_period_id."
                                        GROUP by employee_id
                                    )
                                     as b
                                     GROUP BY b.employee_id
                                    ) as se
                                    ON se.employee_id=employee_list.employee_id
                                    LEFT JOIN emp_rates_duties
                                    ON emp_rates_duties.employee_id=employee_list.employee_id
                                    LEFT JOIN ref_department
                                    ON ref_department.ref_department_id=emp_rates_duties.ref_department_id
                                    WHERE emp_rates_duties.active_rates_duties=1
                                    ORDER BY ref_department.ref_department_id
                                    ");
        return $query->result();

    }

    function getscheddtrdetailed($filter_value,$filter_value2) {
        $employee_filter = ($filter_value2 == "all") ? "" : "AND se.employee_id=".$filter_value2;
        $query = $this->db->query("SELECT m.*,GROUP_CONCAT(CONCAT(m.`date`,'=',ROUND(thour,2),' ~ ',ROUND(COALESCE(ottime / 60,0.00),2)))as data_serial,
        ROUND(SUM(temp),2) as totalhour,SUM(ROUND(COALESCE(ottime / 60,0.00),2)) as total_ot

        FROM
        (SELECT

            se.employee_id,se.pay_period_id,
            se.sched_refshift_id,se.`date`,
            rp.pay_period_start,rp.pay_period_end,
            CONCAT(el.first_name,' ',el.middle_name,' ',el.last_name) as full_name,
            dept.department,dept.ref_department_id,
        CASE WHEN ( (TIMESTAMPDIFF(MINUTE,clock_in,clock_out)/60)-(TIME_TO_SEC(break_time) / 60 /60) )
				>=
				( (TIMESTAMPDIFF(MINUTE,time_in,time_out)/60)-(TIME_TO_SEC(break_time) / 60 /60) )
				THEN ( (TIMESTAMPDIFF(MINUTE,time_in,time_out)/60)-(TIME_TO_SEC(break_time) / 60 /60) )
				ELSE
				( (TIMESTAMPDIFF(MINUTE,clock_in,clock_out)/60)-(TIME_TO_SEC(break_time) / 60 /60) )
				END as temp,TIMESTAMPDIFF(MINUTE,time_out,ot_out) as ottime,
          GROUP_CONCAT(
				CASE WHEN ( (TIMESTAMPDIFF(MINUTE,clock_in,clock_out)/60)-(TIME_TO_SEC(break_time) / 60 /60) )
				>=
				( (TIMESTAMPDIFF(MINUTE,time_in,time_out)/60)-(TIME_TO_SEC(break_time) / 60 /60) )
				THEN ( (TIMESTAMPDIFF(MINUTE,time_in,time_out)/60)-(TIME_TO_SEC(break_time) / 60 /60) )
				ELSE
				( (TIMESTAMPDIFF(MINUTE,clock_in,clock_out)/60)-(TIME_TO_SEC(break_time) / 60 /60) )
				END

				SEPARATOR ':'
			)

             as thour

        FROM `schedule_employee`

        as se


        INNER JOIN refpayperiod as rp ON rp.pay_period_id=se.pay_period_id
        LEFT JOIN employee_list as el ON el.employee_id=se.employee_id
        LEFT JOIN emp_rates_duties as erd ON erd.employee_id=se.employee_id
        LEFT JOIN ref_department as dept ON dept.ref_department_id=erd.ref_department_id


        WHERE se.is_in=1 AND se.is_out=1 AND  se.is_deleted=0 AND se.pay_period_id=".$filter_value." ".$employee_filter."

        GROUP BY employee_id,se.`date`)as m GROUP BY m.employee_id ORDER BY m.full_name ASC,m.department ASC");

                                return $query->result();

    }

}
?>
