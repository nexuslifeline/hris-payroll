<?php

class SchedEmployee_model extends CORE_Model {
    protected  $table="schedule_employee";
    protected  $pk_id="schedule_employee_id";

    function __construct() {
        parent::__construct();
    }

    function ifschedoverlapscreate($employee_id,$pay_period_id,$sched_refshift_id) {
        $query = $this->db->query("SELECT schedule_employee.schedule_employee_id,schedule_employee.sched_refshift_id,schedule_employee.time_in,schedule_employee.time_out,
                                   CONCAT(employee_list.first_name,' ',middle_name,' ',employee_list.last_name) as full_name
                                   FROM schedule_employee
                                   LEFT JOIN employee_list
                                   ON schedule_employee.employee_id=employee_list.employee_id
                                    WHERE schedule_employee.employee_id='".$employee_id."' AND pay_period_id=".$pay_period_id." AND schedule_employee.is_deleted=0 AND sched_refshift_id=".$sched_refshift_id."");

                                return $query->result();

    }

    function ifschedoverlaps($employee_id,$pay_period_id,$date,$time_in,$time_out) {
        $query = $this->db->query("SELECT schedule_employee.schedule_employee_id,schedule_employee.sched_refshift_id,schedule_employee.time_in,schedule_employee.time_out FROM schedule_employee
                                    WHERE employee_id='".$employee_id."' AND date='".$date."' AND pay_period_id=".$pay_period_id." AND is_deleted=0 AND (('".$time_in."' BETWEEN schedule_employee.time_in
                                    AND schedule_employee.time_out) OR ('".$time_out."' BETWEEN schedule_employee.time_in AND schedule_employee.time_out))");

                                return $query->result();

    }

    function checkshiftexist($employee_id,$pay_period_id,$date,$time_in,$time_out,$sched_refshift_id) {
        $query = $this->db->query("SELECT schedule_employee.schedule_employee_id,schedule_employee.sched_refshift_id FROM schedule_employee
                                    WHERE employee_id='".$employee_id."' AND date='".$date."' AND pay_period_id=".$pay_period_id." AND is_deleted=0 AND  sched_refshift_id=".$sched_refshift_id);

                                return $query->result();

    }


    function get_pay_period($date) {
      	$query = $this->db->query("SELECT refpayperiod.pay_period_id FROM refpayperiod WHERE '".$date."' BETWEEN refpayperiod.pay_period_start AND refpayperiod.pay_period_end AND is_deleted=0");

                                return $query->result();

    }

    // function get_schedule_id($employee_id,$pay_period_id,$date,$time) {
    //   	$query = $this->db->query("SELECT schedule_employee.schedule_employee_id,schedule_employee.is_in,schedule_employee.is_out,schedule_employee.break_time,schedule_employee.clock_in,schedule_employee.total,schedule_employee.time_out,
    //                                 DATE_ADD(schedule_employee.time_in,INTERVAL -schedule_employee.advance_in_out MINUTE) as timein,
    //                                 DATE_ADD(schedule_employee.time_out,INTERVAL schedule_employee.advance_in_out MINUTE) as timeout
    //                                 FROM schedule_employee
		// 							WHERE employee_id='".$employee_id."' AND date='".$date."' AND pay_period_id=".$pay_period_id." AND schedule_employee.is_deleted=0 HAVING ('".$time."' BETWEEN timein  AND timeout )");
    //
    //                             return $query->result();
    //
    // }

    function get_schedule_id($employee_id,$pay_period_id,$date,$time) {
      	$query = $this->db->query("SELECT schedule_employee.schedule_employee_id,schedule_employee.is_in,schedule_employee.is_out,schedule_employee.break_time,schedule_employee.clock_in,schedule_employee.total,schedule_employee.time_out,
          schedule_employee.allow_ot,schedule_employee.ot_in,schedule_employee.ot_out,
                                    DATE_ADD(schedule_employee.time_in,INTERVAL -schedule_employee.advance_in_out MINUTE) as timein,
                                    DATE_ADD(schedule_employee.time_out,INTERVAL schedule_employee.advance_in_out MINUTE) as timeout
                                    FROM schedule_employee
									WHERE employee_id='".$employee_id."' AND pay_period_id=".$pay_period_id." AND schedule_employee.is_deleted=0 HAVING ('".$time."' BETWEEN timein  AND timeout )");

                                return $query->result();

    }

    function check_ot($employee_id,$pay_period_id,$date,$time) {
      	$query = $this->db->query("SELECT allow_ot,schedule_employee.schedule_employee_id,schedule_employee.is_in,schedule_employee.is_out,schedule_employee.break_time,schedule_employee.clock_in,schedule_employee.total,schedule_employee.time_out,
          schedule_employee.allow_ot,schedule_employee.ot_in,schedule_employee.ot_out
                                    FROM schedule_employee
									WHERE employee_id='".$employee_id."' AND pay_period_id=".$pay_period_id." AND date='".$date."' AND schedule_employee.is_deleted=0 HAVING ('".$time."' > time_out ) ");

                                return $query->result();

    }

    function get_period_sched($employee_id,$date) {
        $query = $this->db->query("SELECT schedule_employee.day,schedule_employee.date,schedule_employee.stat_completion,schedule_employee.total,schedule_employee.time_in,schedule_employee.time_out FROM schedule_employee
                                    LEFT JOIN refpayperiod ON
                                    schedule_employee.pay_period_id=refpayperiod.pay_period_id
                                    WHERE employee_id='".$employee_id."' AND schedule_employee.date BETWEEN refpayperiod.pay_period_start AND refpayperiod.pay_period_end AND schedule_employee.is_deleted=0 AND
                                    '".$date."' BETWEEN refpayperiod.pay_period_start AND refpayperiod.pay_period_end
                                    ORDER BY schedule_employee.date DESC");

                                return $query->result();

    }

    function get_whosinout($pay_period_id,$date,$time,$type) {
      	$query = $this->db->query("SELECT employee_list.ecode,CONCAT(employee_list.first_name,' ',employee_list.middle_name,' ',employee_list.last_name) as full_name,
                                   DATE_FORMAT(schedule_employee.clock_in,'%h:%i %p') as time_in12,
                                   DATE_FORMAT(schedule_employee.clock_out,'%h:%i %p') as time_out12,
                                   DATE_ADD(schedule_employee.time_in,INTERVAL -schedule_employee.advance_in_out MINUTE) as timein,
                                   DATE_ADD(schedule_employee.time_out,INTERVAL schedule_employee.advance_in_out MINUTE) as timeout
                                   FROM schedule_employee
                                   LEFT JOIN employee_list ON
                                   schedule_employee.employee_id=employee_list.employee_id
                                   WHERE date='".$date."' AND pay_period_id=".$pay_period_id." AND schedule_employee.is_deleted=0  AND is_in=1 HAVING ('".$time."' BETWEEN timein  AND timeout )
                                   ORDER BY schedule_employee.clock_in ASC");

                                return $query->result();

    }

    function count_whosin($pay_period_id,$date,$time,$type) {
      	$query = $this->db->query("SELECT COUNT(schedule_employee.schedule_employee_id) as whos_in,
                                   DATE_ADD(schedule_employee.time_in,INTERVAL -schedule_employee.advance_in_out MINUTE) as timein,
                                   DATE_ADD(schedule_employee.time_out,INTERVAL schedule_employee.advance_in_out MINUTE) as timeout
                                   FROM schedule_employee
                                   WHERE date='".$date."' AND pay_period_id=".$pay_period_id." AND schedule_employee.is_deleted=0  AND is_in=1 HAVING ('".$time."' BETWEEN timein  AND timeout )");

                                return $query->result();

    }

    function get_whosout($pay_period_id,$date,$time,$type) {
      	$query = $this->db->query("SELECT employee_list.ecode,CONCAT(employee_list.first_name,' ',employee_list.middle_name,' ',employee_list.last_name) as full_name,
                                   DATE_FORMAT(schedule_employee.clock_in,'%h:%i %p') as time_in12,
                                   DATE_FORMAT(schedule_employee.clock_out,'%h:%i %p') as time_out12,
                                   DATE_ADD(schedule_employee.time_in,INTERVAL -schedule_employee.advance_in_out MINUTE) as timein,
                                   DATE_ADD(schedule_employee.time_out,INTERVAL schedule_employee.advance_in_out MINUTE) as timeout
                                   FROM schedule_employee
                                   LEFT JOIN employee_list ON
                                   schedule_employee.employee_id=employee_list.employee_id
                                   WHERE date='".$date."' AND pay_period_id=".$pay_period_id." AND schedule_employee.is_deleted=0  AND is_in=1 AND is_out=1 HAVING ('".$time."' BETWEEN timein  AND timeout )
                                   ORDER BY schedule_employee.clock_out");

                                return $query->result();

    }

    function get_schedule_stat($employee_id,$pay_period_id) {
      	$query = $this->db->query("SELECT schedule_employee.schedule_employee_id
                                    FROM schedule_employee
									WHERE employee_id='".$employee_id."' AND pay_period_id=".$pay_period_id." AND schedule_employee.is_deleted=0 ");

                                return $query->result();

    }

    function get_timediff($time_in,$time_out,$break_time) {
      	$query = $this->db->query("SELECT SEC_TO_TIME((a.totalminutes-b.breaktime)*60) as total_hours,(a.totalminutes-b.breaktime) as minutesattended FROM
                                  (SELECT TIMESTAMPDIFF(MINUTE,'".$time_in."','".$time_out."') as totalminutes) as a
                                  CROSS JOIN (SELECT TIME_TO_SEC('".$break_time."') / 60 as breaktime) as  b");

                                return $query->result();

    }

    function conv_timetominute($sched_hours) {
      	$query = $this->db->query("SELECT TIME_TO_SEC('".$sched_hours."') / 60 as sched_minutes");

                                return $query->result();

    }

    function checkifdoublein($schedule_employee_id,$time) {
      	$query = $this->db->query("SELECT
                                        (CASE
                                            WHEN
                                                (TIMESTAMPDIFF(MINUTE,
                                                    clock_in,
                                                    '".$time."')) < 15
                                            THEN
                                                1
                                            ELSE 0
                                        END) AS instatus
                                    FROM
                                        schedule_employee
                                    WHERE
                                        schedule_employee_id = ".$schedule_employee_id."
                                            AND schedule_employee.is_deleted = 0");
                                $result = $query->result();
                                return $result[0]->instatus;

    }

    function checkifforgottoout($pay_period_id,$date,$time) {

      $query = $this->db->query("SELECT employee_list.employee_id,schedule_employee.schedule_employee_id,schedule_employee.time_out,
                                     DATE_ADD(schedule_employee.time_in,INTERVAL -schedule_employee.advance_in_out MINUTE) as timein,
                                     DATE_ADD(schedule_employee.time_out,INTERVAL schedule_employee.advance_in_out MINUTE) as timeout
                                     FROM schedule_employee
                                     LEFT JOIN employee_list ON
                                     schedule_employee.employee_id=employee_list.employee_id
                                     WHERE pay_period_id=".$pay_period_id." AND schedule_employee.is_deleted=0  AND is_in=1 AND is_out=0 HAVING ('".$time."' > timeout )
                                       ORDER BY schedule_employee.clock_in ASC");
                              $result = $query->result();
                              return $result;
    }

    // function checkifforgottoout($pay_period_id,$date,$time) {
    //
    //   $query = $this->db->query("SELECT employee_list.employee_id,schedule_employee.schedule_employee_id,schedule_employee.time_out,
    //                                  DATE_ADD(schedule_employee.time_in,INTERVAL -schedule_employee.advance_in_out MINUTE) as timein,
    //                                  DATE_ADD(schedule_employee.time_out,INTERVAL schedule_employee.advance_in_out MINUTE) as timeout
    //                                  FROM schedule_employee
    //                                  LEFT JOIN employee_list ON
    //                                  schedule_employee.employee_id=employee_list.employee_id
    //                                  WHERE date='".$date."' AND pay_period_id=".$pay_period_id." AND schedule_employee.is_deleted=0  AND is_in=1 AND is_out=0 HAVING ('".$time."' > timeout )
    //                                    ORDER BY schedule_employee.clock_in ASC");
    //                           $result = $query->result();
    //                           return $result;
    // }

    // function get_timediff($time_in,$time_out) {
    //   	$query = $this->db->query("SELECT TIMESTAMPDIFF(HOUR,'".$time_in."','".$time_out."') as total_hours");
    //
    //                             return $query->result();
    //
    // }






}
?>
