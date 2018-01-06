<?php

class Leavefiled_model extends CORE_Model {
    protected  $table="emp_leaves_filed";
    protected  $pk_id="emp_leaves_filed_id";

    function __construct() {
        parent::__construct();
    }

    function getleavesfiled($active_year,$employee_id,$emp_leaves_entitlement_id) {
    	$this->db->where('employee_id', $employee_id);
    	$this->db->where('emp_leaves_entitlement_id', $emp_leaves_entitlement_id);
    	$this->db->where('emp_leave_year_id', $active_year);
    	/*$this->db->select('emp_leaves_entitlement_id');*/
    	$this->db->select_sum('total');
        $query = $this->db->get('emp_leaves_filed');
        foreach($query->result() as $row)  
        {
        	$total_leave=$row->total;
        }              
         return $total_leave;
    }


}
?>