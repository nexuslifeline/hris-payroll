<?php

class RatesDuties_model extends CORE_Model {
    protected  $table="emp_rates_duties";
    protected  $pk_id="emp_rates_duties_id";

    function __construct() {
        parent::__construct();
    }

    function updateAllRates() {
    	$sql = "UPDATE emp_rates_duties SET active_rates_duties = 0";
    	return $this->db->query($sql);
    }


}
?>