#
# TABLE STRUCTURE FOR: backup
#

DROP TABLE IF EXISTS `backup`;

CREATE TABLE `backup` (
  `backup_id` int(11) NOT NULL AUTO_INCREMENT,
  `backup_name` varchar(250) DEFAULT NULL,
  `backup_date` varchar(45) DEFAULT NULL,
  `backup_path` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`backup_id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

INSERT INTO `backup` (`backup_id`, `backup_name`, `backup_date`, `backup_path`) VALUES ('25', 'hrispayroll-2017-05-29-12-29-36.sql', '2017-05-29 12:29:36', 'backup/hrispayroll-2017-05-29-12-29-36.sql');
INSERT INTO `backup` (`backup_id`, `backup_name`, `backup_date`, `backup_path`) VALUES ('26', 'hrispayroll-2017-05-29-01-16-30.sql', '2017-05-29 13:16:30', 'backup/hrispayroll-2017-05-29-01-16-30.sql');
INSERT INTO `backup` (`backup_id`, `backup_name`, `backup_date`, `backup_path`) VALUES ('27', 'hrispayroll-2017-05-29-03-29-13.sql', '2017-05-29 15:29:13', 'backup/hrispayroll-2017-05-29-03-29-13.sql');
INSERT INTO `backup` (`backup_id`, `backup_name`, `backup_date`, `backup_path`) VALUES ('28', 'hrispayroll-2017-05-30-10-35-48.sql', '2017-05-30 10:35:48', 'backup/hrispayroll-2017-05-30-10-35-48.sql');
INSERT INTO `backup` (`backup_id`, `backup_name`, `backup_date`, `backup_path`) VALUES ('29', 'hrispayroll-2017-05-31-11-21-53.sql', '2017-05-31 11:21:53', 'backup/hrispayroll-2017-05-31-11-21-53.sql');
INSERT INTO `backup` (`backup_id`, `backup_name`, `backup_date`, `backup_path`) VALUES ('30', 'hrispayroll-2017-05-31-03-39-06.sql', '2017-05-31 15:39:06', 'backup/hrispayroll-2017-05-31-03-39-06.sql');
INSERT INTO `backup` (`backup_id`, `backup_name`, `backup_date`, `backup_path`) VALUES ('31', 'hrispayroll-2017-06-02-11-03-43.sql', '2017-06-02 11:03:43', 'backup/hrispayroll-2017-06-02-11-03-43.sql');
INSERT INTO `backup` (`backup_id`, `backup_name`, `backup_date`, `backup_path`) VALUES ('32', 'hrispayroll-2017-06-06-09-43-09.sql', '2017-06-06 09:43:09', 'backup/hrispayroll-2017-06-06-09-43-09.sql');
INSERT INTO `backup` (`backup_id`, `backup_name`, `backup_date`, `backup_path`) VALUES ('33', 'hrispayroll-2017-06-09-04-27-11.sql', '2017-06-09 16:27:11', 'backup/hrispayroll-2017-06-09-04-27-11.sql');
INSERT INTO `backup` (`backup_id`, `backup_name`, `backup_date`, `backup_path`) VALUES ('34', 'hrispayroll-2017-06-16-03-03-54.sql', '2017-06-16 15:03:54', 'backup/hrispayroll-2017-06-16-03-03-54.sql');
INSERT INTO `backup` (`backup_id`, `backup_name`, `backup_date`, `backup_path`) VALUES ('35', 'hrispayroll-2017-06-22-12-41-58.sql', '2017-06-22 00:41:58', 'backup/hrispayroll-2017-06-22-12-41-58.sql');
INSERT INTO `backup` (`backup_id`, `backup_name`, `backup_date`, `backup_path`) VALUES ('36', 'hrispayroll-2017-06-21-02-44-26.sql', '2017-06-21 14:44:26', 'backup/hrispayroll-2017-06-21-02-44-26.sql');
INSERT INTO `backup` (`backup_id`, `backup_name`, `backup_date`, `backup_path`) VALUES ('37', 'hrispayroll-2017-06-23-05-05-21.sql', '2017-06-23 17:05:21', 'backup/hrispayroll-2017-06-23-05-05-21.sql');
INSERT INTO `backup` (`backup_id`, `backup_name`, `backup_date`, `backup_path`) VALUES ('38', 'hrispayroll-2017-06-23-05-24-33.sql', '2017-06-23 17:24:33', 'backup/hrispayroll-2017-06-23-05-24-33.sql');
INSERT INTO `backup` (`backup_id`, `backup_name`, `backup_date`, `backup_path`) VALUES ('39', 'hrispayroll-2017-06-28-03-20-46.sql', '2017-06-28 15:20:46', 'backup/hrispayroll-2017-06-28-03-20-46.sql');
INSERT INTO `backup` (`backup_id`, `backup_name`, `backup_date`, `backup_path`) VALUES ('40', 'hrispayroll-2017-06-29-02-26-17.sql', '2017-06-29 14:26:17', 'backup/hrispayroll-2017-06-29-02-26-17.sql');
INSERT INTO `backup` (`backup_id`, `backup_name`, `backup_date`, `backup_path`) VALUES ('41', 'hrispayroll-2017-06-29-02-34-18.sql', '2017-06-29 14:34:18', 'backup/hrispayroll-2017-06-29-02-34-18.sql');
INSERT INTO `backup` (`backup_id`, `backup_name`, `backup_date`, `backup_path`) VALUES ('42', 'hrispayroll-2017-06-30-09-40-09.sql', '2017-06-30 09:40:09', 'backup/hrispayroll-2017-06-30-09-40-09.sql');
INSERT INTO `backup` (`backup_id`, `backup_name`, `backup_date`, `backup_path`) VALUES ('43', 'hrispayroll-2017-07-13-02-11-48.sql', '2017-07-13 14:11:48', 'backup/hrispayroll-2017-07-13-02-11-48.sql');


#
# TABLE STRUCTURE FOR: bir_2316
#

DROP TABLE IF EXISTS `bir_2316`;

CREATE TABLE `bir_2316` (
  `bir_2316_id` int(11) NOT NULL AUTO_INCREMENT,
  `for_year` varchar(20) DEFAULT NULL,
  `period_from` varchar(20) DEFAULT NULL,
  `period_to` varchar(20) DEFAULT NULL,
  `taxpayer_identification_no` varchar(100) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `rdo_code` varchar(100) DEFAULT NULL,
  `registered_address` varchar(500) DEFAULT NULL,
  `registered_zipcode` varchar(100) DEFAULT NULL,
  `localhome_address` varchar(500) DEFAULT NULL,
  `localhome_zipcode` varchar(100) DEFAULT NULL,
  `foreign_address` varchar(500) DEFAULT NULL,
  `foreign_zipcode` varchar(100) DEFAULT NULL,
  `birthdate` varchar(50) DEFAULT NULL,
  `telphone_number` varchar(20) DEFAULT NULL,
  `exemption_status` tinyint(1) NOT NULL DEFAULT '0',
  `wife_claiming` tinyint(1) NOT NULL,
  `stat_minimum_wage_per_month` decimal(11,2) DEFAULT NULL,
  `stat_minimum_wage_per_day` decimal(11,2) DEFAULT NULL,
  `present_employer_tin` varchar(50) DEFAULT NULL,
  `employer_name` varchar(200) DEFAULT NULL,
  `employer_regadress` varchar(200) DEFAULT NULL,
  `employer_zipcode` varchar(50) DEFAULT NULL,
  `gross_compensation_present_employer` decimal(11,2) DEFAULT NULL,
  `less_total_nontax_exempt` decimal(11,2) DEFAULT NULL,
  `taxable_compensation_income` decimal(11,2) DEFAULT NULL,
  `add_taxcompensation_previous_employer` decimal(11,2) DEFAULT NULL,
  `gross_taxable_compensation_income` decimal(11,2) DEFAULT NULL,
  `less_total_exemption` decimal(11,2) DEFAULT NULL,
  `less_premium_paid` decimal(11,2) DEFAULT NULL,
  `net_taxable_compensation_income` decimal(11,2) DEFAULT NULL,
  `tax_due` decimal(11,2) DEFAULT NULL,
  `tax_withheld_present_employer` decimal(11,2) DEFAULT NULL,
  `tax_withheld_previous_employer` decimal(11,2) DEFAULT NULL,
  `total_amount_taxes` decimal(11,2) DEFAULT NULL,
  `basic_salary_minimum` decimal(11,2) DEFAULT NULL,
  `holiday_pay` decimal(11,2) DEFAULT NULL,
  `overtime_pay_mwe` decimal(11,2) DEFAULT NULL,
  `night_shift_differential` decimal(11,2) DEFAULT NULL,
  `hazard_pay_mwe` decimal(11,2) DEFAULT NULL,
  `13th_month_pay` decimal(11,2) DEFAULT NULL,
  `de_minimis` decimal(11,2) DEFAULT NULL,
  `contributions_dues` decimal(11,2) DEFAULT NULL,
  `compensation_salariesforms` decimal(11,2) DEFAULT NULL,
  `total_nontax_compensation` decimal(11,2) DEFAULT NULL,
  `basic_salary` decimal(11,2) DEFAULT NULL,
  `representation` decimal(11,2) DEFAULT NULL,
  `transportation` decimal(11,2) DEFAULT NULL,
  `cost_of_living` decimal(11,2) DEFAULT NULL,
  `fixed_housing` decimal(11,2) DEFAULT NULL,
  `othersa` decimal(11,2) DEFAULT NULL,
  `othersaamount` decimal(11,2) DEFAULT NULL,
  `commision` decimal(11,2) DEFAULT NULL,
  `profit_sharing` decimal(11,2) DEFAULT NULL,
  `fees_director_fees` decimal(11,2) DEFAULT NULL,
  `taxable_13th_other_benefits` decimal(11,2) DEFAULT NULL,
  `hazard_pay` decimal(11,2) DEFAULT NULL,
  `overtime_pay` decimal(11,2) DEFAULT NULL,
  `total_taxable_compensation_income` decimal(11,2) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `deleted_by` int(11) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_deleted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`bir_2316_id`),
  UNIQUE KEY `bir_2316_id` (`bir_2316_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 PACK_KEYS=0;

INSERT INTO `bir_2316` (`bir_2316_id`, `for_year`, `period_from`, `period_to`, `taxpayer_identification_no`, `employee_id`, `rdo_code`, `registered_address`, `registered_zipcode`, `localhome_address`, `localhome_zipcode`, `foreign_address`, `foreign_zipcode`, `birthdate`, `telphone_number`, `exemption_status`, `wife_claiming`, `stat_minimum_wage_per_month`, `stat_minimum_wage_per_day`, `present_employer_tin`, `employer_name`, `employer_regadress`, `employer_zipcode`, `gross_compensation_present_employer`, `less_total_nontax_exempt`, `taxable_compensation_income`, `add_taxcompensation_previous_employer`, `gross_taxable_compensation_income`, `less_total_exemption`, `less_premium_paid`, `net_taxable_compensation_income`, `tax_due`, `tax_withheld_present_employer`, `tax_withheld_previous_employer`, `total_amount_taxes`, `basic_salary_minimum`, `holiday_pay`, `overtime_pay_mwe`, `night_shift_differential`, `hazard_pay_mwe`, `13th_month_pay`, `de_minimis`, `contributions_dues`, `compensation_salariesforms`, `total_nontax_compensation`, `basic_salary`, `representation`, `transportation`, `cost_of_living`, `fixed_housing`, `othersa`, `othersaamount`, `commision`, `profit_sharing`, `fees_director_fees`, `taxable_13th_other_benefits`, `hazard_pay`, `overtime_pay`, `total_taxable_compensation_income`, `created_by`, `modified_by`, `deleted_by`, `date_created`, `date_modified`, `date_deleted`, `is_deleted`) VALUES ('1', '', '', '', '', '3', '', 'Württemberg, Germany', '', '', '', '', '', '26/02/1992', '', '0', '0', '0.00', '0.00', '231891230', 'JCORE', 'WEB Human Resource Information System & Payroll', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1', '0', '0', '2017-06-29 15:00:22', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0');


#
# TABLE STRUCTURE FOR: company_setup
#

DROP TABLE IF EXISTS `company_setup`;

CREATE TABLE `company_setup` (
  `company_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `contact_no` varchar(85) DEFAULT NULL,
  `email_address` varchar(85) DEFAULT NULL,
  `image_name` varchar(50) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL,
  `rdo` varchar(100) DEFAULT NULL,
  `bir_reg_no` varchar(50) DEFAULT NULL,
  `applicable_year` varchar(20) DEFAULT NULL,
  `applicable_month` varchar(20) DEFAULT NULL,
  `tin_no` varchar(50) DEFAULT NULL,
  `quote` varchar(1000) DEFAULT 'Hello World',
  PRIMARY KEY (`company_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=16384;

INSERT INTO `company_setup` (`company_id`, `company_name`, `address`, `contact_no`, `email_address`, `image_name`, `created_by`, `date_created`, `date_modified`, `modified_by`, `rdo`, `bir_reg_no`, `applicable_year`, `applicable_month`, `tin_no`, `quote`) VALUES ('1', 'JCORE', 'WEB Human Resource Information System & Payroll', 'N/A', '23432423', 'assets/img/employee/5930d5afd31cd.png', '0', '0000-00-00 00:00:00', '2017-06-02 11:04:17', '1', 'GGWP', '6515616', '2032', '4', '231891230', 'Web Human Resource Information & Payroll System');


#
# TABLE STRUCTURE FOR: daily_time_record
#

DROP TABLE IF EXISTS `daily_time_record`;

CREATE TABLE `daily_time_record` (
  `dtr_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) DEFAULT '0',
  `pay_period_id` int(11) DEFAULT '0',
  `reg` decimal(20,2) DEFAULT NULL,
  `sun` decimal(20,2) DEFAULT NULL,
  `reg_hol` decimal(20,2) DEFAULT NULL,
  `spe_hol` decimal(20,2) DEFAULT NULL,
  `sun_reg_hol` decimal(20,2) DEFAULT NULL,
  `sun_spe_hol` decimal(20,2) DEFAULT NULL,
  `days_wout_pay` decimal(20,2) DEFAULT NULL,
  `days_with_pay` decimal(20,2) DEFAULT NULL,
  `minutes_late` decimal(20,2) DEFAULT NULL,
  `ot_reg` decimal(20,2) DEFAULT NULL,
  `ot_reg_reg_hol` decimal(20,2) DEFAULT NULL,
  `ot_reg_spe_hol` decimal(20,2) DEFAULT NULL,
  `ot_sun` decimal(20,2) DEFAULT NULL,
  `ot_sun_reg_hol` decimal(20,2) DEFAULT NULL,
  `ot_sun_spe_hol` decimal(20,2) DEFAULT NULL,
  `nsd_reg` decimal(20,2) DEFAULT NULL,
  `nsd_reg_reg_hol` decimal(20,2) DEFAULT NULL,
  `nsd_reg_spe_hol` decimal(20,2) DEFAULT NULL,
  `nsd_sun` decimal(20,2) DEFAULT NULL,
  `nsd_sun_reg_hol` decimal(20,2) DEFAULT NULL,
  `nsd_sun_spe_hol` decimal(20,2) DEFAULT NULL,
  `reg_amt` decimal(20,2) DEFAULT NULL,
  `sun_amt` decimal(20,2) DEFAULT NULL,
  `reg_hol_amt` decimal(20,2) DEFAULT NULL,
  `spe_hol_amt` decimal(20,2) DEFAULT NULL,
  `sun_reg_hol_amt` decimal(20,2) DEFAULT NULL,
  `sun_spe_hol_amt` decimal(20,2) DEFAULT NULL,
  `days_wout_pay_amt` decimal(20,2) DEFAULT NULL,
  `days_with_pay_amt` decimal(20,2) DEFAULT NULL,
  `minutes_late_amt` decimal(20,2) DEFAULT NULL,
  `ot_reg_amt` decimal(20,2) DEFAULT NULL,
  `ot_reg_reg_hol_amt` decimal(20,2) DEFAULT NULL,
  `ot_reg_spe_hol_amt` decimal(20,2) DEFAULT NULL,
  `ot_sun_amt` decimal(20,2) DEFAULT NULL,
  `ot_sun_reg_hol_amt` decimal(20,2) DEFAULT NULL,
  `ot_sun_spe_hol_amt` decimal(20,2) DEFAULT NULL,
  `nsd_reg_amt` decimal(20,2) DEFAULT NULL,
  `nsd_reg_reg_hol_amt` decimal(20,2) DEFAULT NULL,
  `nsd_reg_spe_hol_amt` decimal(20,2) DEFAULT NULL,
  `nsd_sun_amt` decimal(20,2) DEFAULT NULL,
  `nsd_sun_reg_hol_amt` decimal(20,2) DEFAULT NULL,
  `nsd_sun_spe_hol_amt` decimal(20,2) DEFAULT NULL,
  `reg_cola` decimal(20,2) DEFAULT NULL,
  `sun_cola` decimal(20,2) DEFAULT NULL,
  `reg_hol_cola` decimal(20,2) DEFAULT NULL,
  `spe_hol_cola` decimal(20,2) DEFAULT NULL,
  `sun_reg_hol_cola` decimal(20,2) DEFAULT NULL,
  `sun_spe_hol_cola` decimal(20,2) DEFAULT NULL,
  `days_wout_pay_cola` decimal(20,2) DEFAULT NULL,
  `days_with_pay_cola` decimal(20,2) DEFAULT NULL,
  `minutes_late_cola` decimal(20,2) DEFAULT NULL,
  `ot_reg_cola` decimal(20,2) DEFAULT NULL,
  `ot_reg_reg_hol_cola` decimal(20,2) DEFAULT NULL,
  `ot_reg_spe_hol_cola` decimal(20,2) DEFAULT NULL,
  `ot_sun_cola` decimal(20,2) DEFAULT NULL,
  `ot_sun_reg_hol_cola` decimal(20,2) DEFAULT NULL,
  `ot_sun_spe_hol_cola` decimal(20,2) DEFAULT NULL,
  `nsd_reg_cola` decimal(20,2) DEFAULT NULL,
  `nsd_reg_reg_hol_cola` decimal(20,2) DEFAULT NULL,
  `nsd_reg_spe_hol_cola` decimal(20,2) DEFAULT NULL,
  `nsd_sun_cola` decimal(20,2) DEFAULT NULL,
  `nsd_sun_reg_hol_cola` decimal(20,2) DEFAULT NULL,
  `nsd_sun_spe_hol_cola` decimal(20,2) DEFAULT NULL,
  `is_to_process` tinyint(4) DEFAULT '1',
  `for_13th_month` decimal(20,2) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `date_created` date NOT NULL DEFAULT '0000-00-00',
  `modified_by` int(11) NOT NULL,
  `date_modified` date NOT NULL DEFAULT '0000-00-00',
  `deleted_by` int(11) NOT NULL,
  `date_deleted` date NOT NULL DEFAULT '0000-00-00',
  `is_deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`dtr_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=8192;

INSERT INTO `daily_time_record` (`dtr_id`, `employee_id`, `pay_period_id`, `reg`, `sun`, `reg_hol`, `spe_hol`, `sun_reg_hol`, `sun_spe_hol`, `days_wout_pay`, `days_with_pay`, `minutes_late`, `ot_reg`, `ot_reg_reg_hol`, `ot_reg_spe_hol`, `ot_sun`, `ot_sun_reg_hol`, `ot_sun_spe_hol`, `nsd_reg`, `nsd_reg_reg_hol`, `nsd_reg_spe_hol`, `nsd_sun`, `nsd_sun_reg_hol`, `nsd_sun_spe_hol`, `reg_amt`, `sun_amt`, `reg_hol_amt`, `spe_hol_amt`, `sun_reg_hol_amt`, `sun_spe_hol_amt`, `days_wout_pay_amt`, `days_with_pay_amt`, `minutes_late_amt`, `ot_reg_amt`, `ot_reg_reg_hol_amt`, `ot_reg_spe_hol_amt`, `ot_sun_amt`, `ot_sun_reg_hol_amt`, `ot_sun_spe_hol_amt`, `nsd_reg_amt`, `nsd_reg_reg_hol_amt`, `nsd_reg_spe_hol_amt`, `nsd_sun_amt`, `nsd_sun_reg_hol_amt`, `nsd_sun_spe_hol_amt`, `reg_cola`, `sun_cola`, `reg_hol_cola`, `spe_hol_cola`, `sun_reg_hol_cola`, `sun_spe_hol_cola`, `days_wout_pay_cola`, `days_with_pay_cola`, `minutes_late_cola`, `ot_reg_cola`, `ot_reg_reg_hol_cola`, `ot_reg_spe_hol_cola`, `ot_sun_cola`, `ot_sun_reg_hol_cola`, `ot_sun_spe_hol_cola`, `nsd_reg_cola`, `nsd_reg_reg_hol_cola`, `nsd_reg_spe_hol_cola`, `nsd_sun_cola`, `nsd_sun_reg_hol_cola`, `nsd_sun_spe_hol_cola`, `is_to_process`, `for_13th_month`, `created_by`, `date_created`, `modified_by`, `date_modified`, `deleted_by`, `date_deleted`, `is_deleted`) VALUES ('1', '1', '13', '104.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '5500.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '5500.00', '1', '2017-06-28', '1', '2017-06-29', '0', '0000-00-00', '0');
INSERT INTO `daily_time_record` (`dtr_id`, `employee_id`, `pay_period_id`, `reg`, `sun`, `reg_hol`, `spe_hol`, `sun_reg_hol`, `sun_spe_hol`, `days_wout_pay`, `days_with_pay`, `minutes_late`, `ot_reg`, `ot_reg_reg_hol`, `ot_reg_spe_hol`, `ot_sun`, `ot_sun_reg_hol`, `ot_sun_spe_hol`, `nsd_reg`, `nsd_reg_reg_hol`, `nsd_reg_spe_hol`, `nsd_sun`, `nsd_sun_reg_hol`, `nsd_sun_spe_hol`, `reg_amt`, `sun_amt`, `reg_hol_amt`, `spe_hol_amt`, `sun_reg_hol_amt`, `sun_spe_hol_amt`, `days_wout_pay_amt`, `days_with_pay_amt`, `minutes_late_amt`, `ot_reg_amt`, `ot_reg_reg_hol_amt`, `ot_reg_spe_hol_amt`, `ot_sun_amt`, `ot_sun_reg_hol_amt`, `ot_sun_spe_hol_amt`, `nsd_reg_amt`, `nsd_reg_reg_hol_amt`, `nsd_reg_spe_hol_amt`, `nsd_sun_amt`, `nsd_sun_reg_hol_amt`, `nsd_sun_spe_hol_amt`, `reg_cola`, `sun_cola`, `reg_hol_cola`, `spe_hol_cola`, `sun_reg_hol_cola`, `sun_spe_hol_cola`, `days_wout_pay_cola`, `days_with_pay_cola`, `minutes_late_cola`, `ot_reg_cola`, `ot_reg_reg_hol_cola`, `ot_reg_spe_hol_cola`, `ot_sun_cola`, `ot_sun_reg_hol_cola`, `ot_sun_spe_hol_cola`, `nsd_reg_cola`, `nsd_reg_reg_hol_cola`, `nsd_reg_spe_hol_cola`, `nsd_sun_cola`, `nsd_sun_reg_hol_cola`, `nsd_sun_spe_hol_cola`, `is_to_process`, `for_13th_month`, `created_by`, `date_created`, `modified_by`, `date_modified`, `deleted_by`, `date_deleted`, `is_deleted`) VALUES ('2', '1', '12', '104.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '5500.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '5500.00', '1', '2017-06-28', '1', '2017-06-28', '0', '0000-00-00', '0');
INSERT INTO `daily_time_record` (`dtr_id`, `employee_id`, `pay_period_id`, `reg`, `sun`, `reg_hol`, `spe_hol`, `sun_reg_hol`, `sun_spe_hol`, `days_wout_pay`, `days_with_pay`, `minutes_late`, `ot_reg`, `ot_reg_reg_hol`, `ot_reg_spe_hol`, `ot_sun`, `ot_sun_reg_hol`, `ot_sun_spe_hol`, `nsd_reg`, `nsd_reg_reg_hol`, `nsd_reg_spe_hol`, `nsd_sun`, `nsd_sun_reg_hol`, `nsd_sun_spe_hol`, `reg_amt`, `sun_amt`, `reg_hol_amt`, `spe_hol_amt`, `sun_reg_hol_amt`, `sun_spe_hol_amt`, `days_wout_pay_amt`, `days_with_pay_amt`, `minutes_late_amt`, `ot_reg_amt`, `ot_reg_reg_hol_amt`, `ot_reg_spe_hol_amt`, `ot_sun_amt`, `ot_sun_reg_hol_amt`, `ot_sun_spe_hol_amt`, `nsd_reg_amt`, `nsd_reg_reg_hol_amt`, `nsd_reg_spe_hol_amt`, `nsd_sun_amt`, `nsd_sun_reg_hol_amt`, `nsd_sun_spe_hol_amt`, `reg_cola`, `sun_cola`, `reg_hol_cola`, `spe_hol_cola`, `sun_reg_hol_cola`, `sun_spe_hol_cola`, `days_wout_pay_cola`, `days_with_pay_cola`, `minutes_late_cola`, `ot_reg_cola`, `ot_reg_reg_hol_cola`, `ot_reg_spe_hol_cola`, `ot_sun_cola`, `ot_sun_reg_hol_cola`, `ot_sun_spe_hol_cola`, `nsd_reg_cola`, `nsd_reg_reg_hol_cola`, `nsd_reg_spe_hol_cola`, `nsd_sun_cola`, `nsd_sun_reg_hol_cola`, `nsd_sun_spe_hol_cola`, `is_to_process`, `for_13th_month`, `created_by`, `date_created`, `modified_by`, `date_modified`, `deleted_by`, `date_deleted`, `is_deleted`) VALUES ('3', '3', '12', '104.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '7500.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '7500.00', '1', '2017-06-28', '1', '2017-06-28', '0', '0000-00-00', '0');
INSERT INTO `daily_time_record` (`dtr_id`, `employee_id`, `pay_period_id`, `reg`, `sun`, `reg_hol`, `spe_hol`, `sun_reg_hol`, `sun_spe_hol`, `days_wout_pay`, `days_with_pay`, `minutes_late`, `ot_reg`, `ot_reg_reg_hol`, `ot_reg_spe_hol`, `ot_sun`, `ot_sun_reg_hol`, `ot_sun_spe_hol`, `nsd_reg`, `nsd_reg_reg_hol`, `nsd_reg_spe_hol`, `nsd_sun`, `nsd_sun_reg_hol`, `nsd_sun_spe_hol`, `reg_amt`, `sun_amt`, `reg_hol_amt`, `spe_hol_amt`, `sun_reg_hol_amt`, `sun_spe_hol_amt`, `days_wout_pay_amt`, `days_with_pay_amt`, `minutes_late_amt`, `ot_reg_amt`, `ot_reg_reg_hol_amt`, `ot_reg_spe_hol_amt`, `ot_sun_amt`, `ot_sun_reg_hol_amt`, `ot_sun_spe_hol_amt`, `nsd_reg_amt`, `nsd_reg_reg_hol_amt`, `nsd_reg_spe_hol_amt`, `nsd_sun_amt`, `nsd_sun_reg_hol_amt`, `nsd_sun_spe_hol_amt`, `reg_cola`, `sun_cola`, `reg_hol_cola`, `spe_hol_cola`, `sun_reg_hol_cola`, `sun_spe_hol_cola`, `days_wout_pay_cola`, `days_with_pay_cola`, `minutes_late_cola`, `ot_reg_cola`, `ot_reg_reg_hol_cola`, `ot_reg_spe_hol_cola`, `ot_sun_cola`, `ot_sun_reg_hol_cola`, `ot_sun_spe_hol_cola`, `nsd_reg_cola`, `nsd_reg_reg_hol_cola`, `nsd_reg_spe_hol_cola`, `nsd_sun_cola`, `nsd_sun_reg_hol_cola`, `nsd_sun_spe_hol_cola`, `is_to_process`, `for_13th_month`, `created_by`, `date_created`, `modified_by`, `date_modified`, `deleted_by`, `date_deleted`, `is_deleted`) VALUES ('4', '2', '12', '104.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '8000.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '8000.00', '1', '2017-06-28', '1', '2017-06-28', '0', '0000-00-00', '0');
INSERT INTO `daily_time_record` (`dtr_id`, `employee_id`, `pay_period_id`, `reg`, `sun`, `reg_hol`, `spe_hol`, `sun_reg_hol`, `sun_spe_hol`, `days_wout_pay`, `days_with_pay`, `minutes_late`, `ot_reg`, `ot_reg_reg_hol`, `ot_reg_spe_hol`, `ot_sun`, `ot_sun_reg_hol`, `ot_sun_spe_hol`, `nsd_reg`, `nsd_reg_reg_hol`, `nsd_reg_spe_hol`, `nsd_sun`, `nsd_sun_reg_hol`, `nsd_sun_spe_hol`, `reg_amt`, `sun_amt`, `reg_hol_amt`, `spe_hol_amt`, `sun_reg_hol_amt`, `sun_spe_hol_amt`, `days_wout_pay_amt`, `days_with_pay_amt`, `minutes_late_amt`, `ot_reg_amt`, `ot_reg_reg_hol_amt`, `ot_reg_spe_hol_amt`, `ot_sun_amt`, `ot_sun_reg_hol_amt`, `ot_sun_spe_hol_amt`, `nsd_reg_amt`, `nsd_reg_reg_hol_amt`, `nsd_reg_spe_hol_amt`, `nsd_sun_amt`, `nsd_sun_reg_hol_amt`, `nsd_sun_spe_hol_amt`, `reg_cola`, `sun_cola`, `reg_hol_cola`, `spe_hol_cola`, `sun_reg_hol_cola`, `sun_spe_hol_cola`, `days_wout_pay_cola`, `days_with_pay_cola`, `minutes_late_cola`, `ot_reg_cola`, `ot_reg_reg_hol_cola`, `ot_reg_spe_hol_cola`, `ot_sun_cola`, `ot_sun_reg_hol_cola`, `ot_sun_spe_hol_cola`, `nsd_reg_cola`, `nsd_reg_reg_hol_cola`, `nsd_reg_spe_hol_cola`, `nsd_sun_cola`, `nsd_sun_reg_hol_cola`, `nsd_sun_spe_hol_cola`, `is_to_process`, `for_13th_month`, `created_by`, `date_created`, `modified_by`, `date_modified`, `deleted_by`, `date_deleted`, `is_deleted`) VALUES ('5', '3', '13', '104.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '7500.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '7500.00', '1', '2017-06-28', '1', '2017-06-28', '0', '0000-00-00', '0');
INSERT INTO `daily_time_record` (`dtr_id`, `employee_id`, `pay_period_id`, `reg`, `sun`, `reg_hol`, `spe_hol`, `sun_reg_hol`, `sun_spe_hol`, `days_wout_pay`, `days_with_pay`, `minutes_late`, `ot_reg`, `ot_reg_reg_hol`, `ot_reg_spe_hol`, `ot_sun`, `ot_sun_reg_hol`, `ot_sun_spe_hol`, `nsd_reg`, `nsd_reg_reg_hol`, `nsd_reg_spe_hol`, `nsd_sun`, `nsd_sun_reg_hol`, `nsd_sun_spe_hol`, `reg_amt`, `sun_amt`, `reg_hol_amt`, `spe_hol_amt`, `sun_reg_hol_amt`, `sun_spe_hol_amt`, `days_wout_pay_amt`, `days_with_pay_amt`, `minutes_late_amt`, `ot_reg_amt`, `ot_reg_reg_hol_amt`, `ot_reg_spe_hol_amt`, `ot_sun_amt`, `ot_sun_reg_hol_amt`, `ot_sun_spe_hol_amt`, `nsd_reg_amt`, `nsd_reg_reg_hol_amt`, `nsd_reg_spe_hol_amt`, `nsd_sun_amt`, `nsd_sun_reg_hol_amt`, `nsd_sun_spe_hol_amt`, `reg_cola`, `sun_cola`, `reg_hol_cola`, `spe_hol_cola`, `sun_reg_hol_cola`, `sun_spe_hol_cola`, `days_wout_pay_cola`, `days_with_pay_cola`, `minutes_late_cola`, `ot_reg_cola`, `ot_reg_reg_hol_cola`, `ot_reg_spe_hol_cola`, `ot_sun_cola`, `ot_sun_reg_hol_cola`, `ot_sun_spe_hol_cola`, `nsd_reg_cola`, `nsd_reg_reg_hol_cola`, `nsd_reg_spe_hol_cola`, `nsd_sun_cola`, `nsd_sun_reg_hol_cola`, `nsd_sun_spe_hol_cola`, `is_to_process`, `for_13th_month`, `created_by`, `date_created`, `modified_by`, `date_modified`, `deleted_by`, `date_deleted`, `is_deleted`) VALUES ('6', '2', '13', '104.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '8000.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '8000.00', '1', '2017-06-28', '1', '2017-06-28', '0', '0000-00-00', '0');
INSERT INTO `daily_time_record` (`dtr_id`, `employee_id`, `pay_period_id`, `reg`, `sun`, `reg_hol`, `spe_hol`, `sun_reg_hol`, `sun_spe_hol`, `days_wout_pay`, `days_with_pay`, `minutes_late`, `ot_reg`, `ot_reg_reg_hol`, `ot_reg_spe_hol`, `ot_sun`, `ot_sun_reg_hol`, `ot_sun_spe_hol`, `nsd_reg`, `nsd_reg_reg_hol`, `nsd_reg_spe_hol`, `nsd_sun`, `nsd_sun_reg_hol`, `nsd_sun_spe_hol`, `reg_amt`, `sun_amt`, `reg_hol_amt`, `spe_hol_amt`, `sun_reg_hol_amt`, `sun_spe_hol_amt`, `days_wout_pay_amt`, `days_with_pay_amt`, `minutes_late_amt`, `ot_reg_amt`, `ot_reg_reg_hol_amt`, `ot_reg_spe_hol_amt`, `ot_sun_amt`, `ot_sun_reg_hol_amt`, `ot_sun_spe_hol_amt`, `nsd_reg_amt`, `nsd_reg_reg_hol_amt`, `nsd_reg_spe_hol_amt`, `nsd_sun_amt`, `nsd_sun_reg_hol_amt`, `nsd_sun_spe_hol_amt`, `reg_cola`, `sun_cola`, `reg_hol_cola`, `spe_hol_cola`, `sun_reg_hol_cola`, `sun_spe_hol_cola`, `days_wout_pay_cola`, `days_with_pay_cola`, `minutes_late_cola`, `ot_reg_cola`, `ot_reg_reg_hol_cola`, `ot_reg_spe_hol_cola`, `ot_sun_cola`, `ot_sun_reg_hol_cola`, `ot_sun_spe_hol_cola`, `nsd_reg_cola`, `nsd_reg_reg_hol_cola`, `nsd_reg_spe_hol_cola`, `nsd_sun_cola`, `nsd_sun_reg_hol_cola`, `nsd_sun_spe_hol_cola`, `is_to_process`, `for_13th_month`, `created_by`, `date_created`, `modified_by`, `date_modified`, `deleted_by`, `date_deleted`, `is_deleted`) VALUES ('7', '3', '14', '104.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '7500.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '7500.00', '1', '2017-06-28', '1', '2017-06-28', '0', '0000-00-00', '0');
INSERT INTO `daily_time_record` (`dtr_id`, `employee_id`, `pay_period_id`, `reg`, `sun`, `reg_hol`, `spe_hol`, `sun_reg_hol`, `sun_spe_hol`, `days_wout_pay`, `days_with_pay`, `minutes_late`, `ot_reg`, `ot_reg_reg_hol`, `ot_reg_spe_hol`, `ot_sun`, `ot_sun_reg_hol`, `ot_sun_spe_hol`, `nsd_reg`, `nsd_reg_reg_hol`, `nsd_reg_spe_hol`, `nsd_sun`, `nsd_sun_reg_hol`, `nsd_sun_spe_hol`, `reg_amt`, `sun_amt`, `reg_hol_amt`, `spe_hol_amt`, `sun_reg_hol_amt`, `sun_spe_hol_amt`, `days_wout_pay_amt`, `days_with_pay_amt`, `minutes_late_amt`, `ot_reg_amt`, `ot_reg_reg_hol_amt`, `ot_reg_spe_hol_amt`, `ot_sun_amt`, `ot_sun_reg_hol_amt`, `ot_sun_spe_hol_amt`, `nsd_reg_amt`, `nsd_reg_reg_hol_amt`, `nsd_reg_spe_hol_amt`, `nsd_sun_amt`, `nsd_sun_reg_hol_amt`, `nsd_sun_spe_hol_amt`, `reg_cola`, `sun_cola`, `reg_hol_cola`, `spe_hol_cola`, `sun_reg_hol_cola`, `sun_spe_hol_cola`, `days_wout_pay_cola`, `days_with_pay_cola`, `minutes_late_cola`, `ot_reg_cola`, `ot_reg_reg_hol_cola`, `ot_reg_spe_hol_cola`, `ot_sun_cola`, `ot_sun_reg_hol_cola`, `ot_sun_spe_hol_cola`, `nsd_reg_cola`, `nsd_reg_reg_hol_cola`, `nsd_reg_spe_hol_cola`, `nsd_sun_cola`, `nsd_sun_reg_hol_cola`, `nsd_sun_spe_hol_cola`, `is_to_process`, `for_13th_month`, `created_by`, `date_created`, `modified_by`, `date_modified`, `deleted_by`, `date_deleted`, `is_deleted`) VALUES ('8', '2', '14', '104.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '8000.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '8000.00', '1', '2017-06-28', '1', '2017-06-28', '0', '0000-00-00', '0');
INSERT INTO `daily_time_record` (`dtr_id`, `employee_id`, `pay_period_id`, `reg`, `sun`, `reg_hol`, `spe_hol`, `sun_reg_hol`, `sun_spe_hol`, `days_wout_pay`, `days_with_pay`, `minutes_late`, `ot_reg`, `ot_reg_reg_hol`, `ot_reg_spe_hol`, `ot_sun`, `ot_sun_reg_hol`, `ot_sun_spe_hol`, `nsd_reg`, `nsd_reg_reg_hol`, `nsd_reg_spe_hol`, `nsd_sun`, `nsd_sun_reg_hol`, `nsd_sun_spe_hol`, `reg_amt`, `sun_amt`, `reg_hol_amt`, `spe_hol_amt`, `sun_reg_hol_amt`, `sun_spe_hol_amt`, `days_wout_pay_amt`, `days_with_pay_amt`, `minutes_late_amt`, `ot_reg_amt`, `ot_reg_reg_hol_amt`, `ot_reg_spe_hol_amt`, `ot_sun_amt`, `ot_sun_reg_hol_amt`, `ot_sun_spe_hol_amt`, `nsd_reg_amt`, `nsd_reg_reg_hol_amt`, `nsd_reg_spe_hol_amt`, `nsd_sun_amt`, `nsd_sun_reg_hol_amt`, `nsd_sun_spe_hol_amt`, `reg_cola`, `sun_cola`, `reg_hol_cola`, `spe_hol_cola`, `sun_reg_hol_cola`, `sun_spe_hol_cola`, `days_wout_pay_cola`, `days_with_pay_cola`, `minutes_late_cola`, `ot_reg_cola`, `ot_reg_reg_hol_cola`, `ot_reg_spe_hol_cola`, `ot_sun_cola`, `ot_sun_reg_hol_cola`, `ot_sun_spe_hol_cola`, `nsd_reg_cola`, `nsd_reg_reg_hol_cola`, `nsd_reg_spe_hol_cola`, `nsd_sun_cola`, `nsd_sun_reg_hol_cola`, `nsd_sun_spe_hol_cola`, `is_to_process`, `for_13th_month`, `created_by`, `date_created`, `modified_by`, `date_modified`, `deleted_by`, `date_deleted`, `is_deleted`) VALUES ('9', '1', '14', '104.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '5500.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '5500.00', '1', '2017-06-28', '1', '2017-06-29', '0', '0000-00-00', '0');
INSERT INTO `daily_time_record` (`dtr_id`, `employee_id`, `pay_period_id`, `reg`, `sun`, `reg_hol`, `spe_hol`, `sun_reg_hol`, `sun_spe_hol`, `days_wout_pay`, `days_with_pay`, `minutes_late`, `ot_reg`, `ot_reg_reg_hol`, `ot_reg_spe_hol`, `ot_sun`, `ot_sun_reg_hol`, `ot_sun_spe_hol`, `nsd_reg`, `nsd_reg_reg_hol`, `nsd_reg_spe_hol`, `nsd_sun`, `nsd_sun_reg_hol`, `nsd_sun_spe_hol`, `reg_amt`, `sun_amt`, `reg_hol_amt`, `spe_hol_amt`, `sun_reg_hol_amt`, `sun_spe_hol_amt`, `days_wout_pay_amt`, `days_with_pay_amt`, `minutes_late_amt`, `ot_reg_amt`, `ot_reg_reg_hol_amt`, `ot_reg_spe_hol_amt`, `ot_sun_amt`, `ot_sun_reg_hol_amt`, `ot_sun_spe_hol_amt`, `nsd_reg_amt`, `nsd_reg_reg_hol_amt`, `nsd_reg_spe_hol_amt`, `nsd_sun_amt`, `nsd_sun_reg_hol_amt`, `nsd_sun_spe_hol_amt`, `reg_cola`, `sun_cola`, `reg_hol_cola`, `spe_hol_cola`, `sun_reg_hol_cola`, `sun_spe_hol_cola`, `days_wout_pay_cola`, `days_with_pay_cola`, `minutes_late_cola`, `ot_reg_cola`, `ot_reg_reg_hol_cola`, `ot_reg_spe_hol_cola`, `ot_sun_cola`, `ot_sun_reg_hol_cola`, `ot_sun_spe_hol_cola`, `nsd_reg_cola`, `nsd_reg_reg_hol_cola`, `nsd_reg_spe_hol_cola`, `nsd_sun_cola`, `nsd_sun_reg_hol_cola`, `nsd_sun_spe_hol_cola`, `is_to_process`, `for_13th_month`, `created_by`, `date_created`, `modified_by`, `date_modified`, `deleted_by`, `date_deleted`, `is_deleted`) VALUES ('10', '4', '14', '71.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '239.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '350.00', '1', '2017-07-13', '1', '2017-07-13', '0', '0000-00-00', '0');


#
# TABLE STRUCTURE FOR: deductions_temporary
#

DROP TABLE IF EXISTS `deductions_temporary`;

CREATE TABLE `deductions_temporary` (
  `deduction_temporary_id` int(11) NOT NULL AUTO_INCREMENT,
  `pay_period_id` int(11) DEFAULT '0',
  `employee_id` int(11) DEFAULT '0',
  `deduction_id` int(11) DEFAULT '0',
  `deduction_temporary_amount` decimal(19,5) DEFAULT '0.00000',
  `deduction_temporary_remarks` varchar(300) DEFAULT '',
  `created_by` int(11) DEFAULT NULL,
  `created_datetime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_by` int(11) DEFAULT NULL,
  `modified_datetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_by` int(11) DEFAULT NULL,
  `deleted_datetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`deduction_temporary_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: dtr_deductions
#

DROP TABLE IF EXISTS `dtr_deductions`;

CREATE TABLE `dtr_deductions` (
  `dtr_deduction_id` int(11) NOT NULL AUTO_INCREMENT,
  `dtr_id` int(11) DEFAULT NULL,
  `deduction_id` int(11) DEFAULT NULL,
  `deduction_regular_id` int(11) DEFAULT NULL,
  `is_deduct` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`dtr_deduction_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=481 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=109;

INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('211', '7', '1', '0', '1');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('212', '7', '2', '0', '1');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('213', '7', '3', '0', '1');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('214', '7', '4', '0', '1');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('215', '7', '5', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('216', '7', '6', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('217', '7', '7', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('218', '7', '8', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('219', '7', '9', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('220', '7', '11', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('221', '7', '12', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('222', '7', '13', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('223', '7', '14', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('224', '7', '15', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('225', '7', '16', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('226', '8', '1', '0', '1');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('227', '8', '2', '0', '1');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('228', '8', '3', '0', '1');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('229', '8', '4', '0', '1');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('230', '8', '5', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('231', '8', '6', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('232', '8', '7', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('233', '8', '8', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('234', '8', '9', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('235', '8', '11', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('236', '8', '12', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('237', '8', '13', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('238', '8', '14', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('239', '8', '15', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('240', '8', '16', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('256', '3', '1', '0', '1');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('257', '3', '2', '0', '1');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('258', '3', '3', '0', '1');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('259', '3', '4', '0', '1');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('260', '3', '5', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('261', '3', '6', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('262', '3', '7', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('263', '3', '8', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('264', '3', '9', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('265', '3', '11', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('266', '3', '12', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('267', '3', '13', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('268', '3', '14', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('269', '3', '15', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('270', '3', '16', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('271', '4', '1', '0', '1');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('272', '4', '2', '0', '1');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('273', '4', '3', '0', '1');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('274', '4', '4', '0', '1');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('275', '4', '5', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('276', '4', '6', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('277', '4', '7', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('278', '4', '8', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('279', '4', '9', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('280', '4', '11', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('281', '4', '12', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('282', '4', '13', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('283', '4', '14', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('284', '4', '15', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('285', '4', '16', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('286', '2', '1', '0', '1');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('287', '2', '2', '0', '1');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('288', '2', '3', '0', '1');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('289', '2', '4', '0', '1');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('290', '2', '5', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('291', '2', '6', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('292', '2', '7', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('293', '2', '8', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('294', '2', '9', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('295', '2', '11', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('296', '2', '12', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('297', '2', '13', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('298', '2', '14', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('299', '2', '15', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('300', '2', '16', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('301', '5', '1', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('302', '5', '2', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('303', '5', '3', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('304', '5', '4', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('305', '5', '5', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('306', '5', '6', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('307', '5', '7', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('308', '5', '8', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('309', '5', '9', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('310', '5', '11', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('311', '5', '12', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('312', '5', '13', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('313', '5', '14', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('314', '5', '15', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('315', '5', '16', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('316', '6', '1', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('317', '6', '2', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('318', '6', '3', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('319', '6', '4', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('320', '6', '5', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('321', '6', '6', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('322', '6', '7', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('323', '6', '8', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('324', '6', '9', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('325', '6', '11', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('326', '6', '12', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('327', '6', '13', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('328', '6', '14', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('329', '6', '15', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('330', '6', '16', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('361', '1', '1', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('362', '1', '2', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('363', '1', '3', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('364', '1', '4', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('365', '1', '5', '0', '1');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('366', '1', '6', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('367', '1', '7', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('368', '1', '8', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('369', '1', '9', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('370', '1', '11', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('371', '1', '12', '0', '1');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('372', '1', '13', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('373', '1', '14', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('374', '1', '15', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('375', '1', '16', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('436', '9', '1', '0', '1');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('437', '9', '2', '0', '1');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('438', '9', '3', '0', '1');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('439', '9', '4', '0', '1');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('440', '9', '5', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('441', '9', '6', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('442', '9', '7', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('443', '9', '8', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('444', '9', '9', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('445', '9', '11', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('446', '9', '12', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('447', '9', '13', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('448', '9', '14', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('449', '9', '15', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('450', '9', '16', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('466', '10', '1', '0', '1');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('467', '10', '2', '0', '1');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('468', '10', '3', '0', '1');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('469', '10', '4', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('470', '10', '5', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('471', '10', '6', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('472', '10', '7', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('473', '10', '8', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('474', '10', '9', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('475', '10', '11', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('476', '10', '12', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('477', '10', '13', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('478', '10', '14', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('479', '10', '15', '0', '0');
INSERT INTO `dtr_deductions` (`dtr_deduction_id`, `dtr_id`, `deduction_id`, `deduction_regular_id`, `is_deduct`) VALUES ('480', '10', '16', '0', '0');


#
# TABLE STRUCTURE FOR: emp_children_dependent
#

DROP TABLE IF EXISTS `emp_children_dependent`;

CREATE TABLE `emp_children_dependent` (
  `emp_children_dependent_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) unsigned NOT NULL,
  `name` varchar(100) NOT NULL,
  `birthdate` date DEFAULT NULL,
  `ref_relationship_id` int(11) unsigned NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `date_created` date NOT NULL DEFAULT '0000-00-00',
  `date_modified` date NOT NULL DEFAULT '0000-00-00',
  `is_deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `deleted_by` int(11) NOT NULL,
  `date_deleted` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`emp_children_dependent_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# TABLE STRUCTURE FOR: emp_commendation
#

DROP TABLE IF EXISTS `emp_commendation`;

CREATE TABLE `emp_commendation` (
  `emp_commendation_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `date_commendation` date NOT NULL,
  `memo_number` varchar(50) NOT NULL,
  `remarks` longtext,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `date_created` date NOT NULL DEFAULT '0000-00-00',
  `date_modified` date NOT NULL DEFAULT '0000-00-00',
  `is_deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`emp_commendation_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# TABLE STRUCTURE FOR: emp_educational_attainment
#

DROP TABLE IF EXISTS `emp_educational_attainment`;

CREATE TABLE `emp_educational_attainment` (
  `emp_educational_attainment_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) unsigned NOT NULL,
  `ref_course_degree_id` int(11) unsigned NOT NULL,
  `year_graduate` date DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `deleted_by` int(11) NOT NULL,
  `date_deleted` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`emp_educational_attainment_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=8192;

#
# TABLE STRUCTURE FOR: emp_emergency_contact_details
#

DROP TABLE IF EXISTS `emp_emergency_contact_details`;

CREATE TABLE `emp_emergency_contact_details` (
  `emp_emergency_contact_details_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) unsigned NOT NULL,
  `name` varchar(300) DEFAULT NULL,
  `ref_relationship_id` int(11) unsigned NOT NULL,
  `contact_number_one` varchar(500) NOT NULL,
  `contact_number_two` varchar(500) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `date_created` date NOT NULL DEFAULT '0000-00-00',
  `date_modified` date NOT NULL DEFAULT '0000-00-00',
  `is_deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `deleted_by` int(11) NOT NULL,
  `date_deleted` date DEFAULT '0000-00-00',
  PRIMARY KEY (`emp_emergency_contact_details_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=8192;

#
# TABLE STRUCTURE FOR: emp_family_details
#

DROP TABLE IF EXISTS `emp_family_details`;

CREATE TABLE `emp_family_details` (
  `emp_family_details_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) DEFAULT NULL,
  `name` varchar(300) DEFAULT NULL,
  `ref_relationship_id` int(10) unsigned NOT NULL,
  `birthdate` date NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `date_created` date NOT NULL DEFAULT '0000-00-00',
  `date_modified` date NOT NULL DEFAULT '0000-00-00',
  `is_deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `deleted_by` int(11) NOT NULL,
  `date_deleted` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`emp_family_details_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=8192;

#
# TABLE STRUCTURE FOR: emp_leave_received_forwarded_history
#

DROP TABLE IF EXISTS `emp_leave_received_forwarded_history`;

CREATE TABLE `emp_leave_received_forwarded_history` (
  `emp_leave_received_forwarded_history_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `emp_leaves_entitlement_id` int(11) unsigned NOT NULL,
  `created_by_user_id` int(11) unsigned NOT NULL,
  `from_to_leave_year_id` int(11) DEFAULT NULL,
  `date` date NOT NULL,
  `type_process` varchar(45) DEFAULT '0.0',
  `balance` decimal(18,2) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`emp_leave_received_forwarded_history_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# TABLE STRUCTURE FOR: emp_leave_year
#

DROP TABLE IF EXISTS `emp_leave_year`;

CREATE TABLE `emp_leave_year` (
  `emp_leave_year_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `year_type` varchar(45) DEFAULT NULL,
  `date_start` date DEFAULT NULL,
  `date_end` date DEFAULT NULL,
  `note` varchar(555) DEFAULT NULL,
  `active_year` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `date_deleted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_by` int(11) NOT NULL,
  PRIMARY KEY (`emp_leave_year_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=8192;

INSERT INTO `emp_leave_year` (`emp_leave_year_id`, `year_type`, `date_start`, `date_end`, `note`, `active_year`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `date_deleted`, `deleted_by`) VALUES ('1', 'Calendar Year', '2017-01-01', '2018-01-01', 'January 2017 to January 2018', '1', '1', '0', '2017-06-28 15:36:52', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', '0');


#
# TABLE STRUCTURE FOR: emp_leaves_entitlement
#

DROP TABLE IF EXISTS `emp_leaves_entitlement`;

CREATE TABLE `emp_leaves_entitlement` (
  `emp_leaves_entitlement_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `emp_leave_year_id` int(11) unsigned NOT NULL,
  `employee_id` int(11) unsigned NOT NULL,
  `ref_leave_type_id` int(11) DEFAULT NULL,
  `total_grant` decimal(18,1) unsigned NOT NULL DEFAULT '0.0',
  `received_balance` decimal(18,1) DEFAULT '0.0',
  `current_balance` decimal(18,1) unsigned NOT NULL DEFAULT '0.0',
  `remark` varchar(45) DEFAULT NULL,
  `is_payable` tinyint(1) NOT NULL DEFAULT '0',
  `is_forwardable` tinyint(1) NOT NULL DEFAULT '0',
  `is_forwarded` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `date_deleted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_by` int(11) NOT NULL,
  PRIMARY KEY (`emp_leaves_entitlement_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=4096;

#
# TABLE STRUCTURE FOR: emp_leaves_filed
#

DROP TABLE IF EXISTS `emp_leaves_filed`;

CREATE TABLE `emp_leaves_filed` (
  `emp_leaves_filed_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `emp_leave_year_id` int(11) unsigned NOT NULL,
  `emp_leaves_entitlement_id` int(11) unsigned NOT NULL,
  `employee_id` int(11) unsigned NOT NULL,
  `date_filed` date DEFAULT NULL,
  `date_granted` date DEFAULT NULL,
  `purpose` longtext,
  `date_time_from` date DEFAULT NULL,
  `date_time_to` date DEFAULT NULL,
  `total` decimal(18,1) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `date_deleted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_by` int(11) NOT NULL,
  PRIMARY KEY (`emp_leaves_filed_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=2048;

#
# TABLE STRUCTURE FOR: emp_memo
#

DROP TABLE IF EXISTS `emp_memo`;

CREATE TABLE `emp_memo` (
  `emp_memo_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `date_memo` date NOT NULL,
  `memo_number` varchar(50) NOT NULL,
  `ref_disciplinary_action_policy_id` int(11) unsigned NOT NULL,
  `ref_action_taken_id` int(11) unsigned NOT NULL,
  `date_granted` date DEFAULT NULL,
  `remarks` longtext,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `deleted_by` int(11) NOT NULL,
  `date_deleted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`emp_memo_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# TABLE STRUCTURE FOR: emp_rates_duties
#

DROP TABLE IF EXISTS `emp_rates_duties`;

CREATE TABLE `emp_rates_duties` (
  `emp_rates_duties_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) unsigned NOT NULL,
  `date_start` date NOT NULL,
  `date_end` date DEFAULT NULL,
  `ref_position_id` int(11) unsigned NOT NULL,
  `ref_employment_type_id` int(11) unsigned NOT NULL,
  `ref_payment_type_id` int(11) DEFAULT NULL,
  `ref_department_id` int(11) unsigned NOT NULL,
  `ref_branch_id` int(11) unsigned NOT NULL,
  `ref_section_id` int(11) unsigned NOT NULL,
  `ref_employment_status_id` int(11) unsigned NOT NULL,
  `remarks` longtext,
  `hour_per_day` decimal(11,2) DEFAULT NULL,
  `salary_reg_rates` decimal(18,2) NOT NULL DEFAULT '0.00',
  `per_day_pay` decimal(18,2) NOT NULL DEFAULT '0.00',
  `per_hour_pay` decimal(11,2) DEFAULT NULL,
  `sss_phic_salary_credit` decimal(18,2) DEFAULT '0.00',
  `philhealth_salary_credit` decimal(18,2) DEFAULT NULL,
  `pagibig_salary_credit` decimal(18,2) DEFAULT '0.00',
  `tax_shield` decimal(18,2) DEFAULT '0.00',
  `active_rates_duties` tinyint(1) NOT NULL DEFAULT '0',
  `is_first_regularization` tinyint(1) NOT NULL DEFAULT '0',
  `group_id` int(11) DEFAULT NULL,
  `cola_per_hour` decimal(11,2) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) unsigned DEFAULT NULL,
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `date_deleted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_by` int(11) NOT NULL,
  PRIMARY KEY (`emp_rates_duties_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=1260;

INSERT INTO `emp_rates_duties` (`emp_rates_duties_id`, `employee_id`, `date_start`, `date_end`, `ref_position_id`, `ref_employment_type_id`, `ref_payment_type_id`, `ref_department_id`, `ref_branch_id`, `ref_section_id`, `ref_employment_status_id`, `remarks`, `hour_per_day`, `salary_reg_rates`, `per_day_pay`, `per_hour_pay`, `sss_phic_salary_credit`, `philhealth_salary_credit`, `pagibig_salary_credit`, `tax_shield`, `active_rates_duties`, `is_first_regularization`, `group_id`, `cola_per_hour`, `created_by`, `date_created`, `modified_by`, `date_modified`, `is_deleted`, `date_deleted`, `deleted_by`) VALUES ('1', '1', '2017-06-16', '1970-01-01', '1', '2', '1', '4', '1', '1', '0', '', '8.00', '5500.00', '423.08', '52.88', '0.00', '0.00', '50.00', '0.00', '1', '0', '1', '0.00', '1', '2017-06-28 15:41:36', '1', '2017-06-28 16:41:29', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `emp_rates_duties` (`emp_rates_duties_id`, `employee_id`, `date_start`, `date_end`, `ref_position_id`, `ref_employment_type_id`, `ref_payment_type_id`, `ref_department_id`, `ref_branch_id`, `ref_section_id`, `ref_employment_status_id`, `remarks`, `hour_per_day`, `salary_reg_rates`, `per_day_pay`, `per_hour_pay`, `sss_phic_salary_credit`, `philhealth_salary_credit`, `pagibig_salary_credit`, `tax_shield`, `active_rates_duties`, `is_first_regularization`, `group_id`, `cola_per_hour`, `created_by`, `date_created`, `modified_by`, `date_modified`, `is_deleted`, `date_deleted`, `deleted_by`) VALUES ('2', '3', '2017-06-28', '1970-01-01', '1', '2', '1', '2', '1', '1', '0', '', '8.00', '7500.00', '576.92', '72.12', '0.00', '0.00', '50.00', '0.00', '1', '0', '1', '0.00', '1', '2017-06-28 16:12:44', '1', '2017-06-28 16:41:16', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `emp_rates_duties` (`emp_rates_duties_id`, `employee_id`, `date_start`, `date_end`, `ref_position_id`, `ref_employment_type_id`, `ref_payment_type_id`, `ref_department_id`, `ref_branch_id`, `ref_section_id`, `ref_employment_status_id`, `remarks`, `hour_per_day`, `salary_reg_rates`, `per_day_pay`, `per_hour_pay`, `sss_phic_salary_credit`, `philhealth_salary_credit`, `pagibig_salary_credit`, `tax_shield`, `active_rates_duties`, `is_first_regularization`, `group_id`, `cola_per_hour`, `created_by`, `date_created`, `modified_by`, `date_modified`, `is_deleted`, `date_deleted`, `deleted_by`) VALUES ('3', '2', '2017-06-28', '1970-01-01', '1', '2', '1', '16', '1', '1', '0', '', '8.00', '8000.00', '615.38', '76.92', '16000.00', '0.00', '50.00', '0.00', '1', '0', '1', '0.00', '1', '2017-06-28 16:14:52', '1', '2017-06-28 16:41:43', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `emp_rates_duties` (`emp_rates_duties_id`, `employee_id`, `date_start`, `date_end`, `ref_position_id`, `ref_employment_type_id`, `ref_payment_type_id`, `ref_department_id`, `ref_branch_id`, `ref_section_id`, `ref_employment_status_id`, `remarks`, `hour_per_day`, `salary_reg_rates`, `per_day_pay`, `per_hour_pay`, `sss_phic_salary_credit`, `philhealth_salary_credit`, `pagibig_salary_credit`, `tax_shield`, `active_rates_duties`, `is_first_regularization`, `group_id`, `cola_per_hour`, `created_by`, `date_created`, `modified_by`, `date_modified`, `is_deleted`, `date_deleted`, `deleted_by`) VALUES ('4', '4', '2017-07-13', '1970-01-01', '1', '2', '1', '4', '1', '3', '0', 'test', '8.00', '15000.00', '1153.85', '144.23', '0.00', '0.00', '0.00', '0.00', '1', '0', '1', '1.00', '1', '2017-07-13 10:49:10', '1', '2017-07-13 12:50:06', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `emp_rates_duties` (`emp_rates_duties_id`, `employee_id`, `date_start`, `date_end`, `ref_position_id`, `ref_employment_type_id`, `ref_payment_type_id`, `ref_department_id`, `ref_branch_id`, `ref_section_id`, `ref_employment_status_id`, `remarks`, `hour_per_day`, `salary_reg_rates`, `per_day_pay`, `per_hour_pay`, `sss_phic_salary_credit`, `philhealth_salary_credit`, `pagibig_salary_credit`, `tax_shield`, `active_rates_duties`, `is_first_regularization`, `group_id`, `cola_per_hour`, `created_by`, `date_created`, `modified_by`, `date_modified`, `is_deleted`, `date_deleted`, `deleted_by`) VALUES ('5', '5', '2017-07-13', '1970-01-01', '1', '1', '1', '5', '1', '3', '0', 'test', '8.00', '15000.00', '1153.85', '144.23', '0.00', '0.00', '0.00', '0.00', '1', '0', '1', '5.00', '1', '2017-07-13 13:49:20', '1', '2017-07-13 13:49:52', '0', '0000-00-00 00:00:00', '0');


#
# TABLE STRUCTURE FOR: emp_seminar_training
#

DROP TABLE IF EXISTS `emp_seminar_training`;

CREATE TABLE `emp_seminar_training` (
  `emp_seminar_training_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `seminar_title` varchar(300) NOT NULL,
  `given_by` varchar(300) NOT NULL,
  `date_from` date DEFAULT NULL,
  `date_to` date DEFAULT NULL,
  `venue` varchar(500) DEFAULT NULL,
  `ref_certificate_id` int(11) unsigned NOT NULL,
  `remarks` longtext,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `date_deleted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_by` int(11) NOT NULL,
  PRIMARY KEY (`emp_seminar_training_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO `emp_seminar_training` (`emp_seminar_training_id`, `employee_id`, `date`, `seminar_title`, `given_by`, `date_from`, `date_to`, `venue`, `ref_certificate_id`, `remarks`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `date_deleted`, `deleted_by`) VALUES ('1', '2', '2017-03-29', '1', '1', '2017-03-29', '2017-03-29', '1', '2', '1', '1', '1', '2017-03-29 10:32:01', '2017-03-29 10:32:04', '1', '2017-03-29 10:32:07', '1');
INSERT INTO `emp_seminar_training` (`emp_seminar_training_id`, `employee_id`, `date`, `seminar_title`, `given_by`, `date_from`, `date_to`, `venue`, `ref_certificate_id`, `remarks`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `date_deleted`, `deleted_by`) VALUES ('2', '2', '2017-03-29', '1', '1', '2017-03-29', '2017-03-29', '1', '2', '1', '1', '1', '2017-03-29 15:08:01', '2017-03-29 15:08:04', '1', '2017-03-29 15:08:06', '1');


#
# TABLE STRUCTURE FOR: employee_list
#

DROP TABLE IF EXISTS `employee_list`;

CREATE TABLE `employee_list` (
  `employee_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ecode` varchar(100) DEFAULT NULL,
  `id_number` varchar(100) NOT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `middle_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `address_one` varchar(500) DEFAULT NULL,
  `address_two` varchar(500) DEFAULT NULL,
  `birthdate` date NOT NULL,
  `gender` varchar(10) NOT NULL,
  `height` varchar(45) DEFAULT NULL,
  `weight` varchar(45) DEFAULT NULL,
  `blood_type` varchar(45) DEFAULT NULL,
  `ref_religion_id` int(11) unsigned NOT NULL,
  `civil_status` varchar(50) NOT NULL,
  `cell_number` varchar(20) DEFAULT NULL,
  `telphone_number` varchar(20) DEFAULT NULL,
  `email_address` varchar(100) DEFAULT NULL,
  `sss` varchar(100) DEFAULT NULL,
  `phil_health` varchar(100) DEFAULT NULL,
  `pag_ibig` varchar(100) DEFAULT NULL,
  `bank_account` varchar(100) DEFAULT NULL,
  `bank_account_isprocess` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `tin` varchar(100) DEFAULT NULL,
  `tax_code` varchar(50) NOT NULL,
  `employment_date` date DEFAULT NULL,
  `date_regularization` date DEFAULT NULL,
  `loan_date` date DEFAULT NULL,
  `loan_amount` decimal(18,4) DEFAULT NULL,
  `exmpt_sss` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `exmpt_pagibig` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `exmpt_philhealth` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `image_name` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `emp_rates_duties_id` int(11) DEFAULT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'Active',
  `tax_pay_type` int(11) DEFAULT NULL,
  `is_retired` tinyint(1) DEFAULT '0',
  `date_retired` date NOT NULL,
  `date_created` date NOT NULL DEFAULT '0000-00-00',
  `created_by` int(11) NOT NULL,
  `date_modified` date NOT NULL DEFAULT '0000-00-00',
  `modified_by` tinyint(1) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_by` int(11) NOT NULL,
  `date_deleted` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`employee_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=512;

INSERT INTO `employee_list` (`employee_id`, `ecode`, `id_number`, `first_name`, `middle_name`, `last_name`, `address_one`, `address_two`, `birthdate`, `gender`, `height`, `weight`, `blood_type`, `ref_religion_id`, `civil_status`, `cell_number`, `telphone_number`, `email_address`, `sss`, `phil_health`, `pag_ibig`, `bank_account`, `bank_account_isprocess`, `tin`, `tax_code`, `employment_date`, `date_regularization`, `loan_date`, `loan_amount`, `exmpt_sss`, `exmpt_pagibig`, `exmpt_philhealth`, `image_name`, `emp_rates_duties_id`, `status`, `tax_pay_type`, `is_retired`, `date_retired`, `date_created`, `created_by`, `date_modified`, `modified_by`, `is_deleted`, `deleted_by`, `date_deleted`) VALUES ('1', '000001-2017', '001', 'Zarra', '', 'Larson', 'Balibago Angeles', '', '1992-12-17', 'Male', '', '', '', '1', 'Single', '', '', 'zarra@gmail.com', '0000000000', '', '', '', '0', '', '2', '2017-06-28', NULL, NULL, NULL, '0', '0', '1', 'assets/img/employee/5953725a3e822.png', '1', 'Active', '1', '0', '1970-01-01', '2017-06-28', '1', '2017-06-28', '1', '0', '0', '0000-00-00');
INSERT INTO `employee_list` (`employee_id`, `ecode`, `id_number`, `first_name`, `middle_name`, `last_name`, `address_one`, `address_two`, `birthdate`, `gender`, `height`, `weight`, `blood_type`, `ref_religion_id`, `civil_status`, `cell_number`, `telphone_number`, `email_address`, `sss`, `phil_health`, `pag_ibig`, `bank_account`, `bank_account_isprocess`, `tin`, `tax_code`, `employment_date`, `date_regularization`, `loan_date`, `loan_amount`, `exmpt_sss`, `exmpt_pagibig`, `exmpt_philhealth`, `image_name`, `emp_rates_duties_id`, `status`, `tax_pay_type`, `is_retired`, `date_retired`, `date_created`, `created_by`, `date_modified`, `modified_by`, `is_deleted`, `deleted_by`, `date_deleted`) VALUES ('2', '000002-2017', '002', 'Alexander', '', 'Thegreat', 'Egypt', '', '1981-07-22', 'Male', '', '', '', '1', 'Single', '', '', 'alexander@gmail.com', '0000000000', '', '', '', '0', '', '2', '2017-06-28', NULL, NULL, NULL, '0', '1', '0', 'assets/img/employee/59537270b319c.jpg', '3', 'Active', '1', '0', '1970-01-01', '2017-06-28', '1', '2017-06-28', '1', '0', '0', '0000-00-00');
INSERT INTO `employee_list` (`employee_id`, `ecode`, `id_number`, `first_name`, `middle_name`, `last_name`, `address_one`, `address_two`, `birthdate`, `gender`, `height`, `weight`, `blood_type`, `ref_religion_id`, `civil_status`, `cell_number`, `telphone_number`, `email_address`, `sss`, `phil_health`, `pag_ibig`, `bank_account`, `bank_account_isprocess`, `tin`, `tax_code`, `employment_date`, `date_regularization`, `loan_date`, `loan_amount`, `exmpt_sss`, `exmpt_pagibig`, `exmpt_philhealth`, `image_name`, `emp_rates_duties_id`, `status`, `tax_pay_type`, `is_retired`, `date_retired`, `date_created`, `created_by`, `date_modified`, `modified_by`, `is_deleted`, `deleted_by`, `date_deleted`) VALUES ('3', '000003-2017', '003', 'Albert', '', 'Einstein', 'Württemberg, Germany', '', '1992-02-26', 'Male', '', '', '', '1', 'Single', '', '', '', '0000000000', '', '', '', '0', '', '2', '2017-06-28', NULL, NULL, NULL, '0', '1', '0', 'assets/img/employee/5953727ad94b9.png', '2', 'Active', '1', '0', '1970-01-01', '2017-06-28', '1', '2017-06-28', '1', '0', '0', '0000-00-00');
INSERT INTO `employee_list` (`employee_id`, `ecode`, `id_number`, `first_name`, `middle_name`, `last_name`, `address_one`, `address_two`, `birthdate`, `gender`, `height`, `weight`, `blood_type`, `ref_religion_id`, `civil_status`, `cell_number`, `telphone_number`, `email_address`, `sss`, `phil_health`, `pag_ibig`, `bank_account`, `bank_account_isprocess`, `tin`, `tax_code`, `employment_date`, `date_regularization`, `loan_date`, `loan_amount`, `exmpt_sss`, `exmpt_pagibig`, `exmpt_philhealth`, `image_name`, `emp_rates_duties_id`, `status`, `tax_pay_type`, `is_retired`, `date_retired`, `date_created`, `created_by`, `date_modified`, `modified_by`, `is_deleted`, `deleted_by`, `date_deleted`) VALUES ('4', '000004-2017', '10001', 'Kim', '', 'Domingo', 'test', 'test', '1988-03-09', 'Female', '', '', '', '1', 'Single', '', '', 'test', '1', '444444444444', '444444444444', '1888888', '0', '444444444', '1', '1970-01-01', NULL, NULL, NULL, '1', '1', '0', 'assets/img/anonymous-icon.png', '4', 'Active', '1', '0', '1970-01-01', '2017-07-06', '1', '0000-00-00', '0', '0', '0', '0000-00-00');
INSERT INTO `employee_list` (`employee_id`, `ecode`, `id_number`, `first_name`, `middle_name`, `last_name`, `address_one`, `address_two`, `birthdate`, `gender`, `height`, `weight`, `blood_type`, `ref_religion_id`, `civil_status`, `cell_number`, `telphone_number`, `email_address`, `sss`, `phil_health`, `pag_ibig`, `bank_account`, `bank_account_isprocess`, `tin`, `tax_code`, `employment_date`, `date_regularization`, `loan_date`, `loan_amount`, `exmpt_sss`, `exmpt_pagibig`, `exmpt_philhealth`, `image_name`, `emp_rates_duties_id`, `status`, `tax_pay_type`, `is_retired`, `date_retired`, `date_created`, `created_by`, `date_modified`, `modified_by`, `is_deleted`, `deleted_by`, `date_deleted`) VALUES ('5', '000005-2017', '0000020', 'Rodrigo', 'Roa', 'Duterte', 'Balibago,Angeles City', '', '1980-07-15', 'Male', '', '', '', '1', 'Single', '', '', 'du30@gmail.com', '1', '222222222222', '222222222222', '', '0', '', '1', '2017-07-13', NULL, NULL, NULL, '0', '1', '0', 'assets/img/anonymous-icon.png', '5', 'Active', '1', '0', '1970-01-01', '2017-07-13', '1', '0000-00-00', '0', '0', '0', '0000-00-00');


#
# TABLE STRUCTURE FOR: new_deductions_regular
#

DROP TABLE IF EXISTS `new_deductions_regular`;

CREATE TABLE `new_deductions_regular` (
  `deduction_regular_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) DEFAULT '0',
  `deduction_id` int(11) DEFAULT '0',
  `pay_period_id` int(11) DEFAULT '0',
  `deduction_total_amount` decimal(11,2) DEFAULT NULL,
  `deduction_per_pay_amount` decimal(11,2) DEFAULT NULL,
  `deduction_cycle` int(11) DEFAULT '0',
  `deduction_regular_remarks` varchar(300) DEFAULT '',
  `created_by` int(11) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL,
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_by` int(11) NOT NULL,
  `date_deleted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_deleted` tinyint(1) DEFAULT '0',
  `is_temporary` tinyint(1) DEFAULT '0',
  `deduction_total_amount_tempo` decimal(11,2) DEFAULT NULL,
  `loan_cashedout` tinyint(1) DEFAULT '0',
  `loan_total_amount` decimal(11,2) DEFAULT NULL,
  PRIMARY KEY (`deduction_regular_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=116;

INSERT INTO `new_deductions_regular` (`deduction_regular_id`, `employee_id`, `deduction_id`, `pay_period_id`, `deduction_total_amount`, `deduction_per_pay_amount`, `deduction_cycle`, `deduction_regular_remarks`, `created_by`, `date_created`, `modified_by`, `date_modified`, `deleted_by`, `date_deleted`, `is_deleted`, `is_temporary`, `deduction_total_amount_tempo`, `loan_cashedout`, `loan_total_amount`) VALUES ('1', '1', '5', '0', '1200.00', '200.00', '2', 'SSS Loan', '1', '2017-06-28 16:45:22', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', '0', '0', '0.00', '0', '1200.00');
INSERT INTO `new_deductions_regular` (`deduction_regular_id`, `employee_id`, `deduction_id`, `pay_period_id`, `deduction_total_amount`, `deduction_per_pay_amount`, `deduction_cycle`, `deduction_regular_remarks`, `created_by`, `date_created`, `modified_by`, `date_modified`, `deleted_by`, `date_deleted`, `is_deleted`, `is_temporary`, `deduction_total_amount_tempo`, `loan_cashedout`, `loan_total_amount`) VALUES ('2', '1', '12', '0', '1000.00', '250.00', '2', 'pag ibig calamity', '1', '2017-06-29 12:01:00', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', '0', '0', '0.00', '0', '1000.00');
INSERT INTO `new_deductions_regular` (`deduction_regular_id`, `employee_id`, `deduction_id`, `pay_period_id`, `deduction_total_amount`, `deduction_per_pay_amount`, `deduction_cycle`, `deduction_regular_remarks`, `created_by`, `date_created`, `modified_by`, `date_modified`, `deleted_by`, `date_deleted`, `is_deleted`, `is_temporary`, `deduction_total_amount_tempo`, `loan_cashedout`, `loan_total_amount`) VALUES ('3', '1', '11', '14', NULL, '120.00', NULL, 'test', '1', '2017-06-29 13:27:53', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', '0', '1', NULL, '0', NULL);
INSERT INTO `new_deductions_regular` (`deduction_regular_id`, `employee_id`, `deduction_id`, `pay_period_id`, `deduction_total_amount`, `deduction_per_pay_amount`, `deduction_cycle`, `deduction_regular_remarks`, `created_by`, `date_created`, `modified_by`, `date_modified`, `deleted_by`, `date_deleted`, `is_deleted`, `is_temporary`, `deduction_total_amount_tempo`, `loan_cashedout`, `loan_total_amount`) VALUES ('4', '1', '15', '14', NULL, '120.00', NULL, 'test', '1', '2017-06-29 13:28:05', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', '0', '1', NULL, '0', NULL);


#
# TABLE STRUCTURE FOR: new_otherearnings_regular
#

DROP TABLE IF EXISTS `new_otherearnings_regular`;

CREATE TABLE `new_otherearnings_regular` (
  `oe_regular_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) DEFAULT '0',
  `earnings_id` int(11) DEFAULT '0',
  `pay_period_id` int(11) DEFAULT '0',
  `oe_regular_amount` decimal(11,2) DEFAULT NULL,
  `oe_cycle` int(11) DEFAULT '0',
  `pay_type_id` int(11) DEFAULT '0',
  `oe_regular_remarks` varchar(300) DEFAULT '',
  `created_by` int(11) NOT NULL,
  `date_created` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_by` int(11) NOT NULL,
  `date_deleted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_deleted` tinyint(1) DEFAULT '0',
  `is_temporary` tinyint(1) DEFAULT '0',
  `is_taxable` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`oe_regular_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=5461;

INSERT INTO `new_otherearnings_regular` (`oe_regular_id`, `employee_id`, `earnings_id`, `pay_period_id`, `oe_regular_amount`, `oe_cycle`, `pay_type_id`, `oe_regular_remarks`, `created_by`, `date_created`, `modified_by`, `date_modified`, `deleted_by`, `date_deleted`, `is_deleted`, `is_temporary`, `is_taxable`) VALUES ('1', '1', '3', '13', '1500.00', '0', '0', 'Retro', '1', '2017-06-29 09:54:25', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', '0', '1', '0');
INSERT INTO `new_otherearnings_regular` (`oe_regular_id`, `employee_id`, `earnings_id`, `pay_period_id`, `oe_regular_amount`, `oe_cycle`, `pay_type_id`, `oe_regular_remarks`, `created_by`, `date_created`, `modified_by`, `date_modified`, `deleted_by`, `date_deleted`, `is_deleted`, `is_temporary`, `is_taxable`) VALUES ('2', '1', '3', '13', '500.00', '0', '0', 'added salary retro', '1', '2017-06-29 10:24:25', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', '0', '1', '0');
INSERT INTO `new_otherearnings_regular` (`oe_regular_id`, `employee_id`, `earnings_id`, `pay_period_id`, `oe_regular_amount`, `oe_cycle`, `pay_type_id`, `oe_regular_remarks`, `created_by`, `date_created`, `modified_by`, `date_modified`, `deleted_by`, `date_deleted`, `is_deleted`, `is_temporary`, `is_taxable`) VALUES ('3', '1', '3', '14', '500.00', '0', '0', 'salary retro', '1', '2017-06-29 10:26:05', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', '0', '1', '0');
INSERT INTO `new_otherearnings_regular` (`oe_regular_id`, `employee_id`, `earnings_id`, `pay_period_id`, `oe_regular_amount`, `oe_cycle`, `pay_type_id`, `oe_regular_remarks`, `created_by`, `date_created`, `modified_by`, `date_modified`, `deleted_by`, `date_deleted`, `is_deleted`, `is_temporary`, `is_taxable`) VALUES ('4', '1', '1', '13', '50.00', '0', '0', 'meal allowance', '1', '2017-06-29 10:28:03', '1', '2017-06-29 10:28:52', '0', '0000-00-00 00:00:00', '0', '1', '0');
INSERT INTO `new_otherearnings_regular` (`oe_regular_id`, `employee_id`, `earnings_id`, `pay_period_id`, `oe_regular_amount`, `oe_cycle`, `pay_type_id`, `oe_regular_remarks`, `created_by`, `date_created`, `modified_by`, `date_modified`, `deleted_by`, `date_deleted`, `is_deleted`, `is_temporary`, `is_taxable`) VALUES ('5', '1', '1', '13', '750.00', '0', '0', 'allowance for this period', '1', '2017-06-29 10:29:10', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', '0', '1', '0');
INSERT INTO `new_otherearnings_regular` (`oe_regular_id`, `employee_id`, `earnings_id`, `pay_period_id`, `oe_regular_amount`, `oe_cycle`, `pay_type_id`, `oe_regular_remarks`, `created_by`, `date_created`, `modified_by`, `date_modified`, `deleted_by`, `date_deleted`, `is_deleted`, `is_temporary`, `is_taxable`) VALUES ('6', '1', '2', '13', '500.00', '0', '0', 'additional 500', '1', '2017-06-29 10:30:23', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', '0', '1', '0');
INSERT INTO `new_otherearnings_regular` (`oe_regular_id`, `employee_id`, `earnings_id`, `pay_period_id`, `oe_regular_amount`, `oe_cycle`, `pay_type_id`, `oe_regular_remarks`, `created_by`, `date_created`, `modified_by`, `date_modified`, `deleted_by`, `date_deleted`, `is_deleted`, `is_temporary`, `is_taxable`) VALUES ('7', '1', '2', '13', '50.00', '0', '0', 'added 50 pesos', '1', '2017-06-29 10:30:43', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', '0', '1', '0');


#
# TABLE STRUCTURE FOR: otherearnings_temporary
#

DROP TABLE IF EXISTS `otherearnings_temporary`;

CREATE TABLE `otherearnings_temporary` (
  `earnings_temporary_id` int(11) NOT NULL AUTO_INCREMENT,
  `pay_period_id` int(11) DEFAULT '0',
  `employee_id` int(11) DEFAULT '0',
  `earnings_id` int(11) DEFAULT '0',
  `earnings_temporary_amount` decimal(19,5) DEFAULT '0.00000',
  `earnings_temporary_remarks` varchar(300) DEFAULT '',
  `created_by` int(11) DEFAULT NULL,
  `created_datetime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_by` int(11) DEFAULT NULL,
  `modified_datetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_by` int(11) DEFAULT NULL,
  `deleted_datetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`earnings_temporary_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: pay_slip
#

DROP TABLE IF EXISTS `pay_slip`;

CREATE TABLE `pay_slip` (
  `pay_slip_id` int(11) NOT NULL AUTO_INCREMENT,
  `pay_slip_code` varchar(20) DEFAULT NULL,
  `dtr_id` int(11) DEFAULT NULL,
  `reg_pay` decimal(19,5) DEFAULT NULL,
  `sun_pay` decimal(19,5) DEFAULT NULL,
  `reg_hol_pay` decimal(19,5) DEFAULT NULL,
  `spe_hol_pay` decimal(19,5) DEFAULT NULL,
  `reg_ot_pay` decimal(19,5) DEFAULT NULL,
  `sun_ot_pay` decimal(19,5) DEFAULT NULL,
  `reg_nsd_pay` decimal(19,5) DEFAULT NULL,
  `sun_nsd_pay` decimal(19,5) DEFAULT NULL,
  `total_dtr_amount` decimal(19,5) DEFAULT NULL,
  `days_with_pay_amt` decimal(11,2) DEFAULT NULL,
  `days_wout_pay_amt` decimal(11,2) DEFAULT NULL,
  `minutes_late_amt` decimal(11,2) DEFAULT NULL,
  `cola_pay` decimal(19,5) DEFAULT NULL,
  `gross_pay` decimal(19,5) DEFAULT NULL,
  `taxable_pay` decimal(19,5) DEFAULT NULL,
  `total_deductions` decimal(19,5) DEFAULT NULL,
  `net_pay` decimal(19,5) DEFAULT NULL,
  `date_processed` date NOT NULL DEFAULT '0000-00-00',
  `processed_by` int(11) NOT NULL,
  PRIMARY KEY (`pay_slip_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=16384;

INSERT INTO `pay_slip` (`pay_slip_id`, `pay_slip_code`, `dtr_id`, `reg_pay`, `sun_pay`, `reg_hol_pay`, `spe_hol_pay`, `reg_ot_pay`, `sun_ot_pay`, `reg_nsd_pay`, `sun_nsd_pay`, `total_dtr_amount`, `days_with_pay_amt`, `days_wout_pay_amt`, `minutes_late_amt`, `cola_pay`, `gross_pay`, `taxable_pay`, `total_deductions`, `net_pay`, `date_processed`, `processed_by`) VALUES ('49', NULL, '7', '7500.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '7500.00000', '0.00', '0.00', '0.00', NULL, '7500.00000', '7500.00000', '1192.17000', '6307.83000', '2017-06-28', '1');
INSERT INTO `pay_slip` (`pay_slip_id`, `pay_slip_code`, `dtr_id`, `reg_pay`, `sun_pay`, `reg_hol_pay`, `spe_hol_pay`, `reg_ot_pay`, `sun_ot_pay`, `reg_nsd_pay`, `sun_nsd_pay`, `total_dtr_amount`, `days_with_pay_amt`, `days_wout_pay_amt`, `minutes_late_amt`, `cola_pay`, `gross_pay`, `taxable_pay`, `total_deductions`, `net_pay`, `date_processed`, `processed_by`) VALUES ('50', NULL, '8', '8000.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '8000.00000', '0.00', '0.00', '0.00', NULL, '8000.00000', '8000.00000', '1539.21000', '6460.79000', '2017-06-28', '1');
INSERT INTO `pay_slip` (`pay_slip_id`, `pay_slip_code`, `dtr_id`, `reg_pay`, `sun_pay`, `reg_hol_pay`, `spe_hol_pay`, `reg_ot_pay`, `sun_ot_pay`, `reg_nsd_pay`, `sun_nsd_pay`, `total_dtr_amount`, `days_with_pay_amt`, `days_wout_pay_amt`, `minutes_late_amt`, `cola_pay`, `gross_pay`, `taxable_pay`, `total_deductions`, `net_pay`, `date_processed`, `processed_by`) VALUES ('52', NULL, '5', '7500.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '7500.00000', '0.00', '0.00', '0.00', NULL, '7500.00000', '7500.00000', '0.00000', '7500.00000', '2017-06-28', '1');
INSERT INTO `pay_slip` (`pay_slip_id`, `pay_slip_code`, `dtr_id`, `reg_pay`, `sun_pay`, `reg_hol_pay`, `spe_hol_pay`, `reg_ot_pay`, `sun_ot_pay`, `reg_nsd_pay`, `sun_nsd_pay`, `total_dtr_amount`, `days_with_pay_amt`, `days_wout_pay_amt`, `minutes_late_amt`, `cola_pay`, `gross_pay`, `taxable_pay`, `total_deductions`, `net_pay`, `date_processed`, `processed_by`) VALUES ('53', NULL, '6', '8000.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '8000.00000', '0.00', '0.00', '0.00', NULL, '8000.00000', '8000.00000', '0.00000', '8000.00000', '2017-06-28', '1');
INSERT INTO `pay_slip` (`pay_slip_id`, `pay_slip_code`, `dtr_id`, `reg_pay`, `sun_pay`, `reg_hol_pay`, `spe_hol_pay`, `reg_ot_pay`, `sun_ot_pay`, `reg_nsd_pay`, `sun_nsd_pay`, `total_dtr_amount`, `days_with_pay_amt`, `days_wout_pay_amt`, `minutes_late_amt`, `cola_pay`, `gross_pay`, `taxable_pay`, `total_deductions`, `net_pay`, `date_processed`, `processed_by`) VALUES ('55', NULL, '3', '7500.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '7500.00000', '0.00', '0.00', '0.00', NULL, '7500.00000', '7500.00000', '1192.17000', '6307.83000', '2017-06-28', '1');
INSERT INTO `pay_slip` (`pay_slip_id`, `pay_slip_code`, `dtr_id`, `reg_pay`, `sun_pay`, `reg_hol_pay`, `spe_hol_pay`, `reg_ot_pay`, `sun_ot_pay`, `reg_nsd_pay`, `sun_nsd_pay`, `total_dtr_amount`, `days_with_pay_amt`, `days_wout_pay_amt`, `minutes_late_amt`, `cola_pay`, `gross_pay`, `taxable_pay`, `total_deductions`, `net_pay`, `date_processed`, `processed_by`) VALUES ('56', NULL, '4', '8000.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '8000.00000', '0.00', '0.00', '0.00', NULL, '8000.00000', '8000.00000', '1539.21000', '6460.79000', '2017-06-28', '1');
INSERT INTO `pay_slip` (`pay_slip_id`, `pay_slip_code`, `dtr_id`, `reg_pay`, `sun_pay`, `reg_hol_pay`, `spe_hol_pay`, `reg_ot_pay`, `sun_ot_pay`, `reg_nsd_pay`, `sun_nsd_pay`, `total_dtr_amount`, `days_with_pay_amt`, `days_wout_pay_amt`, `minutes_late_amt`, `cola_pay`, `gross_pay`, `taxable_pay`, `total_deductions`, `net_pay`, `date_processed`, `processed_by`) VALUES ('57', NULL, '2', '5500.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '5500.00000', '0.00', '0.00', '0.00', NULL, '5500.00000', '5500.00000', '734.01000', '4765.99000', '2017-06-28', '1');
INSERT INTO `pay_slip` (`pay_slip_id`, `pay_slip_code`, `dtr_id`, `reg_pay`, `sun_pay`, `reg_hol_pay`, `spe_hol_pay`, `reg_ot_pay`, `sun_ot_pay`, `reg_nsd_pay`, `sun_nsd_pay`, `total_dtr_amount`, `days_with_pay_amt`, `days_wout_pay_amt`, `minutes_late_amt`, `cola_pay`, `gross_pay`, `taxable_pay`, `total_deductions`, `net_pay`, `date_processed`, `processed_by`) VALUES ('66', NULL, '1', '5500.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '5500.00000', '0.00', '0.00', '0.00', NULL, '8850.00000', '5500.00000', '450.00000', '8400.00000', '2017-06-29', '1');
INSERT INTO `pay_slip` (`pay_slip_id`, `pay_slip_code`, `dtr_id`, `reg_pay`, `sun_pay`, `reg_hol_pay`, `spe_hol_pay`, `reg_ot_pay`, `sun_ot_pay`, `reg_nsd_pay`, `sun_nsd_pay`, `total_dtr_amount`, `days_with_pay_amt`, `days_wout_pay_amt`, `minutes_late_amt`, `cola_pay`, `gross_pay`, `taxable_pay`, `total_deductions`, `net_pay`, `date_processed`, `processed_by`) VALUES ('74', NULL, '9', '5500.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '5500.00000', '0.00', '0.00', '0.00', NULL, '6000.00000', '5500.00000', '734.01000', '5265.99000', '2017-06-29', '1');
INSERT INTO `pay_slip` (`pay_slip_id`, `pay_slip_code`, `dtr_id`, `reg_pay`, `sun_pay`, `reg_hol_pay`, `spe_hol_pay`, `reg_ot_pay`, `sun_ot_pay`, `reg_nsd_pay`, `sun_nsd_pay`, `total_dtr_amount`, `days_with_pay_amt`, `days_wout_pay_amt`, `minutes_late_amt`, `cola_pay`, `gross_pay`, `taxable_pay`, `total_deductions`, `net_pay`, `date_processed`, `processed_by`) VALUES ('75', NULL, '10', '239.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '0.00000', '239.00000', '0.00', '0.00', '0.00', NULL, '239.00000', '239.00000', '200.00000', '39.00000', '2017-07-13', '1');


#
# TABLE STRUCTURE FOR: pay_slip_deductions
#

DROP TABLE IF EXISTS `pay_slip_deductions`;

CREATE TABLE `pay_slip_deductions` (
  `pay_slip_deduction_id` int(11) NOT NULL AUTO_INCREMENT,
  `pay_slip_id` int(11) DEFAULT NULL,
  `deduction_id` int(11) DEFAULT NULL,
  `deduction_amount` decimal(19,5) DEFAULT '0.00000',
  `deduction_regular_id` int(11) DEFAULT NULL,
  `sss_id` int(11) DEFAULT NULL,
  `philhealth_id` int(11) DEFAULT NULL,
  `wtax_id` int(11) DEFAULT NULL,
  `active_deduct` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`pay_slip_deduction_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=343 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=4915;

INSERT INTO `pay_slip_deductions` (`pay_slip_deduction_id`, `pay_slip_id`, `deduction_id`, `deduction_amount`, `deduction_regular_id`, `sss_id`, `philhealth_id`, `wtax_id`, `active_deduct`) VALUES ('193', '49', '1', '272.50000', NULL, '14', NULL, NULL, '1');
INSERT INTO `pay_slip_deductions` (`pay_slip_deduction_id`, `pay_slip_id`, `deduction_id`, `deduction_amount`, `deduction_regular_id`, `sss_id`, `philhealth_id`, `wtax_id`, `active_deduct`) VALUES ('194', '49', '2', '100.00000', NULL, NULL, '1', NULL, '1');
INSERT INTO `pay_slip_deductions` (`pay_slip_deduction_id`, `pay_slip_id`, `deduction_id`, `deduction_amount`, `deduction_regular_id`, `sss_id`, `philhealth_id`, `wtax_id`, `active_deduct`) VALUES ('195', '49', '3', '50.00000', NULL, NULL, NULL, NULL, '1');
INSERT INTO `pay_slip_deductions` (`pay_slip_deduction_id`, `pay_slip_id`, `deduction_id`, `deduction_amount`, `deduction_regular_id`, `sss_id`, `philhealth_id`, `wtax_id`, `active_deduct`) VALUES ('196', '49', '4', '769.67000', NULL, NULL, NULL, NULL, '1');
INSERT INTO `pay_slip_deductions` (`pay_slip_deduction_id`, `pay_slip_id`, `deduction_id`, `deduction_amount`, `deduction_regular_id`, `sss_id`, `philhealth_id`, `wtax_id`, `active_deduct`) VALUES ('197', '50', '1', '581.30000', NULL, '31', NULL, NULL, '1');
INSERT INTO `pay_slip_deductions` (`pay_slip_deduction_id`, `pay_slip_id`, `deduction_id`, `deduction_amount`, `deduction_regular_id`, `sss_id`, `philhealth_id`, `wtax_id`, `active_deduct`) VALUES ('198', '50', '2', '100.00000', NULL, NULL, '1', NULL, '1');
INSERT INTO `pay_slip_deductions` (`pay_slip_deduction_id`, `pay_slip_id`, `deduction_id`, `deduction_amount`, `deduction_regular_id`, `sss_id`, `philhealth_id`, `wtax_id`, `active_deduct`) VALUES ('199', '50', '3', '50.00000', NULL, NULL, NULL, NULL, '1');
INSERT INTO `pay_slip_deductions` (`pay_slip_deduction_id`, `pay_slip_id`, `deduction_id`, `deduction_amount`, `deduction_regular_id`, `sss_id`, `philhealth_id`, `wtax_id`, `active_deduct`) VALUES ('200', '50', '4', '807.91000', NULL, NULL, NULL, NULL, '1');
INSERT INTO `pay_slip_deductions` (`pay_slip_deduction_id`, `pay_slip_id`, `deduction_id`, `deduction_amount`, `deduction_regular_id`, `sss_id`, `philhealth_id`, `wtax_id`, `active_deduct`) VALUES ('205', '52', '1', '0.00000', NULL, NULL, NULL, NULL, '0');
INSERT INTO `pay_slip_deductions` (`pay_slip_deduction_id`, `pay_slip_id`, `deduction_id`, `deduction_amount`, `deduction_regular_id`, `sss_id`, `philhealth_id`, `wtax_id`, `active_deduct`) VALUES ('206', '52', '2', '0.00000', NULL, NULL, NULL, NULL, '0');
INSERT INTO `pay_slip_deductions` (`pay_slip_deduction_id`, `pay_slip_id`, `deduction_id`, `deduction_amount`, `deduction_regular_id`, `sss_id`, `philhealth_id`, `wtax_id`, `active_deduct`) VALUES ('207', '52', '3', '0.00000', NULL, NULL, NULL, NULL, '0');
INSERT INTO `pay_slip_deductions` (`pay_slip_deduction_id`, `pay_slip_id`, `deduction_id`, `deduction_amount`, `deduction_regular_id`, `sss_id`, `philhealth_id`, `wtax_id`, `active_deduct`) VALUES ('208', '52', '4', '0.00000', NULL, NULL, NULL, NULL, '0');
INSERT INTO `pay_slip_deductions` (`pay_slip_deduction_id`, `pay_slip_id`, `deduction_id`, `deduction_amount`, `deduction_regular_id`, `sss_id`, `philhealth_id`, `wtax_id`, `active_deduct`) VALUES ('209', '53', '1', '0.00000', NULL, NULL, NULL, NULL, '0');
INSERT INTO `pay_slip_deductions` (`pay_slip_deduction_id`, `pay_slip_id`, `deduction_id`, `deduction_amount`, `deduction_regular_id`, `sss_id`, `philhealth_id`, `wtax_id`, `active_deduct`) VALUES ('210', '53', '2', '0.00000', NULL, NULL, NULL, NULL, '0');
INSERT INTO `pay_slip_deductions` (`pay_slip_deduction_id`, `pay_slip_id`, `deduction_id`, `deduction_amount`, `deduction_regular_id`, `sss_id`, `philhealth_id`, `wtax_id`, `active_deduct`) VALUES ('211', '53', '3', '0.00000', NULL, NULL, NULL, NULL, '0');
INSERT INTO `pay_slip_deductions` (`pay_slip_deduction_id`, `pay_slip_id`, `deduction_id`, `deduction_amount`, `deduction_regular_id`, `sss_id`, `philhealth_id`, `wtax_id`, `active_deduct`) VALUES ('212', '53', '4', '0.00000', NULL, NULL, NULL, NULL, '0');
INSERT INTO `pay_slip_deductions` (`pay_slip_deduction_id`, `pay_slip_id`, `deduction_id`, `deduction_amount`, `deduction_regular_id`, `sss_id`, `philhealth_id`, `wtax_id`, `active_deduct`) VALUES ('217', '55', '1', '272.50000', NULL, '14', NULL, NULL, '1');
INSERT INTO `pay_slip_deductions` (`pay_slip_deduction_id`, `pay_slip_id`, `deduction_id`, `deduction_amount`, `deduction_regular_id`, `sss_id`, `philhealth_id`, `wtax_id`, `active_deduct`) VALUES ('218', '55', '2', '100.00000', NULL, NULL, '1', NULL, '1');
INSERT INTO `pay_slip_deductions` (`pay_slip_deduction_id`, `pay_slip_id`, `deduction_id`, `deduction_amount`, `deduction_regular_id`, `sss_id`, `philhealth_id`, `wtax_id`, `active_deduct`) VALUES ('219', '55', '3', '50.00000', NULL, NULL, NULL, NULL, '1');
INSERT INTO `pay_slip_deductions` (`pay_slip_deduction_id`, `pay_slip_id`, `deduction_id`, `deduction_amount`, `deduction_regular_id`, `sss_id`, `philhealth_id`, `wtax_id`, `active_deduct`) VALUES ('220', '55', '4', '769.67000', NULL, NULL, NULL, NULL, '1');
INSERT INTO `pay_slip_deductions` (`pay_slip_deduction_id`, `pay_slip_id`, `deduction_id`, `deduction_amount`, `deduction_regular_id`, `sss_id`, `philhealth_id`, `wtax_id`, `active_deduct`) VALUES ('221', '56', '1', '581.30000', NULL, '31', NULL, NULL, '1');
INSERT INTO `pay_slip_deductions` (`pay_slip_deduction_id`, `pay_slip_id`, `deduction_id`, `deduction_amount`, `deduction_regular_id`, `sss_id`, `philhealth_id`, `wtax_id`, `active_deduct`) VALUES ('222', '56', '2', '100.00000', NULL, NULL, '1', NULL, '1');
INSERT INTO `pay_slip_deductions` (`pay_slip_deduction_id`, `pay_slip_id`, `deduction_id`, `deduction_amount`, `deduction_regular_id`, `sss_id`, `philhealth_id`, `wtax_id`, `active_deduct`) VALUES ('223', '56', '3', '50.00000', NULL, NULL, NULL, NULL, '1');
INSERT INTO `pay_slip_deductions` (`pay_slip_deduction_id`, `pay_slip_id`, `deduction_id`, `deduction_amount`, `deduction_regular_id`, `sss_id`, `philhealth_id`, `wtax_id`, `active_deduct`) VALUES ('224', '56', '4', '807.91000', NULL, NULL, NULL, NULL, '1');
INSERT INTO `pay_slip_deductions` (`pay_slip_deduction_id`, `pay_slip_id`, `deduction_id`, `deduction_amount`, `deduction_regular_id`, `sss_id`, `philhealth_id`, `wtax_id`, `active_deduct`) VALUES ('225', '57', '1', '199.80000', NULL, '10', NULL, NULL, '1');
INSERT INTO `pay_slip_deductions` (`pay_slip_deduction_id`, `pay_slip_id`, `deduction_id`, `deduction_amount`, `deduction_regular_id`, `sss_id`, `philhealth_id`, `wtax_id`, `active_deduct`) VALUES ('226', '57', '2', '100.00000', NULL, NULL, '1', NULL, '1');
INSERT INTO `pay_slip_deductions` (`pay_slip_deduction_id`, `pay_slip_id`, `deduction_id`, `deduction_amount`, `deduction_regular_id`, `sss_id`, `philhealth_id`, `wtax_id`, `active_deduct`) VALUES ('227', '57', '3', '50.00000', NULL, NULL, NULL, NULL, '1');
INSERT INTO `pay_slip_deductions` (`pay_slip_deduction_id`, `pay_slip_id`, `deduction_id`, `deduction_amount`, `deduction_regular_id`, `sss_id`, `philhealth_id`, `wtax_id`, `active_deduct`) VALUES ('228', '57', '4', '384.21000', NULL, NULL, NULL, NULL, '1');
INSERT INTO `pay_slip_deductions` (`pay_slip_deduction_id`, `pay_slip_id`, `deduction_id`, `deduction_amount`, `deduction_regular_id`, `sss_id`, `philhealth_id`, `wtax_id`, `active_deduct`) VALUES ('269', '66', '5', '200.00000', '1', NULL, NULL, NULL, '1');
INSERT INTO `pay_slip_deductions` (`pay_slip_deduction_id`, `pay_slip_id`, `deduction_id`, `deduction_amount`, `deduction_regular_id`, `sss_id`, `philhealth_id`, `wtax_id`, `active_deduct`) VALUES ('270', '66', '12', '250.00000', '2', NULL, NULL, NULL, '1');
INSERT INTO `pay_slip_deductions` (`pay_slip_deduction_id`, `pay_slip_id`, `deduction_id`, `deduction_amount`, `deduction_regular_id`, `sss_id`, `philhealth_id`, `wtax_id`, `active_deduct`) VALUES ('271', '66', '1', '0.00000', NULL, NULL, NULL, NULL, '0');
INSERT INTO `pay_slip_deductions` (`pay_slip_deduction_id`, `pay_slip_id`, `deduction_id`, `deduction_amount`, `deduction_regular_id`, `sss_id`, `philhealth_id`, `wtax_id`, `active_deduct`) VALUES ('272', '66', '2', '0.00000', NULL, NULL, NULL, NULL, '0');
INSERT INTO `pay_slip_deductions` (`pay_slip_deduction_id`, `pay_slip_id`, `deduction_id`, `deduction_amount`, `deduction_regular_id`, `sss_id`, `philhealth_id`, `wtax_id`, `active_deduct`) VALUES ('273', '66', '3', '0.00000', NULL, NULL, NULL, NULL, '0');
INSERT INTO `pay_slip_deductions` (`pay_slip_deduction_id`, `pay_slip_id`, `deduction_id`, `deduction_amount`, `deduction_regular_id`, `sss_id`, `philhealth_id`, `wtax_id`, `active_deduct`) VALUES ('274', '66', '4', '0.00000', NULL, NULL, NULL, NULL, '0');
INSERT INTO `pay_slip_deductions` (`pay_slip_deduction_id`, `pay_slip_id`, `deduction_id`, `deduction_amount`, `deduction_regular_id`, `sss_id`, `philhealth_id`, `wtax_id`, `active_deduct`) VALUES ('331', '74', '5', '0.00000', '1', NULL, NULL, NULL, '0');
INSERT INTO `pay_slip_deductions` (`pay_slip_deduction_id`, `pay_slip_id`, `deduction_id`, `deduction_amount`, `deduction_regular_id`, `sss_id`, `philhealth_id`, `wtax_id`, `active_deduct`) VALUES ('332', '74', '12', '0.00000', '2', NULL, NULL, NULL, '0');
INSERT INTO `pay_slip_deductions` (`pay_slip_deduction_id`, `pay_slip_id`, `deduction_id`, `deduction_amount`, `deduction_regular_id`, `sss_id`, `philhealth_id`, `wtax_id`, `active_deduct`) VALUES ('333', '74', '11', '120.00000', '3', NULL, NULL, NULL, '0');
INSERT INTO `pay_slip_deductions` (`pay_slip_deduction_id`, `pay_slip_id`, `deduction_id`, `deduction_amount`, `deduction_regular_id`, `sss_id`, `philhealth_id`, `wtax_id`, `active_deduct`) VALUES ('334', '74', '15', '120.00000', '4', NULL, NULL, NULL, '0');
INSERT INTO `pay_slip_deductions` (`pay_slip_deduction_id`, `pay_slip_id`, `deduction_id`, `deduction_amount`, `deduction_regular_id`, `sss_id`, `philhealth_id`, `wtax_id`, `active_deduct`) VALUES ('335', '74', '1', '199.80000', NULL, '10', NULL, NULL, '1');
INSERT INTO `pay_slip_deductions` (`pay_slip_deduction_id`, `pay_slip_id`, `deduction_id`, `deduction_amount`, `deduction_regular_id`, `sss_id`, `philhealth_id`, `wtax_id`, `active_deduct`) VALUES ('336', '74', '2', '100.00000', NULL, NULL, '1', NULL, '1');
INSERT INTO `pay_slip_deductions` (`pay_slip_deduction_id`, `pay_slip_id`, `deduction_id`, `deduction_amount`, `deduction_regular_id`, `sss_id`, `philhealth_id`, `wtax_id`, `active_deduct`) VALUES ('337', '74', '3', '50.00000', NULL, NULL, NULL, NULL, '1');
INSERT INTO `pay_slip_deductions` (`pay_slip_deduction_id`, `pay_slip_id`, `deduction_id`, `deduction_amount`, `deduction_regular_id`, `sss_id`, `philhealth_id`, `wtax_id`, `active_deduct`) VALUES ('338', '74', '4', '384.21000', NULL, NULL, NULL, NULL, '1');
INSERT INTO `pay_slip_deductions` (`pay_slip_deduction_id`, `pay_slip_id`, `deduction_id`, `deduction_amount`, `deduction_regular_id`, `sss_id`, `philhealth_id`, `wtax_id`, `active_deduct`) VALUES ('339', '75', '1', NULL, NULL, NULL, NULL, NULL, '1');
INSERT INTO `pay_slip_deductions` (`pay_slip_deduction_id`, `pay_slip_id`, `deduction_id`, `deduction_amount`, `deduction_regular_id`, `sss_id`, `philhealth_id`, `wtax_id`, `active_deduct`) VALUES ('340', '75', '2', '100.00000', NULL, NULL, '1', NULL, '1');
INSERT INTO `pay_slip_deductions` (`pay_slip_deduction_id`, `pay_slip_id`, `deduction_id`, `deduction_amount`, `deduction_regular_id`, `sss_id`, `philhealth_id`, `wtax_id`, `active_deduct`) VALUES ('341', '75', '3', '100.00000', NULL, NULL, NULL, NULL, '1');
INSERT INTO `pay_slip_deductions` (`pay_slip_deduction_id`, `pay_slip_id`, `deduction_id`, `deduction_amount`, `deduction_regular_id`, `sss_id`, `philhealth_id`, `wtax_id`, `active_deduct`) VALUES ('342', '75', '4', '0.00000', NULL, NULL, NULL, NULL, '0');


#
# TABLE STRUCTURE FOR: pay_slip_earned
#

DROP TABLE IF EXISTS `pay_slip_earned`;

CREATE TABLE `pay_slip_earned` (
  `pay_slip_earned_id` int(11) NOT NULL AUTO_INCREMENT,
  `pay_slip_id` int(11) DEFAULT NULL,
  `deduction_id` int(11) DEFAULT NULL,
  `total_amount_earned` decimal(19,5) DEFAULT '0.00000',
  `deduction_regular_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`pay_slip_earned_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=4915;

#
# TABLE STRUCTURE FOR: pay_slip_loans_adjustments
#

DROP TABLE IF EXISTS `pay_slip_loans_adjustments`;

CREATE TABLE `pay_slip_loans_adjustments` (
  `loans_adjustments_id` int(11) NOT NULL AUTO_INCREMENT,
  `particular` varchar(20) DEFAULT NULL,
  `debit_amount` decimal(11,2) DEFAULT NULL,
  `deduction_regular_id` int(11) DEFAULT NULL,
  `credit_amount` decimal(11,2) DEFAULT NULL,
  `reason` varchar(20) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT NULL,
  `date_created` date NOT NULL DEFAULT '0000-00-00',
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`loans_adjustments_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 PACK_KEYS=0;

#
# TABLE STRUCTURE FOR: pay_slip_other_earnings
#

DROP TABLE IF EXISTS `pay_slip_other_earnings`;

CREATE TABLE `pay_slip_other_earnings` (
  `pay_slip_other_earnings_id` int(11) NOT NULL AUTO_INCREMENT,
  `pay_slip_id` int(11) DEFAULT NULL,
  `earnings_id` int(11) DEFAULT NULL,
  `earnings_amount` decimal(19,5) DEFAULT '0.00000',
  `oe_regular_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`pay_slip_other_earnings_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=4096;

INSERT INTO `pay_slip_other_earnings` (`pay_slip_other_earnings_id`, `pay_slip_id`, `earnings_id`, `earnings_amount`, `oe_regular_id`) VALUES ('21', '66', '3', '1500.00000', '1');
INSERT INTO `pay_slip_other_earnings` (`pay_slip_other_earnings_id`, `pay_slip_id`, `earnings_id`, `earnings_amount`, `oe_regular_id`) VALUES ('22', '66', '3', '500.00000', '2');
INSERT INTO `pay_slip_other_earnings` (`pay_slip_other_earnings_id`, `pay_slip_id`, `earnings_id`, `earnings_amount`, `oe_regular_id`) VALUES ('23', '66', '1', '50.00000', '4');
INSERT INTO `pay_slip_other_earnings` (`pay_slip_other_earnings_id`, `pay_slip_id`, `earnings_id`, `earnings_amount`, `oe_regular_id`) VALUES ('24', '66', '1', '750.00000', '5');
INSERT INTO `pay_slip_other_earnings` (`pay_slip_other_earnings_id`, `pay_slip_id`, `earnings_id`, `earnings_amount`, `oe_regular_id`) VALUES ('25', '66', '2', '500.00000', '6');
INSERT INTO `pay_slip_other_earnings` (`pay_slip_other_earnings_id`, `pay_slip_id`, `earnings_id`, `earnings_amount`, `oe_regular_id`) VALUES ('26', '66', '2', '50.00000', '7');
INSERT INTO `pay_slip_other_earnings` (`pay_slip_other_earnings_id`, `pay_slip_id`, `earnings_id`, `earnings_amount`, `oe_regular_id`) VALUES ('34', '74', '3', '500.00000', '3');


#
# TABLE STRUCTURE FOR: pay_slip_reset
#

DROP TABLE IF EXISTS `pay_slip_reset`;

CREATE TABLE `pay_slip_reset` (
  `pay_slip_reset` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`pay_slip_reset`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 PACK_KEYS=0;

#
# TABLE STRUCTURE FOR: ref_action_taken
#

DROP TABLE IF EXISTS `ref_action_taken`;

CREATE TABLE `ref_action_taken` (
  `ref_action_taken_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `action_taken` varchar(50) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `date_deleted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_by` int(11) NOT NULL,
  PRIMARY KEY (`ref_action_taken_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO `ref_action_taken` (`ref_action_taken_id`, `action_taken`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `date_deleted`, `deleted_by`) VALUES ('1', 'hah', 'hahaha', '0', '1', '2017-03-28 16:50:35', '2017-03-28 17:08:31', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `ref_action_taken` (`ref_action_taken_id`, `action_taken`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `date_deleted`, `deleted_by`) VALUES ('2', 'yeye', 'yeyeye', '0', '1', '0000-00-00 00:00:00', '2017-03-28 17:08:47', '1', '2017-03-28 17:08:49', '0');
INSERT INTO `ref_action_taken` (`ref_action_taken_id`, `action_taken`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `date_deleted`, `deleted_by`) VALUES ('3', 'we', 'we', '1', '1', '2017-03-28 17:09:15', '2017-03-28 17:09:17', '1', '2017-03-28 17:10:33', '1');


#
# TABLE STRUCTURE FOR: ref_branch
#

DROP TABLE IF EXISTS `ref_branch`;

CREATE TABLE `ref_branch` (
  `ref_branch_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `branch` varchar(50) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) unsigned DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `date_deleted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_by` int(11) NOT NULL,
  PRIMARY KEY (`ref_branch_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=8192;

INSERT INTO `ref_branch` (`ref_branch_id`, `branch`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `date_deleted`, `deleted_by`) VALUES ('1', 'EVR-MAIN', 'EVR VET OPTIONS main', '1', NULL, '2015-03-16 10:46:26', '2017-04-18 11:06:25', '0', '0000-00-00 00:00:00', '1');
INSERT INTO `ref_branch` (`ref_branch_id`, `branch`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `date_deleted`, `deleted_by`) VALUES ('2', 'SUPPORT ADMINS', '', '1', '1', '2015-03-16 10:47:52', '2015-04-14 15:06:10', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `ref_branch` (`ref_branch_id`, `branch`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `date_deleted`, `deleted_by`) VALUES ('3', 'EXECUTIVE ADMIN', '', '1', NULL, '2015-03-16 10:47:52', '2017-01-26 18:53:54', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `ref_branch` (`ref_branch_id`, `branch`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `date_deleted`, `deleted_by`) VALUES ('4', 'EVR-DAVAO', 'EVR VET OPTIONS DAVAO', '1', NULL, '2015-03-16 13:51:47', '2017-01-26 18:53:54', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `ref_branch` (`ref_branch_id`, `branch`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `date_deleted`, `deleted_by`) VALUES ('5', 'EVR-CDO', 'EVR VET OPTIONS CAGAYAN DE ORO', '1', NULL, '2015-03-26 10:13:21', '2017-01-26 18:53:54', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `ref_branch` (`ref_branch_id`, `branch`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `date_deleted`, `deleted_by`) VALUES ('6', 'SUPPORT ADMIN', NULL, '1', NULL, '2015-03-26 10:13:21', '2017-01-26 18:53:54', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `ref_branch` (`ref_branch_id`, `branch`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `date_deleted`, `deleted_by`) VALUES ('7', 'EXECUTIVE ADMIN', NULL, '1', NULL, '2015-03-26 10:13:21', '2017-01-26 18:53:54', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `ref_branch` (`ref_branch_id`, `branch`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `date_deleted`, `deleted_by`) VALUES ('8', 'PRODUCTION', NULL, '1', NULL, '2015-03-26 10:13:21', '2017-01-26 18:53:54', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `ref_branch` (`ref_branch_id`, `branch`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `date_deleted`, `deleted_by`) VALUES ('9', 'EVR-CEBU', 'EVR VET OPTIONS CEBU', '1', NULL, '2015-04-14 15:06:37', '2017-01-26 18:53:54', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `ref_branch` (`ref_branch_id`, `branch`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `date_deleted`, `deleted_by`) VALUES ('10', 'ANIMAL WELLNESS-EVR VET OPTIONS', 'ANIMAL WELLNESS CLINIC', '1', '1', '2015-04-17 20:48:26', '2015-04-18 09:14:30', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `ref_branch` (`ref_branch_id`, `branch`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `date_deleted`, `deleted_by`) VALUES ('29', 'APC-DAU - EVR', 'ANGELES PET CARE - Dau', '0', NULL, '2016-11-15 19:17:36', '2017-01-26 18:53:54', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `ref_branch` (`ref_branch_id`, `branch`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `date_deleted`, `deleted_by`) VALUES ('30', 'APC-SUCAT ', 'ANGELES PET CARE - Sucat', '0', NULL, '2016-11-29 21:05:04', '2017-01-26 18:53:54', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `ref_branch` (`ref_branch_id`, `branch`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `date_deleted`, `deleted_by`) VALUES ('31', 'APC-SFP ', 'ANGELES PET CARE San Fernando', '0', NULL, '2016-11-29 21:05:32', '2017-01-26 18:53:54', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `ref_branch` (`ref_branch_id`, `branch`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `date_deleted`, `deleted_by`) VALUES ('32', 'APC-TARLAC ', 'ANGELES PET CARE tarlac', '0', NULL, '2016-11-29 21:05:57', '2017-01-26 18:53:54', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `ref_branch` (`ref_branch_id`, `branch`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `date_deleted`, `deleted_by`) VALUES ('33', 'APC-OLONGAPO ', 'ANGELES PET CARE - Olongapo', '0', NULL, '2016-11-29 21:06:21', '2017-01-26 18:53:54', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `ref_branch` (`ref_branch_id`, `branch`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `date_deleted`, `deleted_by`) VALUES ('34', 'APCC-FRIENDSHIP BRANCH', NULL, '0', NULL, '2017-01-18 03:17:44', '2017-01-26 18:53:54', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `ref_branch` (`ref_branch_id`, `branch`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `date_deleted`, `deleted_by`) VALUES ('35', 'APC SUCAT-EVR', 'ANGELES PET CARE - Sucat', '0', NULL, '2017-02-28 08:26:12', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `ref_branch` (`ref_branch_id`, `branch`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `date_deleted`, `deleted_by`) VALUES ('36', 'APC-SFP-EVR', 'ANGELES PET CARE - San Fernando', '0', NULL, '2017-02-28 08:29:00', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `ref_branch` (`ref_branch_id`, `branch`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `date_deleted`, `deleted_by`) VALUES ('37', 'APC-TARLAC EVR', 'ANGELES PET CARE - Tarlac', '0', NULL, '2017-02-28 08:31:43', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `ref_branch` (`ref_branch_id`, `branch`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `date_deleted`, `deleted_by`) VALUES ('38', 'ANIMAL WELLNESS-ANGELES PET CARE', 'Animal Care Hospital & Wellness Center', '0', NULL, '2017-02-28 08:33:56', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `ref_branch` (`ref_branch_id`, `branch`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `date_deleted`, `deleted_by`) VALUES ('39', 'EVR-FRIENDSHIP', 'ANGELES PET CARE - Friendship', '0', NULL, '2017-02-28 08:36:29', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `ref_branch` (`ref_branch_id`, `branch`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `date_deleted`, `deleted_by`) VALUES ('40', 'APC-FRIENDSHIP ', 'ANGELES PET CARE - friendship', '0', NULL, '2017-02-28 08:36:41', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `ref_branch` (`ref_branch_id`, `branch`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `date_deleted`, `deleted_by`) VALUES ('41', 'APC-TARLAC-dau', 'ANGELES PET CARE - tarlac', '0', NULL, '2017-03-03 07:44:04', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `ref_branch` (`ref_branch_id`, `branch`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `date_deleted`, `deleted_by`) VALUES ('42', 'APC -OLONGAPO -EVR', 'ANGELES PET CARE - Olongapo', '0', NULL, '2017-03-08 03:24:50', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `ref_branch` (`ref_branch_id`, `branch`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `date_deleted`, `deleted_by`) VALUES ('43', 'meow', 'meow', '1', NULL, '2017-03-28 17:17:59', '2017-03-28 17:18:21', '1', '2017-03-28 17:20:56', '1');


#
# TABLE STRUCTURE FOR: ref_certificate
#

DROP TABLE IF EXISTS `ref_certificate`;

CREATE TABLE `ref_certificate` (
  `ref_certificate_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `certificate` varchar(50) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `created_by` int(11) unsigned NOT NULL,
  `modified_by` int(11) unsigned DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `deleted_by` int(11) NOT NULL,
  `date_deleted` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ref_certificate_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# TABLE STRUCTURE FOR: ref_compensation_type
#

DROP TABLE IF EXISTS `ref_compensation_type`;

CREATE TABLE `ref_compensation_type` (
  `ref_compensation_type_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `compensation_type` varchar(50) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `deleted_by` int(11) NOT NULL,
  `date_deleted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ref_compensation_type_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# TABLE STRUCTURE FOR: ref_course_degree
#

DROP TABLE IF EXISTS `ref_course_degree`;

CREATE TABLE `ref_course_degree` (
  `ref_course_degree_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `course_degree` varchar(45) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `date_deleted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_by` int(11) NOT NULL,
  PRIMARY KEY (`ref_course_degree_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=1820;

INSERT INTO `ref_course_degree` (`ref_course_degree_id`, `course_degree`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `date_deleted`, `deleted_by`) VALUES ('1', '[NONE]', '', '1', '0', '2015-03-17 18:03:51', '2017-01-26 18:53:54', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `ref_course_degree` (`ref_course_degree_id`, `course_degree`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `date_deleted`, `deleted_by`) VALUES ('2', 'BS in Accountancy', '', '1', '1', '2015-03-17 18:05:04', '2015-04-14 22:55:08', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `ref_course_degree` (`ref_course_degree_id`, `course_degree`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `date_deleted`, `deleted_by`) VALUES ('3', 'Electrical Engineering', NULL, '1', '0', '2015-03-17 18:05:13', '2017-01-26 18:53:54', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `ref_course_degree` (`ref_course_degree_id`, `course_degree`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `date_deleted`, `deleted_by`) VALUES ('4', 'Industrial Engineering', NULL, '1', '0', '2015-03-17 18:05:13', '2017-01-26 18:53:54', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `ref_course_degree` (`ref_course_degree_id`, `course_degree`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `date_deleted`, `deleted_by`) VALUES ('5', 'Business Management', NULL, '1', '0', '2015-03-17 18:05:13', '2017-01-26 18:53:54', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `ref_course_degree` (`ref_course_degree_id`, `course_degree`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `date_deleted`, `deleted_by`) VALUES ('6', 'Engineering Management', '', '1', '0', '2015-03-17 18:05:13', '2017-01-26 18:53:54', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `ref_course_degree` (`ref_course_degree_id`, `course_degree`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `date_deleted`, `deleted_by`) VALUES ('7', 'Electronics and Communications Engineering', NULL, '1', '0', '2015-03-17 18:05:13', '2017-01-26 18:53:54', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `ref_course_degree` (`ref_course_degree_id`, `course_degree`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `date_deleted`, `deleted_by`) VALUES ('8', 'Information Technology', '', '1', '0', '2015-03-17 18:05:13', '2017-01-26 18:53:54', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `ref_course_degree` (`ref_course_degree_id`, `course_degree`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `date_deleted`, `deleted_by`) VALUES ('9', 'Business Managements', NULL, '1', '1', '2015-03-26 22:05:48', '2015-04-18 05:36:14', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `ref_course_degree` (`ref_course_degree_id`, `course_degree`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `date_deleted`, `deleted_by`) VALUES ('10', 'Information Technology', '', '0', '0', '2016-11-29 06:03:46', '2017-01-26 18:53:54', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `ref_course_degree` (`ref_course_degree_id`, `course_degree`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `date_deleted`, `deleted_by`) VALUES ('11', 'haha', 'haha', '1', '1', '2017-03-28 17:38:19', '2017-03-28 17:39:26', '1', '2017-03-28 17:39:32', '1');


#
# TABLE STRUCTURE FOR: ref_department
#

DROP TABLE IF EXISTS `ref_department`;

CREATE TABLE `ref_department` (
  `ref_department_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `department` varchar(50) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `date_deleted` datetime DEFAULT '0000-00-00 00:00:00',
  `deleted_by` int(11) NOT NULL,
  PRIMARY KEY (`ref_department_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=8192;

INSERT INTO `ref_department` (`ref_department_id`, `department`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `date_deleted`, `deleted_by`) VALUES ('1', 'EVET PERSONNEL', 'EVET PERSONNEL', '1', '0', '2015-03-16 10:51:30', '2017-01-26 18:53:54', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `ref_department` (`ref_department_id`, `department`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `date_deleted`, `deleted_by`) VALUES ('2', 'MIS DEPARTMENT', 'MIS COMPUTER DEPT', '1', '0', '2015-03-16 10:51:44', '2017-01-26 18:53:54', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `ref_department` (`ref_department_id`, `department`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `date_deleted`, `deleted_by`) VALUES ('3', 'PROCUREMENT', 'PROCUREMENT / LOGISTICS', '1', '1', '2015-03-26 10:14:22', '2015-06-08 22:10:50', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `ref_department` (`ref_department_id`, `department`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `date_deleted`, `deleted_by`) VALUES ('4', 'ACCOUNTING ', 'ACCOUNTING DEPARTMENT', '1', '0', '2015-03-26 10:14:22', '2017-01-26 18:53:54', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `ref_department` (`ref_department_id`, `department`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `date_deleted`, `deleted_by`) VALUES ('5', 'SALES AND MARKETING', 'SALES AND MARKETING', '1', '0', '2015-03-26 10:14:23', '2017-01-26 18:53:54', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `ref_department` (`ref_department_id`, `department`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `date_deleted`, `deleted_by`) VALUES ('6', 'EVET DOCTORS', 'EVET DOCTORS', '1', '0', '2015-03-26 10:14:23', '2017-01-26 18:53:54', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `ref_department` (`ref_department_id`, `department`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `date_deleted`, `deleted_by`) VALUES ('7', 'INVENTORY DEPARTMENTS', 'INVENTORY DEPARTMENT', '1', '1', '2015-03-26 10:14:23', '2015-04-11 11:34:41', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `ref_department` (`ref_department_id`, `department`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `date_deleted`, `deleted_by`) VALUES ('8', 'FINANCE DEPARTMENT', 'FINANCE AND ADMIN DEPT', '1', '0', '2015-03-26 14:06:22', '2017-01-26 18:53:54', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `ref_department` (`ref_department_id`, `department`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `date_deleted`, `deleted_by`) VALUES ('9', 'SAMPLE 1', NULL, '1', '1', '2015-03-26 16:21:51', '2015-03-26 17:20:50', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `ref_department` (`ref_department_id`, `department`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `date_deleted`, `deleted_by`) VALUES ('10', 'SAMPLE 3', '', '1', '1', '2015-03-26 16:26:56', '2015-04-10 20:33:20', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `ref_department` (`ref_department_id`, `department`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `date_deleted`, `deleted_by`) VALUES ('11', 'SAMPLES 4', 'Sample 4', '1', '1', '2015-03-26 16:28:15', '2015-04-11 11:39:29', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `ref_department` (`ref_department_id`, `department`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `date_deleted`, `deleted_by`) VALUES ('12', 'HRD', 'HUMAN RESOURCE DEPARTMENT', '1', '1', '2015-03-26 16:32:50', '2015-04-10 20:37:32', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `ref_department` (`ref_department_id`, `department`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `date_deleted`, `deleted_by`) VALUES ('13', 'UTILITY', 'ANY UTILITY DEPT', '1', '0', '2015-04-10 20:36:40', '2017-01-26 18:53:54', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `ref_department` (`ref_department_id`, `department`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `date_deleted`, `deleted_by`) VALUES ('14', 'EVRVETOPTIONS', NULL, '0', '0', '2017-01-18 03:03:30', '2017-01-26 18:53:54', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `ref_department` (`ref_department_id`, `department`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `date_deleted`, `deleted_by`) VALUES ('15', 'ANGELES PET CARE CENTER', NULL, '0', '0', '2017-01-19 01:46:47', '2017-01-26 18:53:54', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `ref_department` (`ref_department_id`, `department`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `date_deleted`, `deleted_by`) VALUES ('16', 'Hospital Administrator', NULL, '0', '0', '2017-01-20 05:51:48', '2017-01-26 18:53:54', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `ref_department` (`ref_department_id`, `department`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `date_deleted`, `deleted_by`) VALUES ('17', 'haha', 'haha', '1', '1', '2017-03-28 17:55:23', '2017-03-28 17:59:15', '1', '2017-03-28 17:59:25', '1');


#
# TABLE STRUCTURE FOR: ref_disciplinary_action_policy
#

DROP TABLE IF EXISTS `ref_disciplinary_action_policy`;

CREATE TABLE `ref_disciplinary_action_policy` (
  `ref_disciplinary_action_policy_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `disciplinary_action_policy` varchar(50) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `date_deleted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_by` int(11) NOT NULL,
  PRIMARY KEY (`ref_disciplinary_action_policy_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO `ref_disciplinary_action_policy` (`ref_disciplinary_action_policy_id`, `disciplinary_action_policy`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `date_deleted`, `deleted_by`) VALUES ('1', 'haha', 'haha', '0', '0', '2017-03-28 16:50:30', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `ref_disciplinary_action_policy` (`ref_disciplinary_action_policy_id`, `disciplinary_action_policy`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `date_deleted`, `deleted_by`) VALUES ('2', 'haha', 'haha', '1', '1', '2017-03-29 09:08:04', '2017-03-29 09:08:14', '1', '2017-03-29 09:08:22', '1');
INSERT INTO `ref_disciplinary_action_policy` (`ref_disciplinary_action_policy_id`, `disciplinary_action_policy`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `date_deleted`, `deleted_by`) VALUES ('3', 'test', 'test', '1', '0', '2017-03-29 09:08:34', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', '0');


#
# TABLE STRUCTURE FOR: ref_employment_status
#

DROP TABLE IF EXISTS `ref_employment_status`;

CREATE TABLE `ref_employment_status` (
  `ref_employment_status_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `employment_status` varchar(50) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `created_by_user_id` int(11) unsigned NOT NULL,
  `modified_by_user_id` int(11) unsigned DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ref_employment_status_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# TABLE STRUCTURE FOR: ref_employment_type
#

DROP TABLE IF EXISTS `ref_employment_type`;

CREATE TABLE `ref_employment_type` (
  `ref_employment_type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `employment_type` varchar(50) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `date_deleted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_by` int(11) NOT NULL,
  PRIMARY KEY (`ref_employment_type_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=3276;

INSERT INTO `ref_employment_type` (`ref_employment_type_id`, `employment_type`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `date_deleted`, `deleted_by`) VALUES ('1', 'Probationary', NULL, '1', '0', '2015-06-10 08:27:11', '2017-01-26 18:53:54', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `ref_employment_type` (`ref_employment_type_id`, `employment_type`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `date_deleted`, `deleted_by`) VALUES ('2', 'Regular', NULL, '1', '0', '2015-06-10 08:27:11', '2017-01-26 18:53:54', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `ref_employment_type` (`ref_employment_type_id`, `employment_type`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `date_deleted`, `deleted_by`) VALUES ('3', 'Trainee', NULL, '1', '0', '2015-06-10 08:27:11', '2017-01-26 18:53:54', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `ref_employment_type` (`ref_employment_type_id`, `employment_type`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `date_deleted`, `deleted_by`) VALUES ('4', 'Casual', NULL, '1', '0', '2015-06-10 08:27:11', '2017-01-26 18:53:54', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `ref_employment_type` (`ref_employment_type_id`, `employment_type`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `date_deleted`, `deleted_by`) VALUES ('5', 'Consultant/Contractual', NULL, '1', '0', '2015-06-10 08:27:11', '2017-01-26 18:53:54', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `ref_employment_type` (`ref_employment_type_id`, `employment_type`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `date_deleted`, `deleted_by`) VALUES ('6', 'RESIGNED', NULL, '0', '0', '2017-03-14 07:35:41', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', '0');


#
# TABLE STRUCTURE FOR: ref_leave_type
#

DROP TABLE IF EXISTS `ref_leave_type`;

CREATE TABLE `ref_leave_type` (
  `ref_leave_type_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `leave_type` varchar(100) NOT NULL,
  `leave_type_short_name` varchar(100) DEFAULT NULL,
  `is_forwardable` tinyint(2) NOT NULL DEFAULT '1',
  `is_payable` tinyint(2) NOT NULL DEFAULT '1',
  `total_grant` int(11) unsigned NOT NULL DEFAULT '0',
  `description` varchar(500) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_by` int(11) NOT NULL,
  `date_deleted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ref_leave_type_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=5461;

INSERT INTO `ref_leave_type` (`ref_leave_type_id`, `leave_type`, `leave_type_short_name`, `is_forwardable`, `is_payable`, `total_grant`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `deleted_by`, `date_deleted`) VALUES ('24', 'SICK', 'SC', '1', '0', '5', 'SICK LEAVE', '1', '1', '2016-09-30 07:43:19', '2017-01-26 18:53:54', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `ref_leave_type` (`ref_leave_type_id`, `leave_type`, `leave_type_short_name`, `is_forwardable`, `is_payable`, `total_grant`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `deleted_by`, `date_deleted`) VALUES ('25', 'MATERNITY', 'MT', '1', '0', '2', 'MATERNITY', '1', '1', '2016-09-30 07:43:41', '2017-01-26 18:53:54', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `ref_leave_type` (`ref_leave_type_id`, `leave_type`, `leave_type_short_name`, `is_forwardable`, `is_payable`, `total_grant`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `deleted_by`, `date_deleted`) VALUES ('33', 'VACATION LEAVE', 'VL', '0', '0', '0', '0', '1', '0', '2016-11-22 06:46:12', '2017-01-26 18:53:54', '0', '0', '0000-00-00 00:00:00');


#
# TABLE STRUCTURE FOR: ref_payment_type
#

DROP TABLE IF EXISTS `ref_payment_type`;

CREATE TABLE `ref_payment_type` (
  `ref_payment_type_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `payment_type` varchar(50) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `col1_percent` decimal(19,2) DEFAULT '0.00',
  `col1_amount` decimal(19,2) DEFAULT '0.00',
  `col2_percent` decimal(19,2) DEFAULT '0.00',
  `col2_amount` decimal(19,2) DEFAULT '0.00',
  `col3_percent` decimal(19,2) DEFAULT '0.00',
  `col3_amount` decimal(19,2) DEFAULT '0.00',
  `col4_percent` decimal(19,2) DEFAULT '0.00',
  `col4_amount` decimal(19,2) DEFAULT '0.00',
  `col5_percent` decimal(19,2) DEFAULT '0.00',
  `col5_amount` decimal(19,2) DEFAULT '0.00',
  `col6_percent` decimal(19,2) DEFAULT '0.00',
  `col6_amount` decimal(19,2) DEFAULT '0.00',
  `col7_percent` decimal(19,2) DEFAULT '0.00',
  `col7_amount` decimal(19,2) DEFAULT '0.00',
  `col8_percent` decimal(19,2) DEFAULT '0.00',
  `col8_amount` decimal(19,2) DEFAULT '0.00',
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pay_type_factor` decimal(11,2) NOT NULL,
  `date_deleted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_by` int(11) NOT NULL,
  PRIMARY KEY (`ref_payment_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=5461;

INSERT INTO `ref_payment_type` (`ref_payment_type_id`, `payment_type`, `description`, `col1_percent`, `col1_amount`, `col2_percent`, `col2_amount`, `col3_percent`, `col3_amount`, `col4_percent`, `col4_amount`, `col5_percent`, `col5_amount`, `col6_percent`, `col6_amount`, `col7_percent`, `col7_amount`, `col8_percent`, `col8_amount`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `pay_type_factor`, `date_deleted`, `deleted_by`) VALUES ('1', 'Semi Monthly', '', '0.00', '0.00', '0.05', '0.00', '0.10', '20.83', '0.15', '104.17', '0.20', '354.17', '0.25', '937.50', '0.30', '2083.33', '0.32', '5208.33', '0', '0', '2016-10-06 10:14:12', '2017-01-26 18:53:54', '0', '13.09', '0000-00-00 00:00:00', '0');
INSERT INTO `ref_payment_type` (`ref_payment_type_id`, `payment_type`, `description`, `col1_percent`, `col1_amount`, `col2_percent`, `col2_amount`, `col3_percent`, `col3_amount`, `col4_percent`, `col4_amount`, `col5_percent`, `col5_amount`, `col6_percent`, `col6_amount`, `col7_percent`, `col7_amount`, `col8_percent`, `col8_amount`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `pay_type_factor`, `date_deleted`, `deleted_by`) VALUES ('2', 'Monthly', '', '0.00', '0.00', '0.05', '0.00', '0.10', '41.67', '0.15', '208.33', '0.20', '708.33', '0.25', '1875.00', '0.30', '4166.67', '0.32', '10416.67', '0', '0', '2016-10-06 10:14:00', '2017-01-26 18:53:54', '0', '26.17', '0000-00-00 00:00:00', '0');
INSERT INTO `ref_payment_type` (`ref_payment_type_id`, `payment_type`, `description`, `col1_percent`, `col1_amount`, `col2_percent`, `col2_amount`, `col3_percent`, `col3_amount`, `col4_percent`, `col4_amount`, `col5_percent`, `col5_amount`, `col6_percent`, `col6_amount`, `col7_percent`, `col7_amount`, `col8_percent`, `col8_amount`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `pay_type_factor`, `date_deleted`, `deleted_by`) VALUES ('3', 'Daily', '', '0.00', '0.00', '0.05', '0.00', '0.10', '1.65', '0.15', '8.25', '0.20', '28.05', '0.25', '74.28', '0.30', '165.02', '0.32', '412.54', '0', '0', '2016-10-06 10:14:18', '2017-01-26 18:53:54', '0', '1.00', '0000-00-00 00:00:00', '0');


#
# TABLE STRUCTURE FOR: ref_philhealth_contribution
#

DROP TABLE IF EXISTS `ref_philhealth_contribution`;

CREATE TABLE `ref_philhealth_contribution` (
  `ref_philhealth_contribution_id` int(11) NOT NULL,
  `salary_range_from` decimal(19,2) NOT NULL,
  `salary_range_to` decimal(19,2) NOT NULL,
  `employee` decimal(19,2) NOT NULL,
  `employer` decimal(19,2) NOT NULL,
  `total` decimal(19,2) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_deleted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `deleted_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=585;

INSERT INTO `ref_philhealth_contribution` (`ref_philhealth_contribution_id`, `salary_range_from`, `salary_range_to`, `employee`, `employer`, `total`, `is_deleted`, `status`, `date_created`, `date_modified`, `date_deleted`, `created_by`, `modified_by`, `deleted_by`) VALUES ('1', '0.00', '8999.99', '100.00', '100.00', '200.00', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '0', '0');
INSERT INTO `ref_philhealth_contribution` (`ref_philhealth_contribution_id`, `salary_range_from`, `salary_range_to`, `employee`, `employer`, `total`, `is_deleted`, `status`, `date_created`, `date_modified`, `date_deleted`, `created_by`, `modified_by`, `deleted_by`) VALUES ('2', '9000.00', '9999.99', '112.50', '112.50', '225.00', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '0', '0');
INSERT INTO `ref_philhealth_contribution` (`ref_philhealth_contribution_id`, `salary_range_from`, `salary_range_to`, `employee`, `employer`, `total`, `is_deleted`, `status`, `date_created`, `date_modified`, `date_deleted`, `created_by`, `modified_by`, `deleted_by`) VALUES ('3', '10000.00', '10999.99', '125.00', '125.00', '250.00', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '0', '0');
INSERT INTO `ref_philhealth_contribution` (`ref_philhealth_contribution_id`, `salary_range_from`, `salary_range_to`, `employee`, `employer`, `total`, `is_deleted`, `status`, `date_created`, `date_modified`, `date_deleted`, `created_by`, `modified_by`, `deleted_by`) VALUES ('4', '11000.00', '11999.99', '137.50', '137.50', '275.00', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '0', '0');
INSERT INTO `ref_philhealth_contribution` (`ref_philhealth_contribution_id`, `salary_range_from`, `salary_range_to`, `employee`, `employer`, `total`, `is_deleted`, `status`, `date_created`, `date_modified`, `date_deleted`, `created_by`, `modified_by`, `deleted_by`) VALUES ('5', '12000.00', '12999.99', '150.00', '150.00', '300.00', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '0', '0');
INSERT INTO `ref_philhealth_contribution` (`ref_philhealth_contribution_id`, `salary_range_from`, `salary_range_to`, `employee`, `employer`, `total`, `is_deleted`, `status`, `date_created`, `date_modified`, `date_deleted`, `created_by`, `modified_by`, `deleted_by`) VALUES ('6', '13000.00', '13999.99', '162.50', '162.50', '325.00', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '0', '0');
INSERT INTO `ref_philhealth_contribution` (`ref_philhealth_contribution_id`, `salary_range_from`, `salary_range_to`, `employee`, `employer`, `total`, `is_deleted`, `status`, `date_created`, `date_modified`, `date_deleted`, `created_by`, `modified_by`, `deleted_by`) VALUES ('7', '14000.00', '14999.99', '175.00', '175.00', '350.00', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '0', '0');
INSERT INTO `ref_philhealth_contribution` (`ref_philhealth_contribution_id`, `salary_range_from`, `salary_range_to`, `employee`, `employer`, `total`, `is_deleted`, `status`, `date_created`, `date_modified`, `date_deleted`, `created_by`, `modified_by`, `deleted_by`) VALUES ('8', '15000.00', '15999.99', '187.50', '187.50', '375.00', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '0', '0');
INSERT INTO `ref_philhealth_contribution` (`ref_philhealth_contribution_id`, `salary_range_from`, `salary_range_to`, `employee`, `employer`, `total`, `is_deleted`, `status`, `date_created`, `date_modified`, `date_deleted`, `created_by`, `modified_by`, `deleted_by`) VALUES ('9', '16000.00', '16999.99', '200.00', '200.00', '400.00', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '0', '0');
INSERT INTO `ref_philhealth_contribution` (`ref_philhealth_contribution_id`, `salary_range_from`, `salary_range_to`, `employee`, `employer`, `total`, `is_deleted`, `status`, `date_created`, `date_modified`, `date_deleted`, `created_by`, `modified_by`, `deleted_by`) VALUES ('10', '17000.00', '17999.99', '212.50', '212.50', '425.00', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '0', '0');
INSERT INTO `ref_philhealth_contribution` (`ref_philhealth_contribution_id`, `salary_range_from`, `salary_range_to`, `employee`, `employer`, `total`, `is_deleted`, `status`, `date_created`, `date_modified`, `date_deleted`, `created_by`, `modified_by`, `deleted_by`) VALUES ('11', '18000.00', '18999.99', '225.00', '225.00', '450.00', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '0', '0');
INSERT INTO `ref_philhealth_contribution` (`ref_philhealth_contribution_id`, `salary_range_from`, `salary_range_to`, `employee`, `employer`, `total`, `is_deleted`, `status`, `date_created`, `date_modified`, `date_deleted`, `created_by`, `modified_by`, `deleted_by`) VALUES ('12', '19000.00', '19999.99', '237.50', '237.50', '475.00', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '0', '0');
INSERT INTO `ref_philhealth_contribution` (`ref_philhealth_contribution_id`, `salary_range_from`, `salary_range_to`, `employee`, `employer`, `total`, `is_deleted`, `status`, `date_created`, `date_modified`, `date_deleted`, `created_by`, `modified_by`, `deleted_by`) VALUES ('13', '20000.00', '20999.99', '250.00', '250.00', '500.00', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '0', '0');
INSERT INTO `ref_philhealth_contribution` (`ref_philhealth_contribution_id`, `salary_range_from`, `salary_range_to`, `employee`, `employer`, `total`, `is_deleted`, `status`, `date_created`, `date_modified`, `date_deleted`, `created_by`, `modified_by`, `deleted_by`) VALUES ('14', '21000.00', '21999.99', '262.50', '262.50', '525.00', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '0', '0');
INSERT INTO `ref_philhealth_contribution` (`ref_philhealth_contribution_id`, `salary_range_from`, `salary_range_to`, `employee`, `employer`, `total`, `is_deleted`, `status`, `date_created`, `date_modified`, `date_deleted`, `created_by`, `modified_by`, `deleted_by`) VALUES ('15', '22000.00', '22999.99', '275.00', '275.00', '550.00', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '0', '0');
INSERT INTO `ref_philhealth_contribution` (`ref_philhealth_contribution_id`, `salary_range_from`, `salary_range_to`, `employee`, `employer`, `total`, `is_deleted`, `status`, `date_created`, `date_modified`, `date_deleted`, `created_by`, `modified_by`, `deleted_by`) VALUES ('16', '23000.00', '23999.99', '287.50', '287.50', '575.00', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '0', '0');
INSERT INTO `ref_philhealth_contribution` (`ref_philhealth_contribution_id`, `salary_range_from`, `salary_range_to`, `employee`, `employer`, `total`, `is_deleted`, `status`, `date_created`, `date_modified`, `date_deleted`, `created_by`, `modified_by`, `deleted_by`) VALUES ('17', '24000.00', '24999.99', '300.00', '300.00', '600.00', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '0', '0');
INSERT INTO `ref_philhealth_contribution` (`ref_philhealth_contribution_id`, `salary_range_from`, `salary_range_to`, `employee`, `employer`, `total`, `is_deleted`, `status`, `date_created`, `date_modified`, `date_deleted`, `created_by`, `modified_by`, `deleted_by`) VALUES ('18', '25000.00', '25999.99', '312.50', '312.50', '625.00', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '0', '0');
INSERT INTO `ref_philhealth_contribution` (`ref_philhealth_contribution_id`, `salary_range_from`, `salary_range_to`, `employee`, `employer`, `total`, `is_deleted`, `status`, `date_created`, `date_modified`, `date_deleted`, `created_by`, `modified_by`, `deleted_by`) VALUES ('19', '26000.00', '26999.99', '325.00', '325.00', '650.00', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '0', '0');
INSERT INTO `ref_philhealth_contribution` (`ref_philhealth_contribution_id`, `salary_range_from`, `salary_range_to`, `employee`, `employer`, `total`, `is_deleted`, `status`, `date_created`, `date_modified`, `date_deleted`, `created_by`, `modified_by`, `deleted_by`) VALUES ('20', '27000.00', '27999.99', '337.50', '337.50', '675.00', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '0', '0');
INSERT INTO `ref_philhealth_contribution` (`ref_philhealth_contribution_id`, `salary_range_from`, `salary_range_to`, `employee`, `employer`, `total`, `is_deleted`, `status`, `date_created`, `date_modified`, `date_deleted`, `created_by`, `modified_by`, `deleted_by`) VALUES ('21', '28000.00', '28999.99', '350.00', '350.00', '700.00', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '0', '0');
INSERT INTO `ref_philhealth_contribution` (`ref_philhealth_contribution_id`, `salary_range_from`, `salary_range_to`, `employee`, `employer`, `total`, `is_deleted`, `status`, `date_created`, `date_modified`, `date_deleted`, `created_by`, `modified_by`, `deleted_by`) VALUES ('22', '29000.00', '29999.99', '362.50', '362.50', '725.00', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '0', '0');
INSERT INTO `ref_philhealth_contribution` (`ref_philhealth_contribution_id`, `salary_range_from`, `salary_range_to`, `employee`, `employer`, `total`, `is_deleted`, `status`, `date_created`, `date_modified`, `date_deleted`, `created_by`, `modified_by`, `deleted_by`) VALUES ('23', '30000.00', '30999.99', '375.00', '375.00', '750.00', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '0', '0');
INSERT INTO `ref_philhealth_contribution` (`ref_philhealth_contribution_id`, `salary_range_from`, `salary_range_to`, `employee`, `employer`, `total`, `is_deleted`, `status`, `date_created`, `date_modified`, `date_deleted`, `created_by`, `modified_by`, `deleted_by`) VALUES ('24', '31000.00', '31999.99', '387.50', '387.50', '775.00', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '0', '0');
INSERT INTO `ref_philhealth_contribution` (`ref_philhealth_contribution_id`, `salary_range_from`, `salary_range_to`, `employee`, `employer`, `total`, `is_deleted`, `status`, `date_created`, `date_modified`, `date_deleted`, `created_by`, `modified_by`, `deleted_by`) VALUES ('25', '32000.00', '32999.99', '400.00', '400.00', '800.00', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '0', '0');
INSERT INTO `ref_philhealth_contribution` (`ref_philhealth_contribution_id`, `salary_range_from`, `salary_range_to`, `employee`, `employer`, `total`, `is_deleted`, `status`, `date_created`, `date_modified`, `date_deleted`, `created_by`, `modified_by`, `deleted_by`) VALUES ('26', '33000.00', '33999.99', '412.50', '412.50', '825.00', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '0', '0');
INSERT INTO `ref_philhealth_contribution` (`ref_philhealth_contribution_id`, `salary_range_from`, `salary_range_to`, `employee`, `employer`, `total`, `is_deleted`, `status`, `date_created`, `date_modified`, `date_deleted`, `created_by`, `modified_by`, `deleted_by`) VALUES ('27', '34000.00', '34999.99', '425.00', '425.00', '850.00', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '0', '0');
INSERT INTO `ref_philhealth_contribution` (`ref_philhealth_contribution_id`, `salary_range_from`, `salary_range_to`, `employee`, `employer`, `total`, `is_deleted`, `status`, `date_created`, `date_modified`, `date_deleted`, `created_by`, `modified_by`, `deleted_by`) VALUES ('28', '35000.00', '9999999.00', '437.50', '437.50', '875.00', '0', '0', '0000-00-00 00:00:00', '2017-03-29 09:53:08', '0000-00-00 00:00:00', '0', '1', '0');
INSERT INTO `ref_philhealth_contribution` (`ref_philhealth_contribution_id`, `salary_range_from`, `salary_range_to`, `employee`, `employer`, `total`, `is_deleted`, `status`, `date_created`, `date_modified`, `date_deleted`, `created_by`, `modified_by`, `deleted_by`) VALUES ('0', '4567890.00', '3456789.00', '34567890.00', '34567890.00', '69135780.00', '1', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2017-03-29 15:17:55', '0', '0', '1');
INSERT INTO `ref_philhealth_contribution` (`ref_philhealth_contribution_id`, `salary_range_from`, `salary_range_to`, `employee`, `employer`, `total`, `is_deleted`, `status`, `date_created`, `date_modified`, `date_deleted`, `created_by`, `modified_by`, `deleted_by`) VALUES ('0', '100000.00', '200000.00', '10.00', '100.00', '110.00', '1', '0', '2017-03-29 15:17:42', '0000-00-00 00:00:00', '2017-03-29 15:17:55', '1', '0', '1');


#
# TABLE STRUCTURE FOR: ref_position
#

DROP TABLE IF EXISTS `ref_position`;

CREATE TABLE `ref_position` (
  `ref_position_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `position` varchar(50) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `deleted_by` int(11) NOT NULL,
  `date_deleted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ref_position_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=712;

INSERT INTO `ref_position` (`ref_position_id`, `position`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `deleted_by`, `date_deleted`) VALUES ('1', 'Finance Analyst', '', '1', '0', '2015-03-16 23:09:48', '2017-01-26 18:53:54', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `ref_position` (`ref_position_id`, `position`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `deleted_by`, `date_deleted`) VALUES ('2', 'Accounting Clerk', '', '1', '1', '2015-03-26 18:12:15', '2015-04-29 06:54:37', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `ref_position` (`ref_position_id`, `position`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `deleted_by`, `date_deleted`) VALUES ('3', 'Clinic Assistant', '', '1', '0', '2015-03-26 18:12:15', '2017-01-26 18:53:54', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `ref_position` (`ref_position_id`, `position`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `deleted_by`, `date_deleted`) VALUES ('4', 'Veterinary Representative', '', '1', '0', '2015-03-26 18:12:15', '2017-01-26 18:53:54', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `ref_position` (`ref_position_id`, `position`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `deleted_by`, `date_deleted`) VALUES ('5', 'Front Desk Clerk', '', '1', '0', '2015-03-26 18:12:15', '2017-01-26 18:53:54', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `ref_position` (`ref_position_id`, `position`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `deleted_by`, `date_deleted`) VALUES ('6', 'Company Driver', '', '1', '0', '2015-03-26 18:12:15', '2017-01-26 18:53:54', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `ref_position` (`ref_position_id`, `position`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `deleted_by`, `date_deleted`) VALUES ('7', 'Cashier', '', '1', '0', '2015-03-26 18:12:15', '2017-01-26 18:53:54', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `ref_position` (`ref_position_id`, `position`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `deleted_by`, `date_deleted`) VALUES ('8', 'HR Assistant', '', '1', '0', '2015-03-26 18:12:15', '2017-01-26 18:53:54', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `ref_position` (`ref_position_id`, `position`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `deleted_by`, `date_deleted`) VALUES ('9', 'Payroll Officer', '', '1', '0', '2015-03-26 18:12:15', '2017-01-26 18:53:54', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `ref_position` (`ref_position_id`, `position`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `deleted_by`, `date_deleted`) VALUES ('10', 'HR Manager', '', '1', '0', '2015-03-26 18:12:15', '2017-01-26 18:53:54', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `ref_position` (`ref_position_id`, `position`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `deleted_by`, `date_deleted`) VALUES ('11', 'LOGISTIC OFFICER', NULL, '1', '0', '2015-03-26 18:12:15', '2017-01-26 18:53:54', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `ref_position` (`ref_position_id`, `position`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `deleted_by`, `date_deleted`) VALUES ('12', 'PERSONNEL ASST/ RECEPTIONIST', NULL, '1', '0', '2015-03-26 18:12:15', '2017-01-26 18:53:54', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `ref_position` (`ref_position_id`, `position`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `deleted_by`, `date_deleted`) VALUES ('13', 'STAFFS', NULL, '1', '1', '2015-03-26 18:12:16', '2015-04-29 06:47:54', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `ref_position` (`ref_position_id`, `position`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `deleted_by`, `date_deleted`) VALUES ('14', 'SUPERVISOR', NULL, '1', '0', '2015-03-26 18:12:16', '2017-01-26 18:53:54', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `ref_position` (`ref_position_id`, `position`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `deleted_by`, `date_deleted`) VALUES ('15', 'UTILITYMAN', NULL, '1', '0', '2015-03-26 18:12:16', '2017-01-26 18:53:54', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `ref_position` (`ref_position_id`, `position`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `deleted_by`, `date_deleted`) VALUES ('16', 'WAREHOUSEMAN', NULL, '1', '0', '2015-03-26 18:12:16', '2017-01-26 18:53:54', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `ref_position` (`ref_position_id`, `position`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `deleted_by`, `date_deleted`) VALUES ('19', 'R&DS', NULL, '1', '1', '2015-03-26 22:07:34', '2015-04-18 06:06:41', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `ref_position` (`ref_position_id`, `position`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `deleted_by`, `date_deleted`) VALUES ('20', 'MIRUNS', NULL, '1', '1', '2015-04-18 06:23:24', '2015-04-18 17:10:58', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `ref_position` (`ref_position_id`, `position`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `deleted_by`, `date_deleted`) VALUES ('30', 'Web Developer', 'web developer', '0', '0', '2016-09-28 04:06:36', '2017-01-26 18:53:54', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `ref_position` (`ref_position_id`, `position`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `deleted_by`, `date_deleted`) VALUES ('32', 'Scientist', NULL, '0', '0', '2016-12-05 04:09:46', '2017-01-26 18:53:54', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `ref_position` (`ref_position_id`, `position`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `deleted_by`, `date_deleted`) VALUES ('33', 'Speedster', NULL, '0', '0', '2016-12-05 05:55:30', '2017-01-26 18:53:54', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `ref_position` (`ref_position_id`, `position`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `deleted_by`, `date_deleted`) VALUES ('34', 'TECHNICAL SUPPORT', NULL, '0', '0', '2016-12-06 04:16:06', '2017-01-26 18:53:54', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `ref_position` (`ref_position_id`, `position`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `deleted_by`, `date_deleted`) VALUES ('35', 'Junior Web Developer', NULL, '0', '0', '2016-12-06 04:31:44', '2017-01-26 18:53:54', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `ref_position` (`ref_position_id`, `position`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `deleted_by`, `date_deleted`) VALUES ('36', 'Resident Veterinarian', NULL, '0', '0', '2017-01-18 03:16:48', '2017-01-26 18:53:54', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `ref_position` (`ref_position_id`, `position`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `deleted_by`, `date_deleted`) VALUES ('37', 'AUDITOR', NULL, '0', '0', '2017-01-19 02:21:48', '2017-01-26 18:53:54', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `ref_position` (`ref_position_id`, `position`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `deleted_by`, `date_deleted`) VALUES ('38', 'PURCHASER', NULL, '0', '0', '2017-01-19 02:29:15', '2017-01-26 18:53:54', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `ref_position` (`ref_position_id`, `position`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `deleted_by`, `date_deleted`) VALUES ('39', 'MAINTENANCE OFFICER', NULL, '0', '0', '2017-01-19 02:47:47', '2017-01-26 18:53:54', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `ref_position` (`ref_position_id`, `position`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `deleted_by`, `date_deleted`) VALUES ('40', 'Head Veterinarian', NULL, '0', '0', '2017-01-19 03:02:00', '2017-01-26 18:53:54', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `ref_position` (`ref_position_id`, `position`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `deleted_by`, `date_deleted`) VALUES ('41', 'AR Associate', NULL, '0', '0', '2017-01-19 03:07:49', '2017-01-26 18:53:54', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `ref_position` (`ref_position_id`, `position`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `deleted_by`, `date_deleted`) VALUES ('42', 'Warehouse Incharge', NULL, '0', '0', '2017-01-19 03:12:19', '2017-01-26 18:53:54', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `ref_position` (`ref_position_id`, `position`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `deleted_by`, `date_deleted`) VALUES ('43', 'Warehouse Assistant', NULL, '0', '0', '2017-01-19 03:24:27', '2017-01-26 18:53:54', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `ref_position` (`ref_position_id`, `position`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `deleted_by`, `date_deleted`) VALUES ('44', 'Vismin Supervisor', NULL, '0', '0', '2017-01-19 03:43:17', '2017-01-26 18:53:54', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `ref_position` (`ref_position_id`, `position`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `deleted_by`, `date_deleted`) VALUES ('45', 'Stockroom Custodian', NULL, '0', '0', '2017-01-19 04:04:52', '2017-01-26 18:53:54', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `ref_position` (`ref_position_id`, `position`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `deleted_by`, `date_deleted`) VALUES ('46', 'Service Vehicle Incharge', NULL, '0', '0', '2017-01-19 09:17:52', '2017-01-26 18:53:54', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `ref_position` (`ref_position_id`, `position`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `deleted_by`, `date_deleted`) VALUES ('47', 'Accounting Head', NULL, '0', '0', '2017-01-19 09:32:19', '2017-01-26 18:53:54', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `ref_position` (`ref_position_id`, `position`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `deleted_by`, `date_deleted`) VALUES ('48', 'Hospital Administrator', NULL, '0', '0', '2017-01-20 05:53:04', '2017-01-26 18:53:54', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `ref_position` (`ref_position_id`, `position`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `deleted_by`, `date_deleted`) VALUES ('49', 'Liason Office/Tinang Administrator', NULL, '0', '0', '2017-02-24 04:29:23', '0000-00-00 00:00:00', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `ref_position` (`ref_position_id`, `position`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `deleted_by`, `date_deleted`) VALUES ('50', 'President', NULL, '0', '0', '2017-03-07 05:44:29', '0000-00-00 00:00:00', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `ref_position` (`ref_position_id`, `position`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `deleted_by`, `date_deleted`) VALUES ('51', 'President', NULL, '0', '0', '2017-03-07 05:45:36', '0000-00-00 00:00:00', '0', '0', '0000-00-00 00:00:00');


#
# TABLE STRUCTURE FOR: ref_relationship
#

DROP TABLE IF EXISTS `ref_relationship`;

CREATE TABLE `ref_relationship` (
  `ref_relationship_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `relationship` varchar(100) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_by` int(11) NOT NULL,
  `date_deleted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ref_relationship_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=1820;

INSERT INTO `ref_relationship` (`ref_relationship_id`, `relationship`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `deleted_by`, `date_deleted`) VALUES ('1', 'Father', 'Head of Family', '0', '0', '2017-03-28 15:20:36', '0000-00-00 00:00:00', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `ref_relationship` (`ref_relationship_id`, `relationship`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `deleted_by`, `date_deleted`) VALUES ('2', 'Son', 'Son', '0', '0', '2017-03-28 15:27:51', '0000-00-00 00:00:00', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `ref_relationship` (`ref_relationship_id`, `relationship`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `deleted_by`, `date_deleted`) VALUES ('3', 'Mother', 'Mother', '0', '0', '2017-03-28 15:36:40', '0000-00-00 00:00:00', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `ref_relationship` (`ref_relationship_id`, `relationship`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `deleted_by`, `date_deleted`) VALUES ('4', 'test', '', '1', '1', '2017-03-29 09:59:19', '2017-03-29 09:59:22', '1', '1', '2017-03-29 09:59:24');


#
# TABLE STRUCTURE FOR: ref_religion
#

DROP TABLE IF EXISTS `ref_religion`;

CREATE TABLE `ref_religion` (
  `ref_religion_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `religion` varchar(50) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `deleted_by` int(11) NOT NULL,
  `date_deleted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ref_religion_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=2730;

INSERT INTO `ref_religion` (`ref_religion_id`, `religion`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `deleted_by`, `date_deleted`) VALUES ('1', 'Roman Catholic', '', '1', '1', '2015-03-16 23:10:02', '2015-05-10 11:41:17', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `ref_religion` (`ref_religion_id`, `religion`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `deleted_by`, `date_deleted`) VALUES ('2', 'Protestant', NULL, '1', '0', '2015-03-26 18:23:42', '2017-01-26 18:53:54', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `ref_religion` (`ref_religion_id`, `religion`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `deleted_by`, `date_deleted`) VALUES ('3', 'INC', 'Iglesia Ni Cristo', '1', '1', '2015-03-26 18:23:42', '2015-04-18 03:51:01', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `ref_religion` (`ref_religion_id`, `religion`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `deleted_by`, `date_deleted`) VALUES ('4', 'Baptist', NULL, '1', '0', '2015-03-26 18:23:42', '2017-01-26 18:53:54', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `ref_religion` (`ref_religion_id`, `religion`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `deleted_by`, `date_deleted`) VALUES ('5', 'Born-Again', NULL, '1', '0', '2015-03-26 18:23:42', '2017-01-26 18:53:54', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `ref_religion` (`ref_religion_id`, `religion`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `deleted_by`, `date_deleted`) VALUES ('6', 'Jehovah\'s Witness', NULL, '1', '0', '2015-03-26 18:23:42', '2017-01-26 18:53:54', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `ref_religion` (`ref_religion_id`, `religion`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `deleted_by`, `date_deleted`) VALUES ('7', 'EVANGELICAL CHRISTIAN', 'EVANGELICAL CHRISTIAN', '0', '0', '2017-02-28 06:52:24', '0000-00-00 00:00:00', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `ref_religion` (`ref_religion_id`, `religion`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `deleted_by`, `date_deleted`) VALUES ('8', 'test', '', '1', '1', '2017-03-29 10:02:22', '2017-03-29 10:02:24', '1', '1', '2017-03-29 10:02:26');


#
# TABLE STRUCTURE FOR: ref_section
#

DROP TABLE IF EXISTS `ref_section`;

CREATE TABLE `ref_section` (
  `ref_section_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(50) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `date_deleted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_by` int(11) NOT NULL,
  PRIMARY KEY (`ref_section_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=1092;

INSERT INTO `ref_section` (`ref_section_id`, `section`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `date_deleted`, `deleted_by`) VALUES ('1', '[NONE]', '', '1', '0', '2015-03-16 15:10:18', '2017-01-26 18:53:54', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `ref_section` (`ref_section_id`, `section`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `date_deleted`, `deleted_by`) VALUES ('2', 'PURCHASING', NULL, '1', '0', '2015-03-26 10:16:08', '2017-01-26 18:53:54', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `ref_section` (`ref_section_id`, `section`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `date_deleted`, `deleted_by`) VALUES ('3', 'FINANCE', NULL, '1', '0', '2015-03-26 10:16:08', '2017-01-26 18:53:54', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `ref_section` (`ref_section_id`, `section`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `date_deleted`, `deleted_by`) VALUES ('4', 'MARKETING', '', '1', '0', '2015-03-26 10:16:08', '2017-01-26 18:53:54', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `ref_section` (`ref_section_id`, `section`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `date_deleted`, `deleted_by`) VALUES ('5', 'DELIVERY MAN', NULL, '1', '1', '2015-03-26 10:16:08', '2015-04-11 22:16:29', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `ref_section` (`ref_section_id`, `section`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `date_deleted`, `deleted_by`) VALUES ('6', 'ENGINEERING', NULL, '1', '0', '2015-03-26 10:16:08', '2017-01-26 18:53:54', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `ref_section` (`ref_section_id`, `section`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `date_deleted`, `deleted_by`) VALUES ('7', 'WAREHOUSE', NULL, '1', '0', '2015-03-26 10:16:08', '2017-01-26 18:53:54', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `ref_section` (`ref_section_id`, `section`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `date_deleted`, `deleted_by`) VALUES ('8', 'QUALITY CONTROL', NULL, '1', '0', '2015-03-26 10:16:08', '2017-01-26 18:53:54', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `ref_section` (`ref_section_id`, `section`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `date_deleted`, `deleted_by`) VALUES ('9', 'PRODUCTION', NULL, '1', '0', '2015-03-26 10:16:08', '2017-01-26 18:53:54', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `ref_section` (`ref_section_id`, `section`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `date_deleted`, `deleted_by`) VALUES ('10', 'SECURITY', NULL, '1', '0', '2015-03-26 10:16:08', '2017-01-26 18:53:54', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `ref_section` (`ref_section_id`, `section`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `date_deleted`, `deleted_by`) VALUES ('11', 'PACKAGING', NULL, '1', '0', '2015-03-26 10:16:08', '2017-01-26 18:53:54', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `ref_section` (`ref_section_id`, `section`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `date_deleted`, `deleted_by`) VALUES ('12', 'R&D', NULL, '1', '0', '2015-03-26 14:07:54', '2017-01-26 18:53:54', '0', '0000-00-00 00:00:00', '0');


#
# TABLE STRUCTURE FOR: ref_sss_contribution
#

DROP TABLE IF EXISTS `ref_sss_contribution`;

CREATE TABLE `ref_sss_contribution` (
  `ref_sss_contribution_id` int(11) NOT NULL AUTO_INCREMENT,
  `salary_range_from` decimal(19,2) NOT NULL,
  `salary_range_to` decimal(19,2) NOT NULL,
  `monthly_salary_credit` decimal(19,2) NOT NULL,
  `employee` decimal(19,2) NOT NULL,
  `employer` decimal(19,2) NOT NULL,
  `employer_contribution` decimal(19,2) NOT NULL,
  `sub_total` decimal(19,2) NOT NULL,
  `total` decimal(19,2) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `deleted_by` int(11) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_deleted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ref_sss_contribution_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=528;

INSERT INTO `ref_sss_contribution` (`ref_sss_contribution_id`, `salary_range_from`, `salary_range_to`, `monthly_salary_credit`, `employee`, `employer`, `employer_contribution`, `sub_total`, `total`, `is_deleted`, `status`, `created_by`, `modified_by`, `deleted_by`, `date_created`, `date_modified`, `date_deleted`) VALUES ('1', '1000.00', '1249.99', '1000.00', '36.30', '73.70', '10.00', '110.00', '120.00', '0', '0', '0', '1', '0', '0000-00-00 00:00:00', '2017-03-29 15:16:32', '0000-00-00 00:00:00');
INSERT INTO `ref_sss_contribution` (`ref_sss_contribution_id`, `salary_range_from`, `salary_range_to`, `monthly_salary_credit`, `employee`, `employer`, `employer_contribution`, `sub_total`, `total`, `is_deleted`, `status`, `created_by`, `modified_by`, `deleted_by`, `date_created`, `date_modified`, `date_deleted`) VALUES ('2', '1250.00', '1749.99', '1500.00', '54.50', '110.50', '10.00', '165.00', '175.00', '0', '0', '0', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `ref_sss_contribution` (`ref_sss_contribution_id`, `salary_range_from`, `salary_range_to`, `monthly_salary_credit`, `employee`, `employer`, `employer_contribution`, `sub_total`, `total`, `is_deleted`, `status`, `created_by`, `modified_by`, `deleted_by`, `date_created`, `date_modified`, `date_deleted`) VALUES ('3', '1750.00', '2249.99', '2000.00', '72.70', '147.30', '10.00', '157.30', '230.00', '0', '0', '0', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `ref_sss_contribution` (`ref_sss_contribution_id`, `salary_range_from`, `salary_range_to`, `monthly_salary_credit`, `employee`, `employer`, `employer_contribution`, `sub_total`, `total`, `is_deleted`, `status`, `created_by`, `modified_by`, `deleted_by`, `date_created`, `date_modified`, `date_deleted`) VALUES ('4', '2250.00', '2749.99', '2500.00', '90.80', '184.20', '10.00', '194.20', '285.00', '0', '0', '0', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `ref_sss_contribution` (`ref_sss_contribution_id`, `salary_range_from`, `salary_range_to`, `monthly_salary_credit`, `employee`, `employer`, `employer_contribution`, `sub_total`, `total`, `is_deleted`, `status`, `created_by`, `modified_by`, `deleted_by`, `date_created`, `date_modified`, `date_deleted`) VALUES ('5', '2750.00', '3249.99', '3000.00', '109.00', '221.00', '10.00', '231.00', '340.00', '0', '0', '0', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `ref_sss_contribution` (`ref_sss_contribution_id`, `salary_range_from`, `salary_range_to`, `monthly_salary_credit`, `employee`, `employer`, `employer_contribution`, `sub_total`, `total`, `is_deleted`, `status`, `created_by`, `modified_by`, `deleted_by`, `date_created`, `date_modified`, `date_deleted`) VALUES ('6', '3250.00', '3749.99', '3500.00', '127.20', '257.80', '10.00', '267.80', '395.00', '0', '0', '0', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `ref_sss_contribution` (`ref_sss_contribution_id`, `salary_range_from`, `salary_range_to`, `monthly_salary_credit`, `employee`, `employer`, `employer_contribution`, `sub_total`, `total`, `is_deleted`, `status`, `created_by`, `modified_by`, `deleted_by`, `date_created`, `date_modified`, `date_deleted`) VALUES ('7', '3750.00', '4249.99', '4000.00', '145.30', '294.70', '10.00', '304.70', '450.00', '0', '0', '0', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `ref_sss_contribution` (`ref_sss_contribution_id`, `salary_range_from`, `salary_range_to`, `monthly_salary_credit`, `employee`, `employer`, `employer_contribution`, `sub_total`, `total`, `is_deleted`, `status`, `created_by`, `modified_by`, `deleted_by`, `date_created`, `date_modified`, `date_deleted`) VALUES ('8', '4250.00', '4749.99', '4500.00', '163.50', '331.50', '10.00', '341.50', '505.00', '0', '0', '0', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `ref_sss_contribution` (`ref_sss_contribution_id`, `salary_range_from`, `salary_range_to`, `monthly_salary_credit`, `employee`, `employer`, `employer_contribution`, `sub_total`, `total`, `is_deleted`, `status`, `created_by`, `modified_by`, `deleted_by`, `date_created`, `date_modified`, `date_deleted`) VALUES ('9', '4750.00', '5249.99', '5000.00', '181.65', '368.30', '10.00', '549.95', '559.95', '0', '0', '0', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `ref_sss_contribution` (`ref_sss_contribution_id`, `salary_range_from`, `salary_range_to`, `monthly_salary_credit`, `employee`, `employer`, `employer_contribution`, `sub_total`, `total`, `is_deleted`, `status`, `created_by`, `modified_by`, `deleted_by`, `date_created`, `date_modified`, `date_deleted`) VALUES ('10', '5250.00', '5749.99', '5500.00', '199.80', '405.20', '10.00', '415.20', '615.00', '0', '0', '0', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `ref_sss_contribution` (`ref_sss_contribution_id`, `salary_range_from`, `salary_range_to`, `monthly_salary_credit`, `employee`, `employer`, `employer_contribution`, `sub_total`, `total`, `is_deleted`, `status`, `created_by`, `modified_by`, `deleted_by`, `date_created`, `date_modified`, `date_deleted`) VALUES ('11', '5750.00', '6249.99', '6000.00', '218.00', '442.00', '10.00', '452.00', '670.00', '0', '0', '0', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `ref_sss_contribution` (`ref_sss_contribution_id`, `salary_range_from`, `salary_range_to`, `monthly_salary_credit`, `employee`, `employer`, `employer_contribution`, `sub_total`, `total`, `is_deleted`, `status`, `created_by`, `modified_by`, `deleted_by`, `date_created`, `date_modified`, `date_deleted`) VALUES ('12', '6250.00', '6749.99', '6500.00', '236.20', '478.80', '10.00', '488.80', '725.00', '0', '0', '0', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `ref_sss_contribution` (`ref_sss_contribution_id`, `salary_range_from`, `salary_range_to`, `monthly_salary_credit`, `employee`, `employer`, `employer_contribution`, `sub_total`, `total`, `is_deleted`, `status`, `created_by`, `modified_by`, `deleted_by`, `date_created`, `date_modified`, `date_deleted`) VALUES ('13', '6750.00', '7249.99', '7000.00', '254.30', '515.70', '10.00', '525.70', '780.00', '0', '0', '0', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `ref_sss_contribution` (`ref_sss_contribution_id`, `salary_range_from`, `salary_range_to`, `monthly_salary_credit`, `employee`, `employer`, `employer_contribution`, `sub_total`, `total`, `is_deleted`, `status`, `created_by`, `modified_by`, `deleted_by`, `date_created`, `date_modified`, `date_deleted`) VALUES ('14', '7250.00', '7749.99', '7500.00', '272.50', '552.50', '10.00', '562.50', '835.00', '0', '0', '0', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `ref_sss_contribution` (`ref_sss_contribution_id`, `salary_range_from`, `salary_range_to`, `monthly_salary_credit`, `employee`, `employer`, `employer_contribution`, `sub_total`, `total`, `is_deleted`, `status`, `created_by`, `modified_by`, `deleted_by`, `date_created`, `date_modified`, `date_deleted`) VALUES ('15', '7750.00', '8249.99', '8000.00', '290.70', '589.30', '10.00', '599.30', '890.00', '0', '0', '0', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `ref_sss_contribution` (`ref_sss_contribution_id`, `salary_range_from`, `salary_range_to`, `monthly_salary_credit`, `employee`, `employer`, `employer_contribution`, `sub_total`, `total`, `is_deleted`, `status`, `created_by`, `modified_by`, `deleted_by`, `date_created`, `date_modified`, `date_deleted`) VALUES ('16', '8250.00', '8749.99', '8500.00', '308.80', '626.20', '10.00', '636.20', '945.00', '0', '0', '0', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `ref_sss_contribution` (`ref_sss_contribution_id`, `salary_range_from`, `salary_range_to`, `monthly_salary_credit`, `employee`, `employer`, `employer_contribution`, `sub_total`, `total`, `is_deleted`, `status`, `created_by`, `modified_by`, `deleted_by`, `date_created`, `date_modified`, `date_deleted`) VALUES ('17', '8750.00', '9249.99', '9000.00', '327.00', '663.00', '10.00', '990.00', '1000.00', '0', '0', '0', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `ref_sss_contribution` (`ref_sss_contribution_id`, `salary_range_from`, `salary_range_to`, `monthly_salary_credit`, `employee`, `employer`, `employer_contribution`, `sub_total`, `total`, `is_deleted`, `status`, `created_by`, `modified_by`, `deleted_by`, `date_created`, `date_modified`, `date_deleted`) VALUES ('18', '9250.00', '9749.99', '9500.00', '345.20', '699.80', '10.00', '1045.00', '1055.00', '0', '0', '0', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `ref_sss_contribution` (`ref_sss_contribution_id`, `salary_range_from`, `salary_range_to`, `monthly_salary_credit`, `employee`, `employer`, `employer_contribution`, `sub_total`, `total`, `is_deleted`, `status`, `created_by`, `modified_by`, `deleted_by`, `date_created`, `date_modified`, `date_deleted`) VALUES ('19', '9750.00', '10249.99', '10000.00', '363.30', '736.70', '10.00', '1100.00', '1110.00', '0', '0', '0', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `ref_sss_contribution` (`ref_sss_contribution_id`, `salary_range_from`, `salary_range_to`, `monthly_salary_credit`, `employee`, `employer`, `employer_contribution`, `sub_total`, `total`, `is_deleted`, `status`, `created_by`, `modified_by`, `deleted_by`, `date_created`, `date_modified`, `date_deleted`) VALUES ('20', '10250.00', '10749.99', '10500.00', '381.50', '773.50', '10.00', '1155.00', '1165.00', '0', '0', '0', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `ref_sss_contribution` (`ref_sss_contribution_id`, `salary_range_from`, `salary_range_to`, `monthly_salary_credit`, `employee`, `employer`, `employer_contribution`, `sub_total`, `total`, `is_deleted`, `status`, `created_by`, `modified_by`, `deleted_by`, `date_created`, `date_modified`, `date_deleted`) VALUES ('21', '10750.00', '11249.99', '11000.00', '399.70', '810.30', '10.00', '1210.00', '1220.00', '0', '0', '0', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `ref_sss_contribution` (`ref_sss_contribution_id`, `salary_range_from`, `salary_range_to`, `monthly_salary_credit`, `employee`, `employer`, `employer_contribution`, `sub_total`, `total`, `is_deleted`, `status`, `created_by`, `modified_by`, `deleted_by`, `date_created`, `date_modified`, `date_deleted`) VALUES ('22', '11250.00', '11749.99', '11500.00', '417.80', '847.20', '10.00', '1265.00', '1275.00', '0', '0', '0', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `ref_sss_contribution` (`ref_sss_contribution_id`, `salary_range_from`, `salary_range_to`, `monthly_salary_credit`, `employee`, `employer`, `employer_contribution`, `sub_total`, `total`, `is_deleted`, `status`, `created_by`, `modified_by`, `deleted_by`, `date_created`, `date_modified`, `date_deleted`) VALUES ('23', '11750.00', '12249.99', '12000.00', '436.00', '884.00', '10.00', '1320.00', '1330.00', '0', '0', '0', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `ref_sss_contribution` (`ref_sss_contribution_id`, `salary_range_from`, `salary_range_to`, `monthly_salary_credit`, `employee`, `employer`, `employer_contribution`, `sub_total`, `total`, `is_deleted`, `status`, `created_by`, `modified_by`, `deleted_by`, `date_created`, `date_modified`, `date_deleted`) VALUES ('24', '12250.00', '12749.99', '12500.00', '454.20', '920.80', '10.00', '1375.00', '1385.00', '0', '0', '0', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `ref_sss_contribution` (`ref_sss_contribution_id`, `salary_range_from`, `salary_range_to`, `monthly_salary_credit`, `employee`, `employer`, `employer_contribution`, `sub_total`, `total`, `is_deleted`, `status`, `created_by`, `modified_by`, `deleted_by`, `date_created`, `date_modified`, `date_deleted`) VALUES ('25', '12750.00', '13249.99', '13000.00', '472.30', '957.70', '10.00', '1430.00', '1440.00', '0', '0', '0', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `ref_sss_contribution` (`ref_sss_contribution_id`, `salary_range_from`, `salary_range_to`, `monthly_salary_credit`, `employee`, `employer`, `employer_contribution`, `sub_total`, `total`, `is_deleted`, `status`, `created_by`, `modified_by`, `deleted_by`, `date_created`, `date_modified`, `date_deleted`) VALUES ('26', '13250.00', '13749.99', '13500.00', '490.50', '994.50', '10.00', '1485.00', '1495.00', '0', '0', '0', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `ref_sss_contribution` (`ref_sss_contribution_id`, `salary_range_from`, `salary_range_to`, `monthly_salary_credit`, `employee`, `employer`, `employer_contribution`, `sub_total`, `total`, `is_deleted`, `status`, `created_by`, `modified_by`, `deleted_by`, `date_created`, `date_modified`, `date_deleted`) VALUES ('27', '13750.00', '14249.99', '14000.00', '508.70', '1031.30', '10.00', '1540.00', '1550.00', '0', '0', '0', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `ref_sss_contribution` (`ref_sss_contribution_id`, `salary_range_from`, `salary_range_to`, `monthly_salary_credit`, `employee`, `employer`, `employer_contribution`, `sub_total`, `total`, `is_deleted`, `status`, `created_by`, `modified_by`, `deleted_by`, `date_created`, `date_modified`, `date_deleted`) VALUES ('28', '14250.00', '14749.99', '14500.00', '526.80', '1068.20', '10.00', '1595.00', '1605.00', '0', '0', '0', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `ref_sss_contribution` (`ref_sss_contribution_id`, `salary_range_from`, `salary_range_to`, `monthly_salary_credit`, `employee`, `employer`, `employer_contribution`, `sub_total`, `total`, `is_deleted`, `status`, `created_by`, `modified_by`, `deleted_by`, `date_created`, `date_modified`, `date_deleted`) VALUES ('29', '14750.00', '15249.99', '15000.00', '545.00', '1105.00', '30.00', '1650.00', '1680.00', '0', '0', '0', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `ref_sss_contribution` (`ref_sss_contribution_id`, `salary_range_from`, `salary_range_to`, `monthly_salary_credit`, `employee`, `employer`, `employer_contribution`, `sub_total`, `total`, `is_deleted`, `status`, `created_by`, `modified_by`, `deleted_by`, `date_created`, `date_modified`, `date_deleted`) VALUES ('30', '15250.00', '15749.99', '15500.00', '563.20', '1141.80', '30.00', '1705.00', '1735.00', '0', '0', '0', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `ref_sss_contribution` (`ref_sss_contribution_id`, `salary_range_from`, `salary_range_to`, `monthly_salary_credit`, `employee`, `employer`, `employer_contribution`, `sub_total`, `total`, `is_deleted`, `status`, `created_by`, `modified_by`, `deleted_by`, `date_created`, `date_modified`, `date_deleted`) VALUES ('31', '15750.00', '9999999.00', '16000.00', '581.30', '1178.70', '30.00', '1760.00', '1790.00', '0', '0', '0', '1', '0', '0000-00-00 00:00:00', '2017-03-29 10:11:00', '2017-03-29 10:08:45');


#
# TABLE STRUCTURE FOR: refdeduction
#

DROP TABLE IF EXISTS `refdeduction`;

CREATE TABLE `refdeduction` (
  `deduction_id` int(11) NOT NULL AUTO_INCREMENT,
  `deduction_desc` varchar(65) DEFAULT NULL,
  `deduction_type_id` int(11) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL,
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_by` int(11) NOT NULL,
  `date_deleted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`deduction_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=1820;

INSERT INTO `refdeduction` (`deduction_id`, `deduction_desc`, `deduction_type_id`, `created_by`, `date_created`, `modified_by`, `date_modified`, `deleted_by`, `date_deleted`, `is_deleted`) VALUES ('1', 'S.S.S.', '1', '0', '2016-04-20 22:29:37', '0', '2017-01-26 18:53:53', '0', '2017-01-26 18:53:53', '0');
INSERT INTO `refdeduction` (`deduction_id`, `deduction_desc`, `deduction_type_id`, `created_by`, `date_created`, `modified_by`, `date_modified`, `deleted_by`, `date_deleted`, `is_deleted`) VALUES ('2', 'Philhealth', '1', '0', '2016-04-20 22:29:37', '0', '2017-01-26 18:53:53', '0', '2017-01-26 18:53:53', '0');
INSERT INTO `refdeduction` (`deduction_id`, `deduction_desc`, `deduction_type_id`, `created_by`, `date_created`, `modified_by`, `date_modified`, `deleted_by`, `date_deleted`, `is_deleted`) VALUES ('3', 'Pagibig', '1', '0', '2016-04-20 22:29:37', '0', '2017-01-26 18:53:53', '0', '2017-01-26 18:53:53', '0');
INSERT INTO `refdeduction` (`deduction_id`, `deduction_desc`, `deduction_type_id`, `created_by`, `date_created`, `modified_by`, `date_modified`, `deleted_by`, `date_deleted`, `is_deleted`) VALUES ('4', 'Withholding Tax', '1', '0', '2016-04-20 22:29:37', '0', '2017-01-26 18:53:53', '0', '2017-01-26 18:53:53', '0');
INSERT INTO `refdeduction` (`deduction_id`, `deduction_desc`, `deduction_type_id`, `created_by`, `date_created`, `modified_by`, `date_modified`, `deleted_by`, `date_deleted`, `is_deleted`) VALUES ('5', 'S.S.S. Loan', '2', '0', '2016-04-05 21:50:42', '0', '2016-05-11 10:33:23', '0', '2017-01-26 18:53:53', '0');
INSERT INTO `refdeduction` (`deduction_id`, `deduction_desc`, `deduction_type_id`, `created_by`, `date_created`, `modified_by`, `date_modified`, `deleted_by`, `date_deleted`, `is_deleted`) VALUES ('6', 'Pag-Ibig Loan', '1', '0', '2016-04-05 21:51:18', '0', '2016-04-05 09:58:48', '0', '2016-04-05 10:08:06', '0');
INSERT INTO `refdeduction` (`deduction_id`, `deduction_desc`, `deduction_type_id`, `created_by`, `date_created`, `modified_by`, `date_modified`, `deleted_by`, `date_deleted`, `is_deleted`) VALUES ('7', 'Cash Advance', '4', '0', '2016-05-11 22:33:47', '1', '2017-05-30 14:00:45', '0', '2017-01-26 18:53:53', '0');
INSERT INTO `refdeduction` (`deduction_id`, `deduction_desc`, `deduction_type_id`, `created_by`, `date_created`, `modified_by`, `date_modified`, `deleted_by`, `date_deleted`, `is_deleted`) VALUES ('8', 'COOP LOAN', '2', '0', '2016-11-30 07:53:07', '0', '2017-01-26 18:53:53', '0', '2017-01-26 18:53:53', '0');
INSERT INTO `refdeduction` (`deduction_id`, `deduction_desc`, `deduction_type_id`, `created_by`, `date_created`, `modified_by`, `date_modified`, `deleted_by`, `date_deleted`, `is_deleted`) VALUES ('9', 'COOP CONTRIBUTION', '1', '0', '2016-11-30 07:53:21', '0', '2017-01-26 18:53:53', '0', '2017-01-26 18:53:53', '0');
INSERT INTO `refdeduction` (`deduction_id`, `deduction_desc`, `deduction_type_id`, `created_by`, `date_created`, `modified_by`, `date_modified`, `deleted_by`, `date_deleted`, `is_deleted`) VALUES ('11', 'ATOE 3', '3', '0', '2017-01-26 19:53:18', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `refdeduction` (`deduction_id`, `deduction_desc`, `deduction_type_id`, `created_by`, `date_created`, `modified_by`, `date_modified`, `deleted_by`, `date_deleted`, `is_deleted`) VALUES ('12', 'Pag-Ibig Calamity Loan', '1', '0', '2017-02-22 08:03:16', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `refdeduction` (`deduction_id`, `deduction_desc`, `deduction_type_id`, `created_by`, `date_created`, `modified_by`, `date_modified`, `deleted_by`, `date_deleted`, `is_deleted`) VALUES ('13', 'Temporary Cash Advance', '5', '0', '2017-02-23 02:19:47', '1', '2017-03-28 17:44:30', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `refdeduction` (`deduction_id`, `deduction_desc`, `deduction_type_id`, `created_by`, `date_created`, `modified_by`, `date_modified`, `deleted_by`, `date_deleted`, `is_deleted`) VALUES ('14', 'ATOE1', '3', '0', '2017-02-23 10:02:06', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `refdeduction` (`deduction_id`, `deduction_desc`, `deduction_type_id`, `created_by`, `date_created`, `modified_by`, `date_modified`, `deleted_by`, `date_deleted`, `is_deleted`) VALUES ('15', 'Atoe 2', '3', '0', '2017-02-24 03:02:33', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `refdeduction` (`deduction_id`, `deduction_desc`, `deduction_type_id`, `created_by`, `date_created`, `modified_by`, `date_modified`, `deleted_by`, `date_deleted`, `is_deleted`) VALUES ('16', 'Excess of 13th Month', '6', '0', '2017-03-14 01:46:43', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', '0');


#
# TABLE STRUCTURE FOR: refdeductiontype
#

DROP TABLE IF EXISTS `refdeductiontype`;

CREATE TABLE `refdeductiontype` (
  `deduction_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `deduction_type_desc` varchar(65) DEFAULT '',
  `created_by` int(11) NOT NULL,
  `date_created` datetime DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL,
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_by` int(11) NOT NULL,
  `date_deleted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`deduction_type_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=3276;

INSERT INTO `refdeductiontype` (`deduction_type_id`, `deduction_type_desc`, `created_by`, `date_created`, `modified_by`, `date_modified`, `deleted_by`, `date_deleted`, `is_deleted`) VALUES ('1', 'Premium', '0', '2016-04-20 22:29:37', '0', '2017-01-26 18:53:53', '0', '2017-01-26 18:53:53', '0');
INSERT INTO `refdeductiontype` (`deduction_type_id`, `deduction_type_desc`, `created_by`, `date_created`, `modified_by`, `date_modified`, `deleted_by`, `date_deleted`, `is_deleted`) VALUES ('2', 'Loans', '1', '2016-04-05 20:33:31', '0', '2017-01-26 18:53:53', '0', '2017-01-26 18:53:53', '0');
INSERT INTO `refdeductiontype` (`deduction_type_id`, `deduction_type_desc`, `created_by`, `date_created`, `modified_by`, `date_modified`, `deleted_by`, `date_deleted`, `is_deleted`) VALUES ('3', 'Dues/Other Deductions', '1', '2016-04-05 20:33:31', '0', '2017-01-26 18:53:53', '0', '2017-01-26 18:53:53', '0');
INSERT INTO `refdeductiontype` (`deduction_type_id`, `deduction_type_desc`, `created_by`, `date_created`, `modified_by`, `date_modified`, `deleted_by`, `date_deleted`, `is_deleted`) VALUES ('4', 'Advances', '0', '2016-05-22 17:35:43', '0', '2016-05-22 17:36:41', '0', '2016-05-22 17:36:00', '0');
INSERT INTO `refdeductiontype` (`deduction_type_id`, `deduction_type_desc`, `created_by`, `date_created`, `modified_by`, `date_modified`, `deleted_by`, `date_deleted`, `is_deleted`) VALUES ('5', 'Temporary Cash advance', '0', '2016-12-01 05:42:13', '1', '2017-05-30 13:36:35', '0', '2017-01-26 18:53:53', '0');
INSERT INTO `refdeductiontype` (`deduction_type_id`, `deduction_type_desc`, `created_by`, `date_created`, `modified_by`, `date_modified`, `deleted_by`, `date_deleted`, `is_deleted`) VALUES ('6', 'Overpayment of 13th month', '0', '2017-03-14 01:46:05', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', '0');


#
# TABLE STRUCTURE FOR: reffactorfile
#

DROP TABLE IF EXISTS `reffactorfile`;

CREATE TABLE `reffactorfile` (
  `factor_id` int(11) NOT NULL AUTO_INCREMENT,
  `regular_ot` decimal(19,5) DEFAULT '0.10000',
  `sunday` decimal(19,5) DEFAULT '0.10000',
  `sunday_ot` decimal(19,5) DEFAULT '0.10000',
  `regular_holiday` decimal(19,5) DEFAULT '0.10000',
  `regular_holiday_ot` decimal(19,5) DEFAULT '0.10000',
  `sun_regular_holiday` decimal(19,5) DEFAULT '0.10000',
  `sun_regular_holiday_ot` decimal(19,5) DEFAULT '0.10000',
  `spe_holiday` decimal(19,5) DEFAULT '0.10000',
  `spe_holiday_ot` decimal(19,5) DEFAULT '0.10000',
  `sun_spe_holiday` decimal(19,5) DEFAULT '0.10000',
  `sun_spe_holiday_ot` decimal(19,5) DEFAULT '0.10000',
  `pagibig1` decimal(19,5) DEFAULT '0.10000',
  `pagibig2` decimal(19,5) DEFAULT '0.10000',
  `night_shift` decimal(19,5) DEFAULT '0.10000',
  `sun_night_shift` decimal(19,5) DEFAULT '0.10000',
  `night_shift_reg_holiday` decimal(19,5) DEFAULT '0.10000',
  `sun_night_shift_reg_holiday` decimal(19,5) DEFAULT '0.10000',
  `night_shift_spe_holiday` decimal(19,5) DEFAULT '0.10000',
  `sun_night_shift_spe_holiday` decimal(19,5) DEFAULT '0.10000',
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_deleted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_by` int(11) NOT NULL,
  PRIMARY KEY (`factor_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=16384;

INSERT INTO `reffactorfile` (`factor_id`, `regular_ot`, `sunday`, `sunday_ot`, `regular_holiday`, `regular_holiday_ot`, `sun_regular_holiday`, `sun_regular_holiday_ot`, `spe_holiday`, `spe_holiday_ot`, `sun_spe_holiday`, `sun_spe_holiday_ot`, `pagibig1`, `pagibig2`, `night_shift`, `sun_night_shift`, `night_shift_reg_holiday`, `sun_night_shift_reg_holiday`, `night_shift_spe_holiday`, `sun_night_shift_spe_holiday`, `is_deleted`, `created_by`, `modified_by`, `date_created`, `date_modified`, `date_deleted`, `deleted_by`) VALUES ('1', '1.25000', '1.30000', '1.55000', '2.00000', '2.30000', '2.60000', '2.90000', '1.30000', '1.60000', '1.50000', '1.80000', '100.00000', '0.02000', '0.10000', '0.10000', '0.10000', '0.10000', '0.10000', '0.10000', '0', '0', '1', '0000-00-00 00:00:00', '2017-03-29 09:32:18', '0000-00-00 00:00:00', '0');


#
# TABLE STRUCTURE FOR: refgroup
#

DROP TABLE IF EXISTS `refgroup`;

CREATE TABLE `refgroup` (
  `group_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_desc` varchar(65) DEFAULT '',
  `created_by` int(11) NOT NULL,
  `date_created` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_by` int(11) NOT NULL,
  `date_deleted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_deleted` tinyint(1) DEFAULT '0',
  `group_desc2` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`group_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=3276;

INSERT INTO `refgroup` (`group_id`, `group_desc`, `created_by`, `date_created`, `modified_by`, `date_modified`, `deleted_by`, `date_deleted`, `is_deleted`, `group_desc2`) VALUES ('1', 'Line 1', '0', '0000-00-00 00:00:00', '0', '2017-01-26 18:53:53', '0', '2017-01-26 18:53:53', '0', NULL);
INSERT INTO `refgroup` (`group_id`, `group_desc`, `created_by`, `date_created`, `modified_by`, `date_modified`, `deleted_by`, `date_deleted`, `is_deleted`, `group_desc2`) VALUES ('2', 'Line 2', '0', '0000-00-00 00:00:00', '0', '2017-01-26 18:53:53', '0', '2017-01-26 18:53:53', '0', NULL);
INSERT INTO `refgroup` (`group_id`, `group_desc`, `created_by`, `date_created`, `modified_by`, `date_modified`, `deleted_by`, `date_deleted`, `is_deleted`, `group_desc2`) VALUES ('3', 'Line 3', '0', '0000-00-00 00:00:00', '0', '2017-01-26 18:53:53', '0', '2017-01-26 18:53:53', '0', NULL);
INSERT INTO `refgroup` (`group_id`, `group_desc`, `created_by`, `date_created`, `modified_by`, `date_modified`, `deleted_by`, `date_deleted`, `is_deleted`, `group_desc2`) VALUES ('4', 'Line 4', '0', '0000-00-00 00:00:00', '0', '2017-01-26 18:53:53', '0', '2017-01-26 18:53:53', '0', NULL);
INSERT INTO `refgroup` (`group_id`, `group_desc`, `created_by`, `date_created`, `modified_by`, `date_modified`, `deleted_by`, `date_deleted`, `is_deleted`, `group_desc2`) VALUES ('5', 'Line 5', '0', '2016-05-20 10:45:09', '0', '2016-05-20 10:45:46', '0', '2017-01-26 18:53:53', '0', NULL);
INSERT INTO `refgroup` (`group_id`, `group_desc`, `created_by`, `date_created`, `modified_by`, `date_modified`, `deleted_by`, `date_deleted`, `is_deleted`, `group_desc2`) VALUES ('6', 'test', '1', '2017-03-29 09:35:07', '1', '2017-03-29 09:35:09', '1', '2017-03-29 09:35:11', '1', NULL);


#
# TABLE STRUCTURE FOR: refotherearnings
#

DROP TABLE IF EXISTS `refotherearnings`;

CREATE TABLE `refotherearnings` (
  `earnings_id` int(11) NOT NULL AUTO_INCREMENT,
  `earnings_desc` varchar(65) DEFAULT NULL,
  `earnings_type_id` int(11) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL,
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_by` int(11) NOT NULL,
  `date_deleted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`earnings_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=4096;

INSERT INTO `refotherearnings` (`earnings_id`, `earnings_desc`, `earnings_type_id`, `created_by`, `date_created`, `modified_by`, `date_modified`, `deleted_by`, `date_deleted`, `is_deleted`) VALUES ('1', 'Allowance', '1', '0', '2017-01-19 07:55:49', '1', '2017-06-29 10:28:37', '0', '2017-01-26 18:53:53', '0');
INSERT INTO `refotherearnings` (`earnings_id`, `earnings_desc`, `earnings_type_id`, `created_by`, `date_created`, `modified_by`, `date_modified`, `deleted_by`, `date_deleted`, `is_deleted`) VALUES ('2', 'Adjustment', '1', '0', '2017-01-27 14:54:25', '1', '2017-04-21 10:50:52', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `refotherearnings` (`earnings_id`, `earnings_desc`, `earnings_type_id`, `created_by`, `date_created`, `modified_by`, `date_modified`, `deleted_by`, `date_deleted`, `is_deleted`) VALUES ('3', 'SALARY RETRO', '2', '0', '2017-03-04 07:18:20', '1', '2017-04-21 10:50:56', '0', '0000-00-00 00:00:00', '0');


#
# TABLE STRUCTURE FOR: refotherearningstype
#

DROP TABLE IF EXISTS `refotherearningstype`;

CREATE TABLE `refotherearningstype` (
  `earnings_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `earnings_type_desc` varchar(65) DEFAULT '',
  `created_by` int(11) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL,
  `modified_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_by` int(11) NOT NULL,
  `date_deleted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`earnings_type_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=4096;

INSERT INTO `refotherearningstype` (`earnings_type_id`, `earnings_type_desc`, `created_by`, `date_created`, `modified_by`, `modified_datetime`, `deleted_by`, `date_deleted`, `is_deleted`) VALUES ('1', 'Subsidiary', '0', '2017-01-27 14:56:46', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `refotherearningstype` (`earnings_type_id`, `earnings_type_desc`, `created_by`, `date_created`, `modified_by`, `modified_datetime`, `deleted_by`, `date_deleted`, `is_deleted`) VALUES ('2', 'Benefits(Other Income/Earnings)', '0', '2017-01-27 14:56:40', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', '0');


#
# TABLE STRUCTURE FOR: refpayperiod
#

DROP TABLE IF EXISTS `refpayperiod`;

CREATE TABLE `refpayperiod` (
  `pay_period_id` int(11) NOT NULL AUTO_INCREMENT,
  `pay_period_start` date DEFAULT NULL,
  `pay_period_end` date DEFAULT NULL,
  `pay_period_sequence` int(11) DEFAULT NULL,
  `month_id` int(11) DEFAULT '0',
  `pay_period_year` int(11) DEFAULT '0',
  `created_by` int(11) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL,
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_by` int(11) NOT NULL,
  `date_deleted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`pay_period_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=3276;

INSERT INTO `refpayperiod` (`pay_period_id`, `pay_period_start`, `pay_period_end`, `pay_period_sequence`, `month_id`, `pay_period_year`, `created_by`, `date_created`, `modified_by`, `date_modified`, `deleted_by`, `date_deleted`, `is_deleted`) VALUES ('1', '2017-01-01', '2017-01-15', '1', '1', '0', '0', '2017-01-19 08:30:07', '0', '2017-01-26 18:53:53', '0', '2017-01-26 18:53:53', '0');
INSERT INTO `refpayperiod` (`pay_period_id`, `pay_period_start`, `pay_period_end`, `pay_period_sequence`, `month_id`, `pay_period_year`, `created_by`, `date_created`, `modified_by`, `date_modified`, `deleted_by`, `date_deleted`, `is_deleted`) VALUES ('2', '2017-01-16', '2017-01-31', '2', '1', '0', '0', '2017-01-26 06:27:13', '0', '2017-01-26 18:53:53', '0', '2017-01-26 18:53:53', '0');
INSERT INTO `refpayperiod` (`pay_period_id`, `pay_period_start`, `pay_period_end`, `pay_period_sequence`, `month_id`, `pay_period_year`, `created_by`, `date_created`, `modified_by`, `date_modified`, `deleted_by`, `date_deleted`, `is_deleted`) VALUES ('3', '2017-02-01', '2017-02-15', '1', '2', '0', '0', '2017-02-02 11:21:44', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `refpayperiod` (`pay_period_id`, `pay_period_start`, `pay_period_end`, `pay_period_sequence`, `month_id`, `pay_period_year`, `created_by`, `date_created`, `modified_by`, `date_modified`, `deleted_by`, `date_deleted`, `is_deleted`) VALUES ('4', '2017-02-16', '2017-02-28', '2', '2', '0', '0', '2017-02-02 11:55:49', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `refpayperiod` (`pay_period_id`, `pay_period_start`, `pay_period_end`, `pay_period_sequence`, `month_id`, `pay_period_year`, `created_by`, `date_created`, `modified_by`, `date_modified`, `deleted_by`, `date_deleted`, `is_deleted`) VALUES ('5', '2017-03-01', '2017-03-15', '1', '3', '0', '0', '2017-03-07 08:35:14', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `refpayperiod` (`pay_period_id`, `pay_period_start`, `pay_period_end`, `pay_period_sequence`, `month_id`, `pay_period_year`, `created_by`, `date_created`, `modified_by`, `date_modified`, `deleted_by`, `date_deleted`, `is_deleted`) VALUES ('6', '2017-03-16', '2017-03-31', '2', '3', '0', '0', '2017-03-16 06:01:14', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `refpayperiod` (`pay_period_id`, `pay_period_start`, `pay_period_end`, `pay_period_sequence`, `month_id`, `pay_period_year`, `created_by`, `date_created`, `modified_by`, `date_modified`, `deleted_by`, `date_deleted`, `is_deleted`) VALUES ('7', '2017-03-29', '2017-03-31', '3', '3', '0', '1', '2017-03-29 09:50:11', '1', '2017-03-29 09:50:14', '1', '2017-03-29 09:50:16', '1');
INSERT INTO `refpayperiod` (`pay_period_id`, `pay_period_start`, `pay_period_end`, `pay_period_sequence`, `month_id`, `pay_period_year`, `created_by`, `date_created`, `modified_by`, `date_modified`, `deleted_by`, `date_deleted`, `is_deleted`) VALUES ('8', '2017-04-01', '2017-04-15', '1', '4', '0', '1', '2017-04-26 16:49:27', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `refpayperiod` (`pay_period_id`, `pay_period_start`, `pay_period_end`, `pay_period_sequence`, `month_id`, `pay_period_year`, `created_by`, `date_created`, `modified_by`, `date_modified`, `deleted_by`, `date_deleted`, `is_deleted`) VALUES ('9', '2017-04-16', '2017-04-30', '2', '4', '0', '1', '2017-04-26 16:49:53', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `refpayperiod` (`pay_period_id`, `pay_period_start`, `pay_period_end`, `pay_period_sequence`, `month_id`, `pay_period_year`, `created_by`, `date_created`, `modified_by`, `date_modified`, `deleted_by`, `date_deleted`, `is_deleted`) VALUES ('10', '2017-05-01', '2017-05-15', '1', '5', '0', '1', '2017-05-02 15:22:44', '1', '2017-05-18 13:10:26', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `refpayperiod` (`pay_period_id`, `pay_period_start`, `pay_period_end`, `pay_period_sequence`, `month_id`, `pay_period_year`, `created_by`, `date_created`, `modified_by`, `date_modified`, `deleted_by`, `date_deleted`, `is_deleted`) VALUES ('11', '2017-05-16', '2017-05-31', '2', '5', '0', '1', '2017-05-18 13:50:17', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `refpayperiod` (`pay_period_id`, `pay_period_start`, `pay_period_end`, `pay_period_sequence`, `month_id`, `pay_period_year`, `created_by`, `date_created`, `modified_by`, `date_modified`, `deleted_by`, `date_deleted`, `is_deleted`) VALUES ('12', '2017-06-01', '2017-06-15', '1', '6', '0', '1', '2017-05-22 12:33:26', '1', '2017-05-31 15:23:27', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `refpayperiod` (`pay_period_id`, `pay_period_start`, `pay_period_end`, `pay_period_sequence`, `month_id`, `pay_period_year`, `created_by`, `date_created`, `modified_by`, `date_modified`, `deleted_by`, `date_deleted`, `is_deleted`) VALUES ('13', '2017-06-16', '2017-06-30', '2', '6', '0', '1', '2017-06-16 12:16:48', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `refpayperiod` (`pay_period_id`, `pay_period_start`, `pay_period_end`, `pay_period_sequence`, `month_id`, `pay_period_year`, `created_by`, `date_created`, `modified_by`, `date_modified`, `deleted_by`, `date_deleted`, `is_deleted`) VALUES ('14', '2017-07-01', '2017-07-15', '1', '7', '0', '1', '2017-06-16 16:05:34', '1', '2017-06-16 16:19:36', '0', '0000-00-00 00:00:00', '0');


#
# TABLE STRUCTURE FOR: refsss
#

DROP TABLE IF EXISTS `refsss`;

CREATE TABLE `refsss` (
  `sss_id` int(11) NOT NULL,
  `salary_range_from` decimal(19,5) DEFAULT '0.00000',
  `salary_range_to` decimal(19,5) DEFAULT '0.00000',
  `monthly_salary_credit` decimal(19,5) DEFAULT '0.00000',
  `employee_cont` decimal(19,5) DEFAULT '0.00000',
  `employer_cont` decimal(19,5) DEFAULT '0.00000',
  `ec_cont` decimal(19,5) DEFAULT '0.00000',
  `created_by` int(11) DEFAULT NULL,
  `created_datetime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_by` int(11) DEFAULT NULL,
  `modified_datetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_by` int(11) DEFAULT NULL,
  `deleted_datetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=264;

INSERT INTO `refsss` (`sss_id`, `salary_range_from`, `salary_range_to`, `monthly_salary_credit`, `employee_cont`, `employer_cont`, `ec_cont`, `created_by`, `created_datetime`, `modified_by`, `modified_datetime`, `deleted_by`, `deleted_datetime`, `is_deleted`) VALUES ('1', '1000.00000', '1249.99000', '1000.00000', '36.30000', '73.70000', '10.00000', '0', '2016-04-05 10:14:24', '0', '2016-04-28 00:38:00', NULL, '2017-01-26 18:53:53', '0');
INSERT INTO `refsss` (`sss_id`, `salary_range_from`, `salary_range_to`, `monthly_salary_credit`, `employee_cont`, `employer_cont`, `ec_cont`, `created_by`, `created_datetime`, `modified_by`, `modified_datetime`, `deleted_by`, `deleted_datetime`, `is_deleted`) VALUES ('2', '1250.00000', '1749.99000', '1500.00000', '54.50000', '110.50000', '10.00000', '0', '2016-04-05 10:16:26', NULL, '2017-01-26 18:53:53', NULL, '2017-01-26 18:53:53', '0');
INSERT INTO `refsss` (`sss_id`, `salary_range_from`, `salary_range_to`, `monthly_salary_credit`, `employee_cont`, `employer_cont`, `ec_cont`, `created_by`, `created_datetime`, `modified_by`, `modified_datetime`, `deleted_by`, `deleted_datetime`, `is_deleted`) VALUES ('3', '1750.00000', '2499.99000', '2000.00000', '72.70000', '147.30000', '10.00000', '0', '2016-04-05 10:44:58', '0', '2016-04-28 00:37:03', NULL, '2017-01-26 18:53:53', '0');
INSERT INTO `refsss` (`sss_id`, `salary_range_from`, `salary_range_to`, `monthly_salary_credit`, `employee_cont`, `employer_cont`, `ec_cont`, `created_by`, `created_datetime`, `modified_by`, `modified_datetime`, `deleted_by`, `deleted_datetime`, `is_deleted`) VALUES ('4', '2250.00000', '2749.99000', '2500.00000', '90.80000', '184.20000', '10.00000', '0', '2016-04-05 12:22:29', NULL, '2017-01-26 18:53:53', '0', '2016-04-05 00:22:32', '0');
INSERT INTO `refsss` (`sss_id`, `salary_range_from`, `salary_range_to`, `monthly_salary_credit`, `employee_cont`, `employer_cont`, `ec_cont`, `created_by`, `created_datetime`, `modified_by`, `modified_datetime`, `deleted_by`, `deleted_datetime`, `is_deleted`) VALUES ('5', '2750.00000', '3249.99000', '3000.00000', '109.00000', '221.00000', '10.00000', NULL, '2016-04-28 12:41:58', NULL, '2017-01-26 18:53:53', NULL, '2017-01-26 18:53:53', '0');
INSERT INTO `refsss` (`sss_id`, `salary_range_from`, `salary_range_to`, `monthly_salary_credit`, `employee_cont`, `employer_cont`, `ec_cont`, `created_by`, `created_datetime`, `modified_by`, `modified_datetime`, `deleted_by`, `deleted_datetime`, `is_deleted`) VALUES ('6', '3250.00000', '3749.99000', '3500.00000', '127.20000', '257.80000', '10.00000', NULL, '2016-04-28 12:41:58', NULL, '2017-01-26 18:53:53', NULL, '2017-01-26 18:53:53', '0');
INSERT INTO `refsss` (`sss_id`, `salary_range_from`, `salary_range_to`, `monthly_salary_credit`, `employee_cont`, `employer_cont`, `ec_cont`, `created_by`, `created_datetime`, `modified_by`, `modified_datetime`, `deleted_by`, `deleted_datetime`, `is_deleted`) VALUES ('7', '3750.00000', '4249.99000', '4000.00000', '145.30000', '294.70000', '10.00000', NULL, '2016-04-28 12:44:27', NULL, '2017-01-26 18:53:53', NULL, '2017-01-26 18:53:53', '0');
INSERT INTO `refsss` (`sss_id`, `salary_range_from`, `salary_range_to`, `monthly_salary_credit`, `employee_cont`, `employer_cont`, `ec_cont`, `created_by`, `created_datetime`, `modified_by`, `modified_datetime`, `deleted_by`, `deleted_datetime`, `is_deleted`) VALUES ('8', '4250.00000', '4749.99000', '4500.00000', '163.50000', '331.50000', '10.00000', NULL, '2016-04-28 12:44:27', NULL, '2017-01-26 18:53:53', NULL, '2017-01-26 18:53:53', '0');
INSERT INTO `refsss` (`sss_id`, `salary_range_from`, `salary_range_to`, `monthly_salary_credit`, `employee_cont`, `employer_cont`, `ec_cont`, `created_by`, `created_datetime`, `modified_by`, `modified_datetime`, `deleted_by`, `deleted_datetime`, `is_deleted`) VALUES ('9', '4750.00000', '5249.99000', '5000.00000', '181.70000', '368.30000', '10.00000', NULL, '2016-04-28 12:44:27', NULL, '2017-01-26 18:53:53', NULL, '2017-01-26 18:53:53', '0');
INSERT INTO `refsss` (`sss_id`, `salary_range_from`, `salary_range_to`, `monthly_salary_credit`, `employee_cont`, `employer_cont`, `ec_cont`, `created_by`, `created_datetime`, `modified_by`, `modified_datetime`, `deleted_by`, `deleted_datetime`, `is_deleted`) VALUES ('10', '5250.00000', '5749.99000', '5500.00000', '199.80000', '405.20000', '10.00000', NULL, '2016-04-28 12:45:38', NULL, '2017-01-26 18:53:53', NULL, '2017-01-26 18:53:53', '0');
INSERT INTO `refsss` (`sss_id`, `salary_range_from`, `salary_range_to`, `monthly_salary_credit`, `employee_cont`, `employer_cont`, `ec_cont`, `created_by`, `created_datetime`, `modified_by`, `modified_datetime`, `deleted_by`, `deleted_datetime`, `is_deleted`) VALUES ('11', '5750.00000', '6249.99000', '6000.00000', '218.00000', '442.00000', '10.00000', NULL, '2016-04-28 12:45:38', NULL, '2017-01-26 18:53:53', NULL, '2017-01-26 18:53:53', '0');
INSERT INTO `refsss` (`sss_id`, `salary_range_from`, `salary_range_to`, `monthly_salary_credit`, `employee_cont`, `employer_cont`, `ec_cont`, `created_by`, `created_datetime`, `modified_by`, `modified_datetime`, `deleted_by`, `deleted_datetime`, `is_deleted`) VALUES ('12', '6250.00000', '6749.99000', '6500.00000', '236.20000', '478.80000', '10.00000', NULL, '2016-04-28 13:56:53', NULL, '2017-01-26 18:53:53', NULL, '2017-01-26 18:53:53', '0');
INSERT INTO `refsss` (`sss_id`, `salary_range_from`, `salary_range_to`, `monthly_salary_credit`, `employee_cont`, `employer_cont`, `ec_cont`, `created_by`, `created_datetime`, `modified_by`, `modified_datetime`, `deleted_by`, `deleted_datetime`, `is_deleted`) VALUES ('13', '6750.00000', '7249.99000', '7000.00000', '254.30000', '515.70000', '10.00000', NULL, '2016-04-28 13:56:53', NULL, '2017-01-26 18:53:53', NULL, '2017-01-26 18:53:53', '0');
INSERT INTO `refsss` (`sss_id`, `salary_range_from`, `salary_range_to`, `monthly_salary_credit`, `employee_cont`, `employer_cont`, `ec_cont`, `created_by`, `created_datetime`, `modified_by`, `modified_datetime`, `deleted_by`, `deleted_datetime`, `is_deleted`) VALUES ('14', '7250.00000', '7749.99000', '7500.00000', '272.50000', '552.50000', '10.00000', NULL, '2016-04-28 13:56:53', NULL, '2017-01-26 18:53:53', NULL, '2017-01-26 18:53:53', '0');
INSERT INTO `refsss` (`sss_id`, `salary_range_from`, `salary_range_to`, `monthly_salary_credit`, `employee_cont`, `employer_cont`, `ec_cont`, `created_by`, `created_datetime`, `modified_by`, `modified_datetime`, `deleted_by`, `deleted_datetime`, `is_deleted`) VALUES ('15', '7750.00000', '8249.99000', '8000.00000', '290.70000', '589.30000', '10.00000', NULL, '2016-04-28 13:56:53', NULL, '2017-01-26 18:53:53', NULL, '2017-01-26 18:53:53', '0');
INSERT INTO `refsss` (`sss_id`, `salary_range_from`, `salary_range_to`, `monthly_salary_credit`, `employee_cont`, `employer_cont`, `ec_cont`, `created_by`, `created_datetime`, `modified_by`, `modified_datetime`, `deleted_by`, `deleted_datetime`, `is_deleted`) VALUES ('16', '8250.00000', '8749.99000', '8500.00000', '308.80000', '626.20000', '10.00000', NULL, '2016-04-28 13:56:53', NULL, '2017-01-26 18:53:53', NULL, '2017-01-26 18:53:53', '0');
INSERT INTO `refsss` (`sss_id`, `salary_range_from`, `salary_range_to`, `monthly_salary_credit`, `employee_cont`, `employer_cont`, `ec_cont`, `created_by`, `created_datetime`, `modified_by`, `modified_datetime`, `deleted_by`, `deleted_datetime`, `is_deleted`) VALUES ('17', '8750.00000', '9249.99000', '9000.00000', '327.00000', '663.90000', '10.00000', NULL, '2016-04-28 13:56:53', NULL, '2017-01-26 18:53:53', NULL, '2017-01-26 18:53:53', '0');
INSERT INTO `refsss` (`sss_id`, `salary_range_from`, `salary_range_to`, `monthly_salary_credit`, `employee_cont`, `employer_cont`, `ec_cont`, `created_by`, `created_datetime`, `modified_by`, `modified_datetime`, `deleted_by`, `deleted_datetime`, `is_deleted`) VALUES ('18', '9250.00000', '9749.99000', '9500.00000', '345.20000', '699.80000', '10.00000', NULL, '2016-04-28 13:56:53', NULL, '2017-01-26 18:53:53', NULL, '2017-01-26 18:53:53', '0');
INSERT INTO `refsss` (`sss_id`, `salary_range_from`, `salary_range_to`, `monthly_salary_credit`, `employee_cont`, `employer_cont`, `ec_cont`, `created_by`, `created_datetime`, `modified_by`, `modified_datetime`, `deleted_by`, `deleted_datetime`, `is_deleted`) VALUES ('19', '9750.00000', '10249.99000', '10000.00000', '363.30000', '736.70000', '10.00000', NULL, '2016-04-28 13:56:53', NULL, '2017-01-26 18:53:53', NULL, '2017-01-26 18:53:53', '0');
INSERT INTO `refsss` (`sss_id`, `salary_range_from`, `salary_range_to`, `monthly_salary_credit`, `employee_cont`, `employer_cont`, `ec_cont`, `created_by`, `created_datetime`, `modified_by`, `modified_datetime`, `deleted_by`, `deleted_datetime`, `is_deleted`) VALUES ('20', '10250.00000', '10749.99000', '10500.00000', '381.50000', '773.50000', '10.00000', NULL, '2016-04-28 13:56:53', NULL, '2017-01-26 18:53:53', NULL, '2017-01-26 18:53:53', '0');
INSERT INTO `refsss` (`sss_id`, `salary_range_from`, `salary_range_to`, `monthly_salary_credit`, `employee_cont`, `employer_cont`, `ec_cont`, `created_by`, `created_datetime`, `modified_by`, `modified_datetime`, `deleted_by`, `deleted_datetime`, `is_deleted`) VALUES ('21', '10750.00000', '11249.99000', '11000.00000', '399.70000', '810.30000', '10.00000', NULL, '2016-04-28 13:56:53', NULL, '2017-01-26 18:53:53', NULL, '2017-01-26 18:53:53', '0');
INSERT INTO `refsss` (`sss_id`, `salary_range_from`, `salary_range_to`, `monthly_salary_credit`, `employee_cont`, `employer_cont`, `ec_cont`, `created_by`, `created_datetime`, `modified_by`, `modified_datetime`, `deleted_by`, `deleted_datetime`, `is_deleted`) VALUES ('22', '11250.00000', '11749.99000', '11500.00000', '417.80000', '847.20000', '10.00000', NULL, '2016-04-28 13:56:53', NULL, '2017-01-26 18:53:53', NULL, '2017-01-26 18:53:53', '0');
INSERT INTO `refsss` (`sss_id`, `salary_range_from`, `salary_range_to`, `monthly_salary_credit`, `employee_cont`, `employer_cont`, `ec_cont`, `created_by`, `created_datetime`, `modified_by`, `modified_datetime`, `deleted_by`, `deleted_datetime`, `is_deleted`) VALUES ('23', '11750.00000', '12449.99000', '12000.00000', '436.00000', '884.00000', '10.00000', NULL, '2016-04-28 13:56:53', NULL, '2017-01-26 18:53:53', NULL, '2017-01-26 18:53:53', '0');
INSERT INTO `refsss` (`sss_id`, `salary_range_from`, `salary_range_to`, `monthly_salary_credit`, `employee_cont`, `employer_cont`, `ec_cont`, `created_by`, `created_datetime`, `modified_by`, `modified_datetime`, `deleted_by`, `deleted_datetime`, `is_deleted`) VALUES ('24', '12250.00000', '12749.99000', '12500.00000', '454.20000', '920.80000', '10.00000', NULL, '2016-04-28 13:56:53', NULL, '2017-01-26 18:53:53', NULL, '2017-01-26 18:53:53', '0');
INSERT INTO `refsss` (`sss_id`, `salary_range_from`, `salary_range_to`, `monthly_salary_credit`, `employee_cont`, `employer_cont`, `ec_cont`, `created_by`, `created_datetime`, `modified_by`, `modified_datetime`, `deleted_by`, `deleted_datetime`, `is_deleted`) VALUES ('25', '12750.00000', '13249.99000', '13000.00000', '472.30000', '957.70000', '10.00000', NULL, '2016-04-28 13:56:53', NULL, '2017-01-26 18:53:53', NULL, '2017-01-26 18:53:53', '0');
INSERT INTO `refsss` (`sss_id`, `salary_range_from`, `salary_range_to`, `monthly_salary_credit`, `employee_cont`, `employer_cont`, `ec_cont`, `created_by`, `created_datetime`, `modified_by`, `modified_datetime`, `deleted_by`, `deleted_datetime`, `is_deleted`) VALUES ('26', '13250.00000', '13749.99000', '13500.00000', '490.50000', '994.50000', '10.00000', NULL, '2016-04-28 13:56:53', NULL, '2017-01-26 18:53:53', NULL, '2017-01-26 18:53:53', '0');
INSERT INTO `refsss` (`sss_id`, `salary_range_from`, `salary_range_to`, `monthly_salary_credit`, `employee_cont`, `employer_cont`, `ec_cont`, `created_by`, `created_datetime`, `modified_by`, `modified_datetime`, `deleted_by`, `deleted_datetime`, `is_deleted`) VALUES ('27', '13750.00000', '14249.99000', '14000.00000', '508.70000', '1031.30000', '10.00000', NULL, '2016-04-28 13:56:53', NULL, '2017-01-26 18:53:53', NULL, '2017-01-26 18:53:53', '0');
INSERT INTO `refsss` (`sss_id`, `salary_range_from`, `salary_range_to`, `monthly_salary_credit`, `employee_cont`, `employer_cont`, `ec_cont`, `created_by`, `created_datetime`, `modified_by`, `modified_datetime`, `deleted_by`, `deleted_datetime`, `is_deleted`) VALUES ('28', '14250.00000', '14749.99000', '14500.00000', '526.80000', '1068.20000', '10.00000', NULL, '2016-04-28 13:56:53', NULL, '2017-01-26 18:53:53', NULL, '2017-01-26 18:53:53', '0');
INSERT INTO `refsss` (`sss_id`, `salary_range_from`, `salary_range_to`, `monthly_salary_credit`, `employee_cont`, `employer_cont`, `ec_cont`, `created_by`, `created_datetime`, `modified_by`, `modified_datetime`, `deleted_by`, `deleted_datetime`, `is_deleted`) VALUES ('29', '14750.00000', '15249.99000', '15000.00000', '545.00000', '1105.00000', '30.00000', NULL, '2016-04-28 13:56:53', NULL, '2017-01-26 18:53:53', NULL, '2017-01-26 18:53:53', '0');
INSERT INTO `refsss` (`sss_id`, `salary_range_from`, `salary_range_to`, `monthly_salary_credit`, `employee_cont`, `employer_cont`, `ec_cont`, `created_by`, `created_datetime`, `modified_by`, `modified_datetime`, `deleted_by`, `deleted_datetime`, `is_deleted`) VALUES ('30', '15250.00000', '15749.99000', '15500.00000', '563.20000', '1141.80000', '30.00000', NULL, '2016-04-28 13:56:53', NULL, '2017-01-26 18:53:53', NULL, '2017-01-26 18:53:53', '0');
INSERT INTO `refsss` (`sss_id`, `salary_range_from`, `salary_range_to`, `monthly_salary_credit`, `employee_cont`, `employer_cont`, `ec_cont`, `created_by`, `created_datetime`, `modified_by`, `modified_datetime`, `deleted_by`, `deleted_datetime`, `is_deleted`) VALUES ('31', '15750.00000', '100000.00000', '16000.00000', '581.30000', '1178.70000', '30.00000', NULL, '2016-04-28 13:56:53', NULL, '2017-01-26 18:53:53', NULL, '2017-01-26 18:53:53', '0');


#
# TABLE STRUCTURE FOR: reftaxcode
#

DROP TABLE IF EXISTS `reftaxcode`;

CREATE TABLE `reftaxcode` (
  `tax_id` int(11) NOT NULL,
  `ref_payment_type_id` int(11) DEFAULT '0',
  `tax_code` varchar(65) DEFAULT '',
  `tax_desc` varchar(65) DEFAULT '',
  `col1` decimal(19,2) DEFAULT '0.00',
  `col2` decimal(19,2) DEFAULT '0.00',
  `col3` decimal(19,2) DEFAULT '0.00',
  `col4` decimal(19,2) DEFAULT '0.00',
  `col5` decimal(19,2) DEFAULT '0.00',
  `col6` decimal(19,2) DEFAULT '0.00',
  `col7` decimal(19,2) DEFAULT '0.00',
  `col8` decimal(19,2) DEFAULT '0.00',
  `is_deleted` binary(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=910;

INSERT INTO `reftaxcode` (`tax_id`, `ref_payment_type_id`, `tax_code`, `tax_desc`, `col1`, `col2`, `col3`, `col4`, `col5`, `col6`, `col7`, `col8`, `is_deleted`) VALUES ('7', '2', 'Z', '', '1.00', '0.00', '833.00', '2500.00', '5833.00', '11667.00', '20833.00', '41667.00', '0');
INSERT INTO `reftaxcode` (`tax_id`, `ref_payment_type_id`, `tax_code`, `tax_desc`, `col1`, `col2`, `col3`, `col4`, `col5`, `col6`, `col7`, `col8`, `is_deleted`) VALUES ('8', '2', 'S/ME', '', '1.00', '4167.00', '5000.00', '6667.00', '10000.00', '15833.00', '25000.00', '45833.00', '0');
INSERT INTO `reftaxcode` (`tax_id`, `ref_payment_type_id`, `tax_code`, `tax_desc`, `col1`, `col2`, `col3`, `col4`, `col5`, `col6`, `col7`, `col8`, `is_deleted`) VALUES ('9', '2', 'ME1/S1', '', '1.00', '6250.00', '7083.00', '8750.00', '12083.00', '17917.00', '27083.00', '47917.00', '0');
INSERT INTO `reftaxcode` (`tax_id`, `ref_payment_type_id`, `tax_code`, `tax_desc`, `col1`, `col2`, `col3`, `col4`, `col5`, `col6`, `col7`, `col8`, `is_deleted`) VALUES ('10', '2', 'ME2/S2', '', '1.00', '8333.00', '9167.00', '10833.00', '14167.00', '20000.00', '29167.00', '50000.00', '0');
INSERT INTO `reftaxcode` (`tax_id`, `ref_payment_type_id`, `tax_code`, `tax_desc`, `col1`, `col2`, `col3`, `col4`, `col5`, `col6`, `col7`, `col8`, `is_deleted`) VALUES ('11', '2', 'ME3/S3', '', '1.00', '10417.00', '11250.00', '12917.00', '16250.00', '22083.00', '31250.00', '52083.00', '0');
INSERT INTO `reftaxcode` (`tax_id`, `ref_payment_type_id`, `tax_code`, `tax_desc`, `col1`, `col2`, `col3`, `col4`, `col5`, `col6`, `col7`, `col8`, `is_deleted`) VALUES ('12', '2', 'ME4/S4', '', '1.00', '12500.00', '13333.00', '15000.00', '18333.00', '24167.00', '33333.00', '54167.00', '0');
INSERT INTO `reftaxcode` (`tax_id`, `ref_payment_type_id`, `tax_code`, `tax_desc`, `col1`, `col2`, `col3`, `col4`, `col5`, `col6`, `col7`, `col8`, `is_deleted`) VALUES ('1', '1', 'Z', '', '1.00', '0.00', '417.00', '1250.00', '2917.00', '5833.00', '10417.00', '20833.00', '0');
INSERT INTO `reftaxcode` (`tax_id`, `ref_payment_type_id`, `tax_code`, `tax_desc`, `col1`, `col2`, `col3`, `col4`, `col5`, `col6`, `col7`, `col8`, `is_deleted`) VALUES ('2', '1', 'S/ME', '', '1.00', '2083.00', '2500.00', '3333.00', '5000.00', '7917.00', '12500.00', '22917.00', '0');
INSERT INTO `reftaxcode` (`tax_id`, `ref_payment_type_id`, `tax_code`, `tax_desc`, `col1`, `col2`, `col3`, `col4`, `col5`, `col6`, `col7`, `col8`, `is_deleted`) VALUES ('3', '1', 'ME1/S1', '', '1.00', '3125.00', '3542.00', '4375.00', '6042.00', '8958.00', '13542.00', '23958.00', '0');
INSERT INTO `reftaxcode` (`tax_id`, `ref_payment_type_id`, `tax_code`, `tax_desc`, `col1`, `col2`, `col3`, `col4`, `col5`, `col6`, `col7`, `col8`, `is_deleted`) VALUES ('4', '1', 'ME2/S2', '', '1.00', '4167.00', '4583.00', '5417.00', '7083.00', '10000.00', '14583.00', '25000.00', '0');
INSERT INTO `reftaxcode` (`tax_id`, `ref_payment_type_id`, `tax_code`, `tax_desc`, `col1`, `col2`, `col3`, `col4`, `col5`, `col6`, `col7`, `col8`, `is_deleted`) VALUES ('5', '1', 'ME3/S3', '', '1.00', '5208.00', '5625.00', '6458.00', '8125.00', '11042.00', '15625.00', '26042.00', '0');
INSERT INTO `reftaxcode` (`tax_id`, `ref_payment_type_id`, `tax_code`, `tax_desc`, `col1`, `col2`, `col3`, `col4`, `col5`, `col6`, `col7`, `col8`, `is_deleted`) VALUES ('6', '1', 'ME4/S4', '', '1.00', '6250.00', '6667.00', '7500.00', '9167.00', '12083.00', '16667.00', '27083.00', '0');
INSERT INTO `reftaxcode` (`tax_id`, `ref_payment_type_id`, `tax_code`, `tax_desc`, `col1`, `col2`, `col3`, `col4`, `col5`, `col6`, `col7`, `col8`, `is_deleted`) VALUES ('13', '3', 'Z', '', '1.00', '0.00', '33.00', '99.00', '231.00', '462.00', '825.00', '1650.00', '0');
INSERT INTO `reftaxcode` (`tax_id`, `ref_payment_type_id`, `tax_code`, `tax_desc`, `col1`, `col2`, `col3`, `col4`, `col5`, `col6`, `col7`, `col8`, `is_deleted`) VALUES ('14', '3', 'S/ME', '', '1.00', '165.00', '198.00', '264.00', '396.00', '627.00', '990.00', '1815.00', '0');
INSERT INTO `reftaxcode` (`tax_id`, `ref_payment_type_id`, `tax_code`, `tax_desc`, `col1`, `col2`, `col3`, `col4`, `col5`, `col6`, `col7`, `col8`, `is_deleted`) VALUES ('15', '3', 'ME1/S1', '', '1.00', '248.00', '281.00', '347.00', '479.00', '710.00', '1073.00', '1898.00', '0');
INSERT INTO `reftaxcode` (`tax_id`, `ref_payment_type_id`, `tax_code`, `tax_desc`, `col1`, `col2`, `col3`, `col4`, `col5`, `col6`, `col7`, `col8`, `is_deleted`) VALUES ('16', '3', 'ME2/S2', '', '1.00', '330.00', '363.00', '429.00', '561.00', '792.00', '1155.00', '1980.00', '0');
INSERT INTO `reftaxcode` (`tax_id`, `ref_payment_type_id`, `tax_code`, `tax_desc`, `col1`, `col2`, `col3`, `col4`, `col5`, `col6`, `col7`, `col8`, `is_deleted`) VALUES ('17', '3', 'ME3/S3', '', '1.00', '413.00', '446.00', '512.00', '644.00', '875.00', '1238.00', '2145.00', '0');
INSERT INTO `reftaxcode` (`tax_id`, `ref_payment_type_id`, `tax_code`, `tax_desc`, `col1`, `col2`, `col3`, `col4`, `col5`, `col6`, `col7`, `col8`, `is_deleted`) VALUES ('18', '3', 'ME4/S4', '', '1.00', '495.00', '528.00', '594.00', '726.00', '957.00', '1320.00', '2145.00', '0');


#
# TABLE STRUCTURE FOR: sched_refpay
#

DROP TABLE IF EXISTS `sched_refpay`;

CREATE TABLE `sched_refpay` (
  `sched_refpay_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `schedpay` varchar(50) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) unsigned DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `date_deleted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_by` int(11) NOT NULL,
  PRIMARY KEY (`sched_refpay_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=8192;

INSERT INTO `sched_refpay` (`sched_refpay_id`, `schedpay`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `date_deleted`, `deleted_by`) VALUES ('1', 'Regular Pay', 'Regular Pay', '1', NULL, '2017-04-26 09:24:13', '2017-05-02 11:18:05', '0', '2017-04-26 09:28:48', '1');
INSERT INTO `sched_refpay` (`sched_refpay_id`, `schedpay`, `description`, `created_by`, `modified_by`, `date_created`, `date_modified`, `is_deleted`, `date_deleted`, `deleted_by`) VALUES ('2', 'Holiday Pay', 'Holiday Pay', '1', NULL, '2017-05-02 11:16:24', '2017-05-02 11:18:20', '0', '0000-00-00 00:00:00', '1');


#
# TABLE STRUCTURE FOR: sched_refshift
#

DROP TABLE IF EXISTS `sched_refshift`;

CREATE TABLE `sched_refshift` (
  `sched_refshift_id` int(11) NOT NULL AUTO_INCREMENT,
  `schedule_template_advance_in_out` int(11) NOT NULL,
  `schedule_template_timein` time DEFAULT NULL,
  `schedule_template_timeout` time DEFAULT NULL,
  `schedule_template_break_time` time DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `date_deleted` varchar(45) DEFAULT NULL,
  `deleted_by` varchar(45) DEFAULT NULL,
  `shift` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`sched_refshift_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO `sched_refshift` (`sched_refshift_id`, `schedule_template_advance_in_out`, `schedule_template_timein`, `schedule_template_timeout`, `schedule_template_break_time`, `is_deleted`, `date_deleted`, `deleted_by`, `shift`) VALUES ('1', '15', '09:00:00', '18:00:00', '01:00:00', '0', NULL, NULL, '1ST SHIFT');
INSERT INTO `sched_refshift` (`sched_refshift_id`, `schedule_template_advance_in_out`, `schedule_template_timein`, `schedule_template_timeout`, `schedule_template_break_time`, `is_deleted`, `date_deleted`, `deleted_by`, `shift`) VALUES ('2', '15', '19:00:00', '21:00:00', '00:00:00', '0', NULL, NULL, '2ND SHIFT');
INSERT INTO `sched_refshift` (`sched_refshift_id`, `schedule_template_advance_in_out`, `schedule_template_timein`, `schedule_template_timeout`, `schedule_template_break_time`, `is_deleted`, `date_deleted`, `deleted_by`, `shift`) VALUES ('3', '15', '22:00:00', '06:00:00', '00:00:00', '0', NULL, NULL, '3RD / GRAVEYARD SHIFT');


#
# TABLE STRUCTURE FOR: sched_weekly_stats
#

DROP TABLE IF EXISTS `sched_weekly_stats`;

CREATE TABLE `sched_weekly_stats` (
  `sched_weekly_stats_id` int(11) NOT NULL AUTO_INCREMENT,
  `schedule_employee_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`sched_weekly_stats_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 PACK_KEYS=0;

#
# TABLE STRUCTURE FOR: schedule_employee
#

DROP TABLE IF EXISTS `schedule_employee`;

CREATE TABLE `schedule_employee` (
  `schedule_employee_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) DEFAULT NULL,
  `pay_period_id` int(11) DEFAULT NULL,
  `sched_refshift_id` int(11) DEFAULT NULL,
  `sched_refpay_id` int(11) DEFAULT NULL,
  `day` varchar(20) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `advance_in_out` int(11) NOT NULL DEFAULT '0',
  `time_in` datetime DEFAULT NULL,
  `time_out` datetime DEFAULT NULL,
  `total` time DEFAULT NULL,
  `date_created` datetime DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_by` int(11) DEFAULT NULL,
  `is_in` tinyint(1) DEFAULT '0',
  `is_out` tinyint(1) DEFAULT '0',
  `clock_in` datetime DEFAULT NULL,
  `clock_out` datetime DEFAULT NULL,
  `stat_completion` decimal(11,0) NOT NULL DEFAULT '0',
  `date_deleted` datetime DEFAULT '0000-00-00 00:00:00',
  `break_time` time NOT NULL DEFAULT '00:00:00',
  `late` decimal(11,0) NOT NULL,
  PRIMARY KEY (`schedule_employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=latin1 PACK_KEYS=0;

INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('1', '1', '14', '1', NULL, 'Sat', '2017-07-01', '15', '2017-07-01 09:00:00', '2017-07-01 18:00:00', '08:00:00', '2017-06-28 16:42:21', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '0', '0', NULL, NULL, '0', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('2', '1', '14', '1', NULL, 'Sun', '2017-07-02', '15', '2017-07-02 09:00:00', '2017-07-02 18:00:00', '08:00:00', '2017-06-28 16:42:21', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '0', '0', NULL, NULL, '0', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('3', '1', '14', '1', NULL, 'Mon', '2017-07-03', '15', '2017-07-03 09:00:00', '2017-07-03 18:00:00', '08:00:00', '2017-06-28 16:42:21', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '0', '0', NULL, NULL, '0', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('4', '1', '14', '1', NULL, 'Tue', '2017-07-04', '15', '2017-07-04 09:00:00', '2017-07-04 18:00:00', '08:00:00', '2017-06-28 16:42:21', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '0', '0', NULL, NULL, '0', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('5', '1', '14', '1', NULL, 'Wed', '2017-07-05', '15', '2017-07-05 09:00:00', '2017-07-05 18:00:00', '08:00:00', '2017-06-28 16:42:21', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '0', '0', NULL, NULL, '0', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('6', '1', '14', '1', NULL, 'Thu', '2017-07-06', '15', '2017-07-06 09:00:00', '2017-07-06 18:00:00', '08:00:00', '2017-06-28 16:42:21', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '0', '0', NULL, NULL, '0', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('7', '1', '14', '1', NULL, 'Fri', '2017-07-07', '15', '2017-07-07 09:00:00', '2017-07-07 18:00:00', '08:00:00', '2017-06-28 16:42:21', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '0', '0', NULL, NULL, '0', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('8', '1', '14', '1', NULL, 'Sat', '2017-07-08', '15', '2017-07-08 09:00:00', '2017-07-08 18:00:00', '08:00:00', '2017-06-28 16:42:21', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '0', '0', NULL, NULL, '0', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('9', '1', '14', '1', NULL, 'Sun', '2017-07-09', '15', '2017-07-09 09:00:00', '2017-07-09 18:00:00', '08:00:00', '2017-06-28 16:42:21', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '0', '0', NULL, NULL, '0', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('10', '1', '14', '1', NULL, 'Mon', '2017-07-10', '15', '2017-07-10 09:00:00', '2017-07-10 18:00:00', '08:00:00', '2017-06-28 16:42:21', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '0', '0', NULL, NULL, '0', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('11', '1', '14', '1', NULL, 'Tue', '2017-07-11', '15', '2017-07-11 09:00:00', '2017-07-11 18:00:00', '08:00:00', '2017-06-28 16:42:21', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '0', '0', NULL, NULL, '0', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('12', '1', '14', '1', NULL, 'Wed', '2017-07-12', '15', '2017-07-12 09:00:00', '2017-07-12 18:00:00', '08:00:00', '2017-06-28 16:42:21', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '0', '0', NULL, NULL, '0', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('13', '1', '14', '1', NULL, 'Thu', '2017-07-13', '15', '2017-07-13 09:00:00', '2017-07-13 18:00:00', '08:00:00', '2017-06-28 16:42:21', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '1', '1', '2017-07-13 10:29:09', '2017-07-13 11:20:35', '0', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('14', '1', '14', '1', NULL, 'Fri', '2017-07-14', '15', '2017-07-14 09:00:00', '2017-07-14 18:00:00', '08:00:00', '2017-06-28 16:42:21', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '0', '0', NULL, NULL, '0', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('15', '1', '14', '1', NULL, 'Sat', '2017-07-15', '15', '2017-07-15 09:00:00', '2017-07-15 18:00:00', '08:00:00', '2017-06-28 16:42:21', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '0', '0', NULL, NULL, '0', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('16', '2', '14', '1', NULL, 'Sat', '2017-07-01', '15', '2017-07-01 09:00:00', '2017-07-01 18:00:00', '08:00:00', '2017-06-28 16:42:21', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '0', '0', NULL, NULL, '0', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('17', '2', '14', '1', NULL, 'Sun', '2017-07-02', '15', '2017-07-02 09:00:00', '2017-07-02 18:00:00', '08:00:00', '2017-06-28 16:42:21', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '0', '0', NULL, NULL, '0', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('18', '2', '14', '1', NULL, 'Mon', '2017-07-03', '15', '2017-07-03 09:00:00', '2017-07-03 18:00:00', '08:00:00', '2017-06-28 16:42:21', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '0', '0', NULL, NULL, '0', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('19', '2', '14', '1', NULL, 'Tue', '2017-07-04', '15', '2017-07-04 09:00:00', '2017-07-04 18:00:00', '08:00:00', '2017-06-28 16:42:21', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '0', '0', NULL, NULL, '0', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('20', '2', '14', '1', NULL, 'Wed', '2017-07-05', '15', '2017-07-05 09:00:00', '2017-07-05 18:00:00', '08:00:00', '2017-06-28 16:42:21', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '0', '0', NULL, NULL, '0', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('21', '2', '14', '1', NULL, 'Thu', '2017-07-06', '15', '2017-07-06 09:00:00', '2017-07-06 18:00:00', '08:00:00', '2017-06-28 16:42:21', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '0', '0', NULL, NULL, '0', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('22', '2', '14', '1', NULL, 'Fri', '2017-07-07', '15', '2017-07-07 09:00:00', '2017-07-07 18:00:00', '08:00:00', '2017-06-28 16:42:21', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '0', '0', NULL, NULL, '0', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('23', '2', '14', '1', NULL, 'Sat', '2017-07-08', '15', '2017-07-08 09:00:00', '2017-07-08 18:00:00', '08:00:00', '2017-06-28 16:42:21', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '0', '0', NULL, NULL, '0', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('24', '2', '14', '1', NULL, 'Sun', '2017-07-09', '15', '2017-07-09 09:00:00', '2017-07-09 18:00:00', '08:00:00', '2017-06-28 16:42:21', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '0', '0', NULL, NULL, '0', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('25', '2', '14', '1', NULL, 'Mon', '2017-07-10', '15', '2017-07-10 09:00:00', '2017-07-10 18:00:00', '08:00:00', '2017-06-28 16:42:21', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '0', '0', NULL, NULL, '0', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('26', '2', '14', '1', NULL, 'Tue', '2017-07-11', '15', '2017-07-11 09:00:00', '2017-07-11 18:00:00', '08:00:00', '2017-06-28 16:42:21', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '0', '0', NULL, NULL, '0', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('27', '2', '14', '1', NULL, 'Wed', '2017-07-12', '15', '2017-07-12 09:00:00', '2017-07-12 18:00:00', '08:00:00', '2017-06-28 16:42:21', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '0', '0', NULL, NULL, '0', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('28', '2', '14', '1', NULL, 'Thu', '2017-07-13', '15', '2017-07-13 09:00:00', '2017-07-13 18:00:00', '08:00:00', '2017-06-28 16:42:21', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '0', '0', NULL, NULL, '0', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('29', '2', '14', '1', NULL, 'Fri', '2017-07-14', '15', '2017-07-14 09:00:00', '2017-07-14 18:00:00', '08:00:00', '2017-06-28 16:42:21', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '0', '0', NULL, NULL, '0', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('30', '2', '14', '1', NULL, 'Sat', '2017-07-15', '15', '2017-07-15 09:00:00', '2017-07-15 18:00:00', '08:00:00', '2017-06-28 16:42:21', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '0', '0', NULL, NULL, '0', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('31', '3', '14', '1', NULL, 'Sat', '2017-07-01', '15', '2017-07-01 09:00:00', '2017-07-01 18:00:00', '08:00:00', '2017-06-28 16:42:21', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '0', '0', NULL, NULL, '0', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('32', '3', '14', '1', NULL, 'Sun', '2017-07-02', '15', '2017-07-02 09:00:00', '2017-07-02 18:00:00', '08:00:00', '2017-06-28 16:42:21', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '0', '0', NULL, NULL, '0', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('33', '3', '14', '1', NULL, 'Mon', '2017-07-03', '15', '2017-07-03 09:00:00', '2017-07-03 18:00:00', '08:00:00', '2017-06-28 16:42:21', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '0', '0', NULL, NULL, '0', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('34', '3', '14', '1', NULL, 'Tue', '2017-07-04', '15', '2017-07-04 09:00:00', '2017-07-04 18:00:00', '08:00:00', '2017-06-28 16:42:21', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '0', '0', NULL, NULL, '0', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('35', '3', '14', '1', NULL, 'Wed', '2017-07-05', '15', '2017-07-05 09:00:00', '2017-07-05 18:00:00', '08:00:00', '2017-06-28 16:42:21', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '0', '0', NULL, NULL, '0', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('36', '3', '14', '1', NULL, 'Thu', '2017-07-06', '15', '2017-07-06 09:00:00', '2017-07-06 18:00:00', '08:00:00', '2017-06-28 16:42:21', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '0', '0', NULL, NULL, '0', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('37', '3', '14', '1', NULL, 'Fri', '2017-07-07', '15', '2017-07-07 09:00:00', '2017-07-07 18:00:00', '08:00:00', '2017-06-28 16:42:21', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '0', '0', NULL, NULL, '0', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('38', '3', '14', '1', NULL, 'Sat', '2017-07-08', '15', '2017-07-08 09:00:00', '2017-07-08 18:00:00', '08:00:00', '2017-06-28 16:42:21', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '0', '0', NULL, NULL, '0', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('39', '3', '14', '1', NULL, 'Sun', '2017-07-09', '15', '2017-07-09 09:00:00', '2017-07-09 18:00:00', '08:00:00', '2017-06-28 16:42:21', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '0', '0', NULL, NULL, '0', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('40', '3', '14', '1', NULL, 'Mon', '2017-07-10', '15', '2017-07-10 09:00:00', '2017-07-10 18:00:00', '08:00:00', '2017-06-28 16:42:21', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '0', '0', NULL, NULL, '0', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('41', '3', '14', '1', NULL, 'Tue', '2017-07-11', '15', '2017-07-11 09:00:00', '2017-07-11 18:00:00', '08:00:00', '2017-06-28 16:42:21', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '0', '0', NULL, NULL, '0', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('42', '3', '14', '1', NULL, 'Wed', '2017-07-12', '15', '2017-07-12 09:00:00', '2017-07-12 18:00:00', '08:00:00', '2017-06-28 16:42:21', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '0', '0', NULL, NULL, '0', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('43', '3', '14', '1', NULL, 'Thu', '2017-07-13', '15', '2017-07-13 09:00:00', '2017-07-13 18:00:00', '08:00:00', '2017-06-28 16:42:21', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '0', '0', NULL, NULL, '0', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('44', '3', '14', '1', NULL, 'Fri', '2017-07-14', '15', '2017-07-14 09:00:00', '2017-07-14 18:00:00', '08:00:00', '2017-06-28 16:42:21', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '0', '0', NULL, NULL, '0', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('45', '3', '14', '1', NULL, 'Sat', '2017-07-15', '15', '2017-07-15 09:00:00', '2017-07-15 18:00:00', '08:00:00', '2017-06-28 16:42:21', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '0', '0', NULL, NULL, '0', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('46', '1', '13', '1', NULL, 'Fri', '2017-06-16', '15', '2017-06-16 09:00:00', '2017-06-16 18:00:00', '08:00:00', '2017-06-28 16:42:56', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '1', '1', '2017-06-16 09:00:00', '2017-06-16 18:00:00', '100', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('47', '1', '13', '1', NULL, 'Sat', '2017-06-17', '15', '2017-06-17 09:00:00', '2017-06-17 18:00:00', '08:00:00', '2017-06-28 16:42:56', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '1', '1', '2017-06-17 09:00:00', '2017-06-17 18:00:00', '100', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('48', '1', '13', '1', NULL, 'Sun', '2017-06-18', '15', '2017-06-18 09:00:00', '2017-06-18 18:00:00', '08:00:00', '2017-06-28 16:42:56', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '1', '1', '2017-06-18 09:00:00', '2017-06-18 18:00:00', '100', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('49', '1', '13', '1', NULL, 'Mon', '2017-06-19', '15', '2017-06-19 09:00:00', '2017-06-19 18:00:00', '08:00:00', '2017-06-28 16:42:56', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '1', '1', '2017-06-19 09:00:00', '2017-06-19 18:00:00', '100', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('50', '1', '13', '1', NULL, 'Tue', '2017-06-20', '15', '2017-06-20 09:00:00', '2017-06-20 18:00:00', '08:00:00', '2017-06-28 16:42:56', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '1', '1', '2017-06-20 09:00:00', '2017-06-20 18:00:00', '100', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('51', '1', '13', '1', NULL, 'Wed', '2017-06-21', '15', '2017-06-21 09:00:00', '2017-06-21 18:00:00', '08:00:00', '2017-06-28 16:42:56', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '1', '1', '2017-06-21 09:00:00', '2017-06-21 18:00:00', '100', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('52', '1', '13', '1', NULL, 'Thu', '2017-06-22', '15', '2017-06-22 09:00:00', '2017-06-22 18:00:00', '08:00:00', '2017-06-28 16:42:56', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '1', '1', '2017-06-22 09:00:00', '2017-06-22 18:00:00', '100', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('53', '1', '13', '1', NULL, 'Fri', '2017-06-23', '15', '2017-06-23 09:00:00', '2017-06-23 18:00:00', '08:00:00', '2017-06-28 16:42:56', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '1', '1', '2017-06-23 09:00:00', '2017-06-23 18:00:00', '100', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('54', '1', '13', '1', NULL, 'Sat', '2017-06-24', '15', '2017-06-24 09:00:00', '2017-06-24 18:00:00', '08:00:00', '2017-06-28 16:42:56', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '1', '1', '2017-06-24 09:00:00', '2017-06-24 18:00:00', '100', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('55', '1', '13', '1', NULL, 'Sun', '2017-06-25', '15', '2017-06-25 09:00:00', '2017-06-25 18:00:00', '08:00:00', '2017-06-28 16:42:56', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '1', '1', '2017-06-25 09:00:00', '2017-06-25 18:00:00', '100', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('56', '1', '13', '1', NULL, 'Mon', '2017-06-26', '15', '2017-06-26 09:00:00', '2017-06-26 18:00:00', '08:00:00', '2017-06-28 16:42:56', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '1', '1', '2017-06-26 09:00:00', '2017-06-26 18:00:00', '100', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('57', '1', '13', '1', NULL, 'Tue', '2017-06-27', '15', '2017-06-27 09:00:00', '2017-06-27 18:00:00', '08:00:00', '2017-06-28 16:42:56', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '1', '1', '2017-06-27 09:00:00', '2017-06-27 18:00:00', '100', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('58', '1', '13', '1', NULL, 'Wed', '2017-06-28', '15', '2017-06-28 09:00:00', '2017-06-28 18:00:00', '08:00:00', '2017-06-28 16:42:56', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '1', '1', '2017-06-28 09:00:00', '2017-06-28 18:00:00', '100', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('59', '1', '13', '1', NULL, 'Thu', '2017-06-29', '15', '2017-06-29 09:00:00', '2017-06-29 18:00:00', '08:00:00', '2017-06-28 16:42:56', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '1', '0', '2017-06-29 09:50:30', NULL, '0', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('60', '1', '13', '1', NULL, 'Fri', '2017-06-30', '15', '2017-06-30 09:00:00', '2017-06-30 18:00:00', '08:00:00', '2017-06-28 16:42:56', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '0', '0', NULL, NULL, '0', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('61', '2', '13', '1', NULL, 'Fri', '2017-06-16', '15', '2017-06-16 09:00:00', '2017-06-16 18:00:00', '08:00:00', '2017-06-28 16:42:56', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '0', '0', NULL, NULL, '0', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('62', '2', '13', '1', NULL, 'Sat', '2017-06-17', '15', '2017-06-17 09:00:00', '2017-06-17 18:00:00', '08:00:00', '2017-06-28 16:42:56', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '0', '0', NULL, NULL, '0', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('63', '2', '13', '1', NULL, 'Sun', '2017-06-18', '15', '2017-06-18 09:00:00', '2017-06-18 18:00:00', '08:00:00', '2017-06-28 16:42:56', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '0', '0', NULL, NULL, '0', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('64', '2', '13', '1', NULL, 'Mon', '2017-06-19', '15', '2017-06-19 09:00:00', '2017-06-19 18:00:00', '08:00:00', '2017-06-28 16:42:56', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '0', '0', NULL, NULL, '0', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('65', '2', '13', '1', NULL, 'Tue', '2017-06-20', '15', '2017-06-20 09:00:00', '2017-06-20 18:00:00', '08:00:00', '2017-06-28 16:42:56', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '0', '0', NULL, NULL, '0', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('66', '2', '13', '1', NULL, 'Wed', '2017-06-21', '15', '2017-06-21 09:00:00', '2017-06-21 18:00:00', '08:00:00', '2017-06-28 16:42:56', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '0', '0', NULL, NULL, '0', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('67', '2', '13', '1', NULL, 'Thu', '2017-06-22', '15', '2017-06-22 09:00:00', '2017-06-22 18:00:00', '08:00:00', '2017-06-28 16:42:56', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '0', '0', NULL, NULL, '0', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('68', '2', '13', '1', NULL, 'Fri', '2017-06-23', '15', '2017-06-23 09:00:00', '2017-06-23 18:00:00', '08:00:00', '2017-06-28 16:42:56', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '0', '0', NULL, NULL, '0', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('69', '2', '13', '1', NULL, 'Sat', '2017-06-24', '15', '2017-06-24 09:00:00', '2017-06-24 18:00:00', '08:00:00', '2017-06-28 16:42:56', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '0', '0', NULL, NULL, '0', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('70', '2', '13', '1', NULL, 'Sun', '2017-06-25', '15', '2017-06-25 09:00:00', '2017-06-25 18:00:00', '08:00:00', '2017-06-28 16:42:56', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '0', '0', NULL, NULL, '0', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('71', '2', '13', '1', NULL, 'Mon', '2017-06-26', '15', '2017-06-26 09:00:00', '2017-06-26 18:00:00', '08:00:00', '2017-06-28 16:42:56', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '0', '0', NULL, NULL, '0', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('72', '2', '13', '1', NULL, 'Tue', '2017-06-27', '15', '2017-06-27 09:00:00', '2017-06-27 18:00:00', '08:00:00', '2017-06-28 16:42:56', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '0', '0', NULL, NULL, '0', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('73', '2', '13', '1', NULL, 'Wed', '2017-06-28', '15', '2017-06-28 09:00:00', '2017-06-28 18:00:00', '08:00:00', '2017-06-28 16:42:56', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '0', '0', NULL, NULL, '0', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('74', '2', '13', '1', NULL, 'Thu', '2017-06-29', '15', '2017-06-29 09:00:00', '2017-06-29 18:00:00', '08:00:00', '2017-06-28 16:42:56', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '0', '0', NULL, NULL, '0', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('75', '2', '13', '1', NULL, 'Fri', '2017-06-30', '15', '2017-06-30 09:00:00', '2017-06-30 18:00:00', '08:00:00', '2017-06-28 16:42:56', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '0', '0', NULL, NULL, '0', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('76', '3', '13', '1', NULL, 'Fri', '2017-06-16', '15', '2017-06-16 09:00:00', '2017-06-16 18:00:00', '08:00:00', '2017-06-28 16:42:56', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '0', '0', NULL, NULL, '0', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('77', '3', '13', '1', NULL, 'Sat', '2017-06-17', '15', '2017-06-17 09:00:00', '2017-06-17 18:00:00', '08:00:00', '2017-06-28 16:42:56', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '0', '0', NULL, NULL, '0', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('78', '3', '13', '1', NULL, 'Sun', '2017-06-18', '15', '2017-06-18 09:00:00', '2017-06-18 18:00:00', '08:00:00', '2017-06-28 16:42:56', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '0', '0', NULL, NULL, '0', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('79', '3', '13', '1', NULL, 'Mon', '2017-06-19', '15', '2017-06-19 09:00:00', '2017-06-19 18:00:00', '08:00:00', '2017-06-28 16:42:56', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '0', '0', NULL, NULL, '0', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('80', '3', '13', '1', NULL, 'Tue', '2017-06-20', '15', '2017-06-20 09:00:00', '2017-06-20 18:00:00', '08:00:00', '2017-06-28 16:42:56', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '0', '0', NULL, NULL, '0', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('81', '3', '13', '1', NULL, 'Wed', '2017-06-21', '15', '2017-06-21 09:00:00', '2017-06-21 18:00:00', '08:00:00', '2017-06-28 16:42:56', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '0', '0', NULL, NULL, '0', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('82', '3', '13', '1', NULL, 'Thu', '2017-06-22', '15', '2017-06-22 09:00:00', '2017-06-22 18:00:00', '08:00:00', '2017-06-28 16:42:56', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '0', '0', NULL, NULL, '0', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('83', '3', '13', '1', NULL, 'Fri', '2017-06-23', '15', '2017-06-23 09:00:00', '2017-06-23 18:00:00', '08:00:00', '2017-06-28 16:42:56', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '0', '0', NULL, NULL, '0', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('84', '3', '13', '1', NULL, 'Sat', '2017-06-24', '15', '2017-06-24 09:00:00', '2017-06-24 18:00:00', '08:00:00', '2017-06-28 16:42:56', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '0', '0', NULL, NULL, '0', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('85', '3', '13', '1', NULL, 'Sun', '2017-06-25', '15', '2017-06-25 09:00:00', '2017-06-25 18:00:00', '08:00:00', '2017-06-28 16:42:56', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '0', '0', NULL, NULL, '0', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('86', '3', '13', '1', NULL, 'Mon', '2017-06-26', '15', '2017-06-26 09:00:00', '2017-06-26 18:00:00', '08:00:00', '2017-06-28 16:42:56', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '0', '0', NULL, NULL, '0', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('87', '3', '13', '1', NULL, 'Tue', '2017-06-27', '15', '2017-06-27 09:00:00', '2017-06-27 18:00:00', '08:00:00', '2017-06-28 16:42:56', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '0', '0', NULL, NULL, '0', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('88', '3', '13', '1', NULL, 'Wed', '2017-06-28', '15', '2017-06-28 09:00:00', '2017-06-28 18:00:00', '08:00:00', '2017-06-28 16:42:56', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '0', '0', NULL, NULL, '0', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('89', '3', '13', '1', NULL, 'Thu', '2017-06-29', '15', '2017-06-29 09:00:00', '2017-06-29 18:00:00', '08:00:00', '2017-06-28 16:42:56', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '1', '0', '2017-06-29 09:50:09', NULL, '0', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('90', '3', '13', '1', NULL, 'Fri', '2017-06-30', '15', '2017-06-30 09:00:00', '2017-06-30 18:00:00', '08:00:00', '2017-06-28 16:42:56', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '0', '0', NULL, NULL, '0', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('91', '4', '14', '1', NULL, 'Sat', '2017-07-01', '15', '2017-07-01 09:00:00', '2017-07-01 18:00:00', '08:00:00', '2017-07-06 11:26:03', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '0', '0', NULL, NULL, '0', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('92', '4', '14', '1', NULL, 'Sun', '2017-07-02', '15', '2017-07-02 09:00:00', '2017-07-02 18:00:00', '08:00:00', '2017-07-06 11:26:03', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '0', '0', NULL, NULL, '0', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('93', '4', '14', '1', NULL, 'Mon', '2017-07-03', '15', '2017-07-03 09:00:00', '2017-07-03 18:00:00', '08:00:00', '2017-07-13 11:15:42', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '1', '1', '2017-07-03 08:50:00', '2017-07-03 18:05:00', '100', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('94', '4', '14', '1', NULL, 'Tue', '2017-07-04', '15', '2017-07-04 09:00:00', '2017-07-04 18:00:00', '08:00:00', '2017-07-06 11:26:03', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '1', '1', '2017-07-04 08:45:00', '2017-07-04 18:10:00', '100', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('95', '4', '14', '1', NULL, 'Wed', '2017-07-05', '15', '2017-07-05 09:00:00', '2017-07-05 18:00:00', '08:00:00', '2017-07-06 11:26:03', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '1', '1', '2017-07-05 08:58:00', '2017-07-05 18:02:00', '100', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('96', '4', '14', '1', NULL, 'Thu', '2017-07-06', '15', '2017-07-06 09:00:00', '2017-07-06 18:00:00', '08:00:00', '2017-07-06 11:26:03', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '1', '1', '2017-07-06 08:55:00', '2017-07-06 18:05:00', '100', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('97', '4', '14', '1', NULL, 'Fri', '2017-07-07', '15', '2017-07-07 09:00:00', '2017-07-07 18:00:00', '08:00:00', '2017-07-06 11:26:03', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '1', '1', '2017-07-07 08:59:00', '2017-07-07 18:15:00', '100', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('100', '4', '14', '1', NULL, 'Mon', '2017-07-10', '15', '2017-07-10 09:00:00', '2017-07-10 18:00:00', '08:00:00', '2017-07-06 11:26:03', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '1', '1', '2017-07-10 09:00:00', '2017-07-10 18:00:00', '100', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('101', '4', '14', '1', NULL, 'Tue', '2017-07-11', '15', '2017-07-11 09:00:00', '2017-07-11 18:00:00', '08:00:00', '2017-07-06 11:26:03', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '1', '1', '2017-07-11 09:00:00', '2017-07-11 18:00:00', '100', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('102', '4', '14', '1', NULL, 'Wed', '2017-07-12', '15', '2017-07-12 09:00:00', '2017-07-12 18:00:00', '08:00:00', '2017-07-06 11:26:03', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '1', '1', '2017-07-12 09:00:00', '2017-07-12 18:00:00', '100', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('103', '4', '14', '1', NULL, 'Thu', '2017-07-13', '15', '2017-07-13 09:00:00', '2017-07-13 18:00:00', '08:00:00', '2017-07-06 11:26:03', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '1', '1', '2017-07-13 10:39:44', '2017-07-13 10:42:34', '0', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('104', '4', '14', '1', NULL, 'Fri', '2017-07-14', '15', '2017-07-14 09:00:00', '2017-07-14 18:00:00', '08:00:00', '2017-07-06 11:26:03', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '1', '1', '2017-07-14 09:30:00', '2017-07-14 18:00:00', '94', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('105', '4', '14', '1', NULL, 'Sat', '2017-07-15', '15', '2017-07-15 09:00:00', '2017-07-15 18:00:00', '08:00:00', '2017-07-06 11:26:04', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '0', '0', NULL, NULL, '0', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('106', '5', '14', '1', NULL, 'Sat', '2017-07-01', '15', '2017-07-01 09:00:00', '2017-07-01 18:00:00', '08:00:00', '2017-07-13 10:34:25', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '0', '0', NULL, NULL, '0', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('107', '5', '14', '1', NULL, 'Sun', '2017-07-02', '15', '2017-07-02 09:00:00', '2017-07-02 18:00:00', '08:00:00', '2017-07-13 10:34:25', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '0', '0', NULL, NULL, '0', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('108', '5', '14', '1', NULL, 'Mon', '2017-07-03', '15', '2017-07-03 09:00:00', '2017-07-03 18:00:00', '08:00:00', '2017-07-13 10:34:25', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '1', '1', '2017-07-03 08:55:00', '2017-07-03 18:05:00', '100', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('109', '5', '14', '1', NULL, 'Tue', '2017-07-04', '15', '2017-07-04 09:00:00', '2017-07-04 18:00:00', '08:00:00', '2017-07-13 10:34:25', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '1', '1', '2017-07-04 09:00:00', '2017-07-04 18:00:00', '100', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('110', '5', '14', '1', NULL, 'Wed', '2017-07-05', '15', '2017-07-05 09:00:00', '2017-07-05 18:00:00', '08:00:00', '2017-07-13 10:34:25', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '1', '1', '2017-07-05 08:50:00', '2017-07-05 18:00:00', '100', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('111', '5', '14', '1', NULL, 'Thu', '2017-07-06', '15', '2017-07-06 09:00:00', '2017-07-06 18:00:00', '08:00:00', '2017-07-13 10:34:25', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '1', '1', '2017-07-06 08:45:00', '2017-07-06 18:05:00', '100', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('112', '5', '14', '1', NULL, 'Fri', '2017-07-07', '15', '2017-07-07 09:00:00', '2017-07-07 18:00:00', '08:00:00', '2017-07-13 10:34:25', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '1', '1', '2017-07-07 09:00:00', '2017-07-07 18:10:00', '100', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('113', '5', '14', '1', NULL, 'Sat', '2017-07-08', '15', '2017-07-08 09:00:00', '2017-07-08 18:00:00', '08:00:00', '2017-07-13 10:34:25', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '0', '0', NULL, NULL, '0', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('114', '5', '14', '1', NULL, 'Sun', '2017-07-09', '15', '2017-07-09 09:00:00', '2017-07-09 18:00:00', '08:00:00', '2017-07-13 10:34:25', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '0', '0', NULL, NULL, '0', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('115', '5', '14', '1', NULL, 'Mon', '2017-07-10', '15', '2017-07-10 09:00:00', '2017-07-10 18:00:00', '08:00:00', '2017-07-13 14:10:29', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '1', '1', '2017-07-10 09:00:00', '2017-07-10 18:15:00', '100', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('116', '5', '14', '1', NULL, 'Tue', '2017-07-11', '15', '2017-07-11 09:00:00', '2017-07-11 18:00:00', '08:00:00', '2017-07-13 10:34:25', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '1', '1', '2017-07-11 09:00:00', '2017-07-11 18:03:00', '100', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('117', '5', '14', '1', NULL, 'Wed', '2017-07-12', '15', '2017-07-12 09:00:00', '2017-07-12 18:00:00', '08:00:00', '2017-07-13 10:34:25', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '1', '1', '2017-07-12 08:58:00', '2017-07-12 18:02:00', '100', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('118', '5', '14', '1', NULL, 'Thu', '2017-07-13', '15', '2017-07-13 09:00:00', '2017-07-13 18:00:00', '08:00:00', '2017-07-13 10:34:25', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '1', '1', '2017-07-13 10:36:19', '2017-07-13 10:36:55', '0', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('119', '5', '14', '1', NULL, 'Fri', '2017-07-14', '15', '2017-07-14 09:00:00', '2017-07-14 18:00:00', '08:00:00', '2017-07-13 10:34:25', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '1', '1', '2017-07-14 09:00:00', '2017-07-14 18:00:00', '100', '0000-00-00 00:00:00', '01:00:00', '0');
INSERT INTO `schedule_employee` (`schedule_employee_id`, `employee_id`, `pay_period_id`, `sched_refshift_id`, `sched_refpay_id`, `day`, `date`, `advance_in_out`, `time_in`, `time_out`, `total`, `date_created`, `date_modified`, `created_by`, `modified_by`, `is_deleted`, `deleted_by`, `is_in`, `is_out`, `clock_in`, `clock_out`, `stat_completion`, `date_deleted`, `break_time`, `late`) VALUES ('120', '5', '14', '1', NULL, 'Sat', '2017-07-15', '15', '2017-07-15 09:00:00', '2017-07-15 18:00:00', '08:00:00', '2017-07-13 10:34:25', '0000-00-00 00:00:00', '1', NULL, '0', NULL, '0', '0', NULL, NULL, '0', '0000-00-00 00:00:00', '01:00:00', '0');


#
# TABLE STRUCTURE FOR: system_settings_default_deductions
#

DROP TABLE IF EXISTS `system_settings_default_deductions`;

CREATE TABLE `system_settings_default_deductions` (
  `default_id` int(11) NOT NULL AUTO_INCREMENT,
  `deduction_id` int(11) DEFAULT '0',
  `deduction_cycle` varchar(45) DEFAULT '0',
  `check1` tinyint(1) DEFAULT '0',
  `check2` tinyint(1) DEFAULT '0',
  `check3` tinyint(1) DEFAULT '0',
  `check4` tinyint(1) DEFAULT '0',
  `modified_by` int(11) DEFAULT NULL,
  `date_modified` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`default_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=4096;

INSERT INTO `system_settings_default_deductions` (`default_id`, `deduction_id`, `deduction_cycle`, `check1`, `check2`, `check3`, `check4`, `modified_by`, `date_modified`) VALUES ('1', '1', '0,2,0,0', '1', '0', '0', '0', '1', '2017-06-28');
INSERT INTO `system_settings_default_deductions` (`default_id`, `deduction_id`, `deduction_cycle`, `check1`, `check2`, `check3`, `check4`, `modified_by`, `date_modified`) VALUES ('2', '2', '0,2,0,0', '1', '0', '0', '0', '1', '2017-06-28');
INSERT INTO `system_settings_default_deductions` (`default_id`, `deduction_id`, `deduction_cycle`, `check1`, `check2`, `check3`, `check4`, `modified_by`, `date_modified`) VALUES ('3', '3', '0,0,3,0', '1', '0', '0', '0', '1', '2017-06-28');
INSERT INTO `system_settings_default_deductions` (`default_id`, `deduction_id`, `deduction_cycle`, `check1`, `check2`, `check3`, `check4`, `modified_by`, `date_modified`) VALUES ('4', '4', '0,0,3,0', '1', '0', '0', '0', '1', '2017-06-28');


#
# TABLE STRUCTURE FOR: tax_code_name
#

DROP TABLE IF EXISTS `tax_code_name`;

CREATE TABLE `tax_code_name` (
  `tax_code_name_id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`tax_code_name_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=3276;

INSERT INTO `tax_code_name` (`tax_code_name_id`, `tax_name`) VALUES ('1', 'Z');
INSERT INTO `tax_code_name` (`tax_code_name_id`, `tax_name`) VALUES ('2', 'S/ME');
INSERT INTO `tax_code_name` (`tax_code_name_id`, `tax_name`) VALUES ('3', 'ME1/S1');
INSERT INTO `tax_code_name` (`tax_code_name_id`, `tax_name`) VALUES ('4', 'ME2/S2');
INSERT INTO `tax_code_name` (`tax_code_name_id`, `tax_name`) VALUES ('5', 'ME3/S3');
INSERT INTO `tax_code_name` (`tax_code_name_id`, `tax_name`) VALUES ('6', 'ME4/S4');


#
# TABLE STRUCTURE FOR: user_accounts
#

DROP TABLE IF EXISTS `user_accounts`;

CREATE TABLE `user_accounts` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(100) DEFAULT '',
  `user_pword` varchar(500) DEFAULT '',
  `user_lname` varchar(100) DEFAULT '',
  `user_fname` varchar(100) DEFAULT '',
  `user_mname` varchar(100) DEFAULT '',
  `user_address` varchar(155) DEFAULT '',
  `user_email` varchar(100) DEFAULT '',
  `user_mobile` varchar(100) DEFAULT '',
  `user_telephone` varchar(100) DEFAULT '',
  `user_bdate` date DEFAULT '0000-00-00',
  `user_group_id` int(11) DEFAULT '0',
  `photo_path` varchar(255) DEFAULT '',
  `is_active` tinyint(1) DEFAULT '1',
  `is_deleted` tinyint(1) DEFAULT '0',
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_deleted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `deleted_by` int(11) NOT NULL,
  `session_status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=4096;

INSERT INTO `user_accounts` (`user_id`, `user_name`, `user_pword`, `user_lname`, `user_fname`, `user_mname`, `user_address`, `user_email`, `user_mobile`, `user_telephone`, `user_bdate`, `user_group_id`, `photo_path`, `is_active`, `is_deleted`, `date_created`, `date_modified`, `date_deleted`, `created_by`, `modified_by`, `deleted_by`, `session_status`) VALUES ('1', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Account', 'Admin', '', 'Sunrise Village 2, Maliwalo, Tarlac City', 'iamjbpv@outlook.com', '09954093200', '', '1995-12-09', '1', 'assets/img/user/58e59eda15600.jpg', '1', '0', '0000-00-00 00:00:00', '2017-04-18 16:11:45', '0000-00-00 00:00:00', '0', '1', '0', '1');
INSERT INTO `user_accounts` (`user_id`, `user_name`, `user_pword`, `user_lname`, `user_fname`, `user_mname`, `user_address`, `user_email`, `user_mobile`, `user_telephone`, `user_bdate`, `user_group_id`, `photo_path`, `is_active`, `is_deleted`, `date_created`, `date_modified`, `date_deleted`, `created_by`, `modified_by`, `deleted_by`, `session_status`) VALUES ('2', 'admin2', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'hahaha', 'haha', 'haha', '', '', '', '', '1970-01-01', '1', 'assets/img/anonymous-icon.png', '1', '1', '2017-03-29 13:49:26', '2017-03-29 13:49:33', '2017-03-29 13:49:35', '1', '1', '1', '1');
INSERT INTO `user_accounts` (`user_id`, `user_name`, `user_pword`, `user_lname`, `user_fname`, `user_mname`, `user_address`, `user_email`, `user_mobile`, `user_telephone`, `user_bdate`, `user_group_id`, `photo_path`, `is_active`, `is_deleted`, `date_created`, `date_modified`, `date_deleted`, `created_by`, `modified_by`, `deleted_by`, `session_status`) VALUES ('3', 'test', 'a94a8fe5ccb19ba61c4c0873d391e987982fbbd3', 'test', 'test', '', '', '', '', '', '1970-01-01', '1', 'assets/img/anonymous-icon.png', '1', '1', '2017-03-29 14:00:03', '2017-03-29 14:02:13', '2017-03-29 14:02:18', '1', '1', '1', '0');
INSERT INTO `user_accounts` (`user_id`, `user_name`, `user_pword`, `user_lname`, `user_fname`, `user_mname`, `user_address`, `user_email`, `user_mobile`, `user_telephone`, `user_bdate`, `user_group_id`, `photo_path`, `is_active`, `is_deleted`, `date_created`, `date_modified`, `date_deleted`, `created_by`, `modified_by`, `deleted_by`, `session_status`) VALUES ('4', 'iamjbpv', '6f7f80880b98bf0869f3482614c582ba1c0db019', 'Villamayor', 'Jb', '', '', '', '', '', '1970-01-01', '1', 'assets/img/user/58f5ca1619972.jpg', '1', '0', '2017-04-18 12:41:17', '2017-04-18 16:11:03', '0000-00-00 00:00:00', '1', '1', '0', '0');
INSERT INTO `user_accounts` (`user_id`, `user_name`, `user_pword`, `user_lname`, `user_fname`, `user_mname`, `user_address`, `user_email`, `user_mobile`, `user_telephone`, `user_bdate`, `user_group_id`, `photo_path`, `is_active`, `is_deleted`, `date_created`, `date_modified`, `date_deleted`, `created_by`, `modified_by`, `deleted_by`, `session_status`) VALUES ('5', 'guest', '35675e68f4b5af7b995d9205ad0fc43842f16450', 'user', 'guest', '', '', '', '', '', '1970-01-01', '3', 'assets/img/user/58f5c6128c8eb.jpg', '1', '0', '2017-04-18 15:40:57', '2017-04-18 15:53:57', '0000-00-00 00:00:00', '1', '1', '0', '0');


#
# TABLE STRUCTURE FOR: user_groups
#

DROP TABLE IF EXISTS `user_groups`;

CREATE TABLE `user_groups` (
  `user_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_group` varchar(135) DEFAULT '',
  `user_group_desc` varchar(500) DEFAULT '',
  `is_active` tinyint(1) DEFAULT '1',
  `is_deleted` tinyint(1) DEFAULT '0',
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `deleted_by` int(11) NOT NULL,
  `date_deleted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`user_group_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=5461;

INSERT INTO `user_groups` (`user_group_id`, `user_group`, `user_group_desc`, `is_active`, `is_deleted`, `date_created`, `date_modified`, `created_by`, `modified_by`, `deleted_by`, `date_deleted`) VALUES ('1', 'Super User', 'Can access all features.', '1', '0', '0000-00-00 00:00:00', '2017-06-23 17:25:42', '0', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `user_groups` (`user_group_id`, `user_group`, `user_group_desc`, `is_active`, `is_deleted`, `date_created`, `date_modified`, `created_by`, `modified_by`, `deleted_by`, `date_deleted`) VALUES ('2', 'test', 'test', '1', '1', '2017-03-29 13:34:50', '2017-03-29 13:44:41', '1', '1', '1', '2017-03-29 13:45:55');
INSERT INTO `user_groups` (`user_group_id`, `user_group`, `user_group_desc`, `is_active`, `is_deleted`, `date_created`, `date_modified`, `created_by`, `modified_by`, `deleted_by`, `date_deleted`) VALUES ('3', 'Staff', 'limited access', '1', '0', '2017-03-29 19:12:48', '2017-06-07 11:22:39', '1', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `user_groups` (`user_group_id`, `user_group`, `user_group_desc`, `is_active`, `is_deleted`, `date_created`, `date_modified`, `created_by`, `modified_by`, `deleted_by`, `date_deleted`) VALUES ('4', 'Staff', 'limited access', '1', '0', '2017-03-30 11:43:27', '0000-00-00 00:00:00', '1', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `user_groups` (`user_group_id`, `user_group`, `user_group_desc`, `is_active`, `is_deleted`, `date_created`, `date_modified`, `created_by`, `modified_by`, `deleted_by`, `date_deleted`) VALUES ('5', 'Test', 'haha', '1', '0', '2017-03-30 11:44:10', '2017-03-30 11:55:40', '1', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `user_groups` (`user_group_id`, `user_group`, `user_group_desc`, `is_active`, `is_deleted`, `date_created`, `date_modified`, `created_by`, `modified_by`, `deleted_by`, `date_deleted`) VALUES ('6', 'haha', 'hahaha', '1', '0', '2017-03-30 11:55:48', '0000-00-00 00:00:00', '1', '0', '0', '0000-00-00 00:00:00');


#
# TABLE STRUCTURE FOR: user_rights
#

DROP TABLE IF EXISTS `user_rights`;

CREATE TABLE `user_rights` (
  `user_rights_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_group_id` int(11) DEFAULT NULL,
  `right_employee_view` tinyint(1) DEFAULT '0',
  `right_employee_create` tinyint(1) DEFAULT '0',
  `right_employee_edit` tinyint(1) DEFAULT '0',
  `right_employee_delete` tinyint(1) DEFAULT '0',
  `right_leaveentitlement_view` tinyint(1) DEFAULT '0',
  `right_leaveentitlement_create` tinyint(1) DEFAULT '0',
  `right_leaveentitlement_edit` tinyint(1) DEFAULT '0',
  `right_leaveentitlement_delete` tinyint(1) DEFAULT '0',
  `right_applyleave_view` tinyint(1) DEFAULT '0',
  `right_applyleave_create` tinyint(1) DEFAULT '0',
  `right_rates_view` tinyint(1) DEFAULT '0',
  `right_rates_create` tinyint(1) DEFAULT '0',
  `right_rates_edit` tinyint(1) DEFAULT '0',
  `right_rates_delete` tinyint(1) DEFAULT '0',
  `right_memorandum_view` tinyint(1) DEFAULT '0',
  `right_memorandum_create` tinyint(1) DEFAULT '0',
  `right_memorandum_edit` tinyint(1) DEFAULT '0',
  `right_memorandum_delete` tinyint(1) DEFAULT '0',
  `right_commendation_view` tinyint(1) DEFAULT '0',
  `right_commendation_create` tinyint(1) DEFAULT '0',
  `right_commendation_edit` tinyint(1) DEFAULT '0',
  `right_commendation_delete` tinyint(1) DEFAULT '0',
  `right_seminar_view` tinyint(1) DEFAULT '0',
  `right_seminar_create` tinyint(1) DEFAULT '0',
  `right_seminar_edit` tinyint(1) DEFAULT '0',
  `right_seminar_delete` tinyint(1) DEFAULT '0',
  `right_leavemgmt_view` tinyint(1) DEFAULT '0',
  `right_leavetype_view` tinyint(1) DEFAULT '0',
  `right_leavetype_create` tinyint(1) DEFAULT '0',
  `right_leavetype_edit` tinyint(1) DEFAULT '0',
  `right_leavetype_delete` tinyint(1) DEFAULT '0',
  `right_yearsetup_view` tinyint(1) DEFAULT '0',
  `right_yearsetup_create` tinyint(1) DEFAULT '0',
  `right_empreference_view` tinyint(1) DEFAULT '0',
  `right_paymenttype_view` tinyint(1) DEFAULT '0',
  `right_paymenttype_create` tinyint(1) DEFAULT '0',
  `right_paymenttype_edit` tinyint(1) DEFAULT '0',
  `right_paymenttype_delete` tinyint(1) DEFAULT '0',
  `right_department_view` tinyint(1) DEFAULT '0',
  `right_department_create` tinyint(1) DEFAULT '0',
  `right_department_edit` tinyint(1) DEFAULT '0',
  `right_department_delete` tinyint(1) DEFAULT '0',
  `right_position_view` tinyint(1) DEFAULT '0',
  `right_position_create` tinyint(1) DEFAULT '0',
  `right_position_edit` tinyint(1) DEFAULT '0',
  `right_position_delete` tinyint(1) DEFAULT '0',
  `right_branch_view` tinyint(1) DEFAULT '0',
  `right_branch_create` tinyint(1) DEFAULT '0',
  `right_branch_edit` tinyint(1) DEFAULT '0',
  `right_branch_delete` tinyint(1) DEFAULT '0',
  `right_group_view` tinyint(1) DEFAULT '0',
  `right_group_create` tinyint(1) DEFAULT '0',
  `right_group_edit` tinyint(1) DEFAULT '0',
  `right_group_delete` tinyint(1) DEFAULT '0',
  `right_section_view` tinyint(1) DEFAULT '0',
  `right_section_create` tinyint(1) DEFAULT '0',
  `right_section_edit` tinyint(1) DEFAULT '0',
  `right_section_delete` tinyint(1) DEFAULT '0',
  `right_religion_view` tinyint(1) DEFAULT '0',
  `right_religion_create` tinyint(1) DEFAULT '0',
  `right_religion_edit` tinyint(1) DEFAULT '0',
  `right_religion_delete` tinyint(1) DEFAULT '0',
  `right_course_view` tinyint(1) DEFAULT '0',
  `right_course_create` tinyint(1) DEFAULT '0',
  `right_course_edit` tinyint(1) DEFAULT '0',
  `right_course_delete` tinyint(1) DEFAULT '0',
  `right_relationship_view` tinyint(1) DEFAULT '0',
  `right_relationship_create` tinyint(1) DEFAULT '0',
  `right_relationship_edit` tinyint(1) DEFAULT '0',
  `right_relationship_delete` tinyint(1) DEFAULT '0',
  `right_docreference_view` tinyint(1) DEFAULT '0',
  `right_certificate_view` tinyint(1) DEFAULT '0',
  `right_certificate_create` tinyint(1) DEFAULT '0',
  `right_certificate_edit` tinyint(1) DEFAULT '0',
  `right_certificate_delete` tinyint(1) DEFAULT '0',
  `right_actiontaken_view` tinyint(1) DEFAULT '0',
  `right_actiontaken_create` tinyint(1) DEFAULT '0',
  `right_actiontaken_edit` tinyint(1) DEFAULT '0',
  `right_actiontaken_delete` tinyint(1) DEFAULT '0',
  `right_disciplinary_view` tinyint(1) DEFAULT '0',
  `right_disciplinary_create` tinyint(1) DEFAULT '0',
  `right_disciplinary_edit` tinyint(1) DEFAULT '0',
  `right_disciplinary_delete` tinyint(1) DEFAULT '0',
  `right_compensation_view` tinyint(1) DEFAULT '0',
  `right_compensation_create` tinyint(1) DEFAULT '0',
  `right_compensation_edit` tinyint(1) DEFAULT '0',
  `right_compensation_delete` tinyint(1) DEFAULT '0',
  `right_contribution_view` tinyint(1) DEFAULT '0',
  `right_sss_view` tinyint(1) DEFAULT '0',
  `right_sss_create` tinyint(1) DEFAULT '0',
  `right_sss_edit` tinyint(1) DEFAULT '0',
  `right_sss_delete` tinyint(1) DEFAULT '0',
  `right_philhealth_view` tinyint(1) DEFAULT '0',
  `right_philhealth_create` tinyint(1) DEFAULT '0',
  `right_philhealth_edit` tinyint(1) DEFAULT '0',
  `right_philhealth_delete` tinyint(1) DEFAULT '0',
  `right_hrisreports_view` tinyint(1) DEFAULT '0',
  `right_personnel_view` tinyint(1) DEFAULT '0',
  `right_manpower_view` tinyint(1) DEFAULT '0',
  `right_employeetenure_view` tinyint(1) DEFAULT '0',
  `right_sssreport_view` tinyint(1) DEFAULT '0',
  `right_philhealthreport_view` tinyint(1) DEFAULT '0',
  `right_pagibigreport_view` tinyint(1) DEFAULT '0',
  `right_wtaxreport_view` tinyint(1) DEFAULT '0',
  `right_payrollparent_view` tinyint(1) DEFAULT '0',
  `right_dtr_view` tinyint(1) DEFAULT '0',
  `right_dtr_create` tinyint(1) DEFAULT '0',
  `right_dtr_edit` tinyint(1) DEFAULT '0',
  `right_processpayroll_view` tinyint(1) DEFAULT '0',
  `right_processpayroll_process` tinyint(1) DEFAULT '0',
  `right_payslip_view` tinyint(1) DEFAULT '0',
  `right_loanadjustment_view` tinyint(1) DEFAULT '0',
  `right_dtrverification_view` tinyint(1) DEFAULT '0',
  `right_payrollhistory_view` tinyint(1) DEFAULT '0',
  `right_monthlypayroll_view` tinyint(1) DEFAULT '0',
  `right_yearlypayroll_view` tinyint(1) DEFAULT '0',
  `right_ledger_view` tinyint(1) DEFAULT '0',
  `right_13thmonthpay_view` tinyint(1) DEFAULT '0',
  `right_otherearningsparent_view` tinyint(1) DEFAULT '0',
  `right_otherregearnings_view` tinyint(1) DEFAULT '0',
  `right_otherregearnings_create` tinyint(1) DEFAULT '0',
  `right_otherregearnings_edit` tinyint(1) DEFAULT '0',
  `right_otherregearnings_delete` tinyint(1) DEFAULT '0',
  `right_othertempearnings_view` tinyint(1) DEFAULT '0',
  `right_othertempearnings_create` tinyint(1) DEFAULT '0',
  `right_othertempearnings_edit` tinyint(1) DEFAULT '0',
  `right_othertempearnings_delete` tinyint(1) DEFAULT '0',
  `right_deductionsparent_view` tinyint(1) DEFAULT '0',
  `right_regdeduction_view` tinyint(1) DEFAULT '0',
  `right_regdeduction_create` tinyint(1) DEFAULT '0',
  `right_regdeduction_edit` tinyint(1) DEFAULT '0',
  `right_regdeduction_delete` tinyint(1) DEFAULT '0',
  `right_tempdeduction_view` tinyint(1) DEFAULT '0',
  `right_tempdeduction_create` tinyint(1) DEFAULT '0',
  `right_tempdeduction_edit` tinyint(1) DEFAULT '0',
  `right_tempdeduction_delete` tinyint(1) DEFAULT '0',
  `right_payrollreferenceparent_view` tinyint(1) DEFAULT '0',
  `right_payperiod_view` tinyint(1) DEFAULT '0',
  `right_payperiod_create` tinyint(1) DEFAULT '0',
  `right_payperiod_edit` tinyint(1) DEFAULT '0',
  `right_payperiod_delete` tinyint(1) DEFAULT '0',
  `right_earningsetup_view` tinyint(1) DEFAULT '0',
  `right_earningsetup_create` tinyint(1) DEFAULT '0',
  `right_earningsetup_edit` tinyint(1) DEFAULT '0',
  `right_earningsetup_delete` tinyint(1) DEFAULT '0',
  `right_earningtype_view` tinyint(1) DEFAULT '0',
  `right_earningtype_create` tinyint(1) DEFAULT '0',
  `right_earningtype_edit` tinyint(1) DEFAULT '0',
  `right_earningtype_delete` tinyint(1) DEFAULT '0',
  `right_deductiontype_view` tinyint(1) DEFAULT '0',
  `right_deductiontype_create` tinyint(1) DEFAULT '0',
  `right_deductiontype_edit` tinyint(1) DEFAULT '0',
  `right_deductiontype_delete` tinyint(1) DEFAULT '0',
  `right_deductionsetup_view` tinyint(1) DEFAULT '0',
  `right_deductionsetup_create` tinyint(1) DEFAULT '0',
  `right_deductionsetup_edit` tinyint(1) DEFAULT '0',
  `right_deductionsetup_delete` tinyint(1) DEFAULT '0',
  `right_deductionperiod_view` tinyint(1) DEFAULT '0',
  `right_deductionperiod_edit` tinyint(1) DEFAULT '0',
  `right_adminparent_view` tinyint(1) DEFAULT '0',
  `right_useracccount_view` tinyint(1) DEFAULT '0',
  `right_useracccount_create` tinyint(1) DEFAULT '0',
  `right_useracccount_edit` tinyint(1) DEFAULT '0',
  `right_useracccount_delete` tinyint(1) DEFAULT '0',
  `right_usergroup_view` tinyint(1) DEFAULT '0',
  `right_usergroup_create` tinyint(1) DEFAULT '0',
  `right_usergroup_edit` tinyint(1) DEFAULT '0',
  `right_usergroup_delete` tinyint(1) DEFAULT '0',
  `right_companysetup_view` tinyint(1) DEFAULT '0',
  `right_companysetup_edit` tinyint(1) DEFAULT '0',
  `right_reffactorfile_view` tinyint(1) DEFAULT '0',
  `right_reffactorfile_edit` tinyint(1) DEFAULT '0',
  `right_taxtable_view` tinyint(1) DEFAULT '0',
  `right_bir2316_view` tinyint(1) DEFAULT '0',
  `right_bir2316_create` tinyint(1) DEFAULT '0',
  `right_bir2316_edit` tinyint(1) DEFAULT '0',
  `right_bir2316_delete` tinyint(1) DEFAULT '0',
  `right_scheduling_view` tinyint(1) DEFAULT '0',
  `right_employee_schedule_view` tinyint(1) DEFAULT '0',
  `right_employee_schedule_create` tinyint(1) DEFAULT '0',
  `right_employee_schedule_edit` tinyint(1) DEFAULT '0',
  `right_employee_schedule_delete` tinyint(1) DEFAULT '0',
  `right_schedule_demography_view` tinyint(1) DEFAULT '0',
  `right_schedule_demography_create` tinyint(1) DEFAULT '0',
  `right_schedule_demography_edit` tinyint(1) DEFAULT '0',
  `right_schedule_demography_delete` tinyint(1) DEFAULT '0',
  `right_schedule_timeinout` tinyint(1) DEFAULT '0',
  `right_schedule_paytype_view` tinyint(1) DEFAULT '0',
  `right_schedule_paytype_create` tinyint(1) DEFAULT '0',
  `right_schedule_paytype_edit` tinyint(1) DEFAULT '0',
  `right_schedule_paytype_delete` tinyint(1) DEFAULT '0',
  `right_schedule_shifting_view` tinyint(1) DEFAULT '0',
  `right_schedule_shifting_create` tinyint(1) DEFAULT '0',
  `right_schedule_shifting_edit` tinyint(1) DEFAULT '0',
  `right_schedule_shifting_delete` tinyint(1) DEFAULT '0',
  `right_backup_view` tinyint(1) DEFAULT NULL,
  `right_backup_create` tinyint(1) DEFAULT NULL,
  `right_backup_restore` varchar(45) DEFAULT NULL,
  `right_schedstat_view` tinyint(1) DEFAULT NULL,
  `right_scheddtr_view` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`user_rights_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=5461;

INSERT INTO `user_rights` (`user_rights_id`, `user_group_id`, `right_employee_view`, `right_employee_create`, `right_employee_edit`, `right_employee_delete`, `right_leaveentitlement_view`, `right_leaveentitlement_create`, `right_leaveentitlement_edit`, `right_leaveentitlement_delete`, `right_applyleave_view`, `right_applyleave_create`, `right_rates_view`, `right_rates_create`, `right_rates_edit`, `right_rates_delete`, `right_memorandum_view`, `right_memorandum_create`, `right_memorandum_edit`, `right_memorandum_delete`, `right_commendation_view`, `right_commendation_create`, `right_commendation_edit`, `right_commendation_delete`, `right_seminar_view`, `right_seminar_create`, `right_seminar_edit`, `right_seminar_delete`, `right_leavemgmt_view`, `right_leavetype_view`, `right_leavetype_create`, `right_leavetype_edit`, `right_leavetype_delete`, `right_yearsetup_view`, `right_yearsetup_create`, `right_empreference_view`, `right_paymenttype_view`, `right_paymenttype_create`, `right_paymenttype_edit`, `right_paymenttype_delete`, `right_department_view`, `right_department_create`, `right_department_edit`, `right_department_delete`, `right_position_view`, `right_position_create`, `right_position_edit`, `right_position_delete`, `right_branch_view`, `right_branch_create`, `right_branch_edit`, `right_branch_delete`, `right_group_view`, `right_group_create`, `right_group_edit`, `right_group_delete`, `right_section_view`, `right_section_create`, `right_section_edit`, `right_section_delete`, `right_religion_view`, `right_religion_create`, `right_religion_edit`, `right_religion_delete`, `right_course_view`, `right_course_create`, `right_course_edit`, `right_course_delete`, `right_relationship_view`, `right_relationship_create`, `right_relationship_edit`, `right_relationship_delete`, `right_docreference_view`, `right_certificate_view`, `right_certificate_create`, `right_certificate_edit`, `right_certificate_delete`, `right_actiontaken_view`, `right_actiontaken_create`, `right_actiontaken_edit`, `right_actiontaken_delete`, `right_disciplinary_view`, `right_disciplinary_create`, `right_disciplinary_edit`, `right_disciplinary_delete`, `right_compensation_view`, `right_compensation_create`, `right_compensation_edit`, `right_compensation_delete`, `right_contribution_view`, `right_sss_view`, `right_sss_create`, `right_sss_edit`, `right_sss_delete`, `right_philhealth_view`, `right_philhealth_create`, `right_philhealth_edit`, `right_philhealth_delete`, `right_hrisreports_view`, `right_personnel_view`, `right_manpower_view`, `right_employeetenure_view`, `right_sssreport_view`, `right_philhealthreport_view`, `right_pagibigreport_view`, `right_wtaxreport_view`, `right_payrollparent_view`, `right_dtr_view`, `right_dtr_create`, `right_dtr_edit`, `right_processpayroll_view`, `right_processpayroll_process`, `right_payslip_view`, `right_loanadjustment_view`, `right_dtrverification_view`, `right_payrollhistory_view`, `right_monthlypayroll_view`, `right_yearlypayroll_view`, `right_ledger_view`, `right_13thmonthpay_view`, `right_otherearningsparent_view`, `right_otherregearnings_view`, `right_otherregearnings_create`, `right_otherregearnings_edit`, `right_otherregearnings_delete`, `right_othertempearnings_view`, `right_othertempearnings_create`, `right_othertempearnings_edit`, `right_othertempearnings_delete`, `right_deductionsparent_view`, `right_regdeduction_view`, `right_regdeduction_create`, `right_regdeduction_edit`, `right_regdeduction_delete`, `right_tempdeduction_view`, `right_tempdeduction_create`, `right_tempdeduction_edit`, `right_tempdeduction_delete`, `right_payrollreferenceparent_view`, `right_payperiod_view`, `right_payperiod_create`, `right_payperiod_edit`, `right_payperiod_delete`, `right_earningsetup_view`, `right_earningsetup_create`, `right_earningsetup_edit`, `right_earningsetup_delete`, `right_earningtype_view`, `right_earningtype_create`, `right_earningtype_edit`, `right_earningtype_delete`, `right_deductiontype_view`, `right_deductiontype_create`, `right_deductiontype_edit`, `right_deductiontype_delete`, `right_deductionsetup_view`, `right_deductionsetup_create`, `right_deductionsetup_edit`, `right_deductionsetup_delete`, `right_deductionperiod_view`, `right_deductionperiod_edit`, `right_adminparent_view`, `right_useracccount_view`, `right_useracccount_create`, `right_useracccount_edit`, `right_useracccount_delete`, `right_usergroup_view`, `right_usergroup_create`, `right_usergroup_edit`, `right_usergroup_delete`, `right_companysetup_view`, `right_companysetup_edit`, `right_reffactorfile_view`, `right_reffactorfile_edit`, `right_taxtable_view`, `right_bir2316_view`, `right_bir2316_create`, `right_bir2316_edit`, `right_bir2316_delete`, `right_scheduling_view`, `right_employee_schedule_view`, `right_employee_schedule_create`, `right_employee_schedule_edit`, `right_employee_schedule_delete`, `right_schedule_demography_view`, `right_schedule_demography_create`, `right_schedule_demography_edit`, `right_schedule_demography_delete`, `right_schedule_timeinout`, `right_schedule_paytype_view`, `right_schedule_paytype_create`, `right_schedule_paytype_edit`, `right_schedule_paytype_delete`, `right_schedule_shifting_view`, `right_schedule_shifting_create`, `right_schedule_shifting_edit`, `right_schedule_shifting_delete`, `right_backup_view`, `right_backup_create`, `right_backup_restore`, `right_schedstat_view`, `right_scheddtr_view`) VALUES ('70', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', NULL);
INSERT INTO `user_rights` (`user_rights_id`, `user_group_id`, `right_employee_view`, `right_employee_create`, `right_employee_edit`, `right_employee_delete`, `right_leaveentitlement_view`, `right_leaveentitlement_create`, `right_leaveentitlement_edit`, `right_leaveentitlement_delete`, `right_applyleave_view`, `right_applyleave_create`, `right_rates_view`, `right_rates_create`, `right_rates_edit`, `right_rates_delete`, `right_memorandum_view`, `right_memorandum_create`, `right_memorandum_edit`, `right_memorandum_delete`, `right_commendation_view`, `right_commendation_create`, `right_commendation_edit`, `right_commendation_delete`, `right_seminar_view`, `right_seminar_create`, `right_seminar_edit`, `right_seminar_delete`, `right_leavemgmt_view`, `right_leavetype_view`, `right_leavetype_create`, `right_leavetype_edit`, `right_leavetype_delete`, `right_yearsetup_view`, `right_yearsetup_create`, `right_empreference_view`, `right_paymenttype_view`, `right_paymenttype_create`, `right_paymenttype_edit`, `right_paymenttype_delete`, `right_department_view`, `right_department_create`, `right_department_edit`, `right_department_delete`, `right_position_view`, `right_position_create`, `right_position_edit`, `right_position_delete`, `right_branch_view`, `right_branch_create`, `right_branch_edit`, `right_branch_delete`, `right_group_view`, `right_group_create`, `right_group_edit`, `right_group_delete`, `right_section_view`, `right_section_create`, `right_section_edit`, `right_section_delete`, `right_religion_view`, `right_religion_create`, `right_religion_edit`, `right_religion_delete`, `right_course_view`, `right_course_create`, `right_course_edit`, `right_course_delete`, `right_relationship_view`, `right_relationship_create`, `right_relationship_edit`, `right_relationship_delete`, `right_docreference_view`, `right_certificate_view`, `right_certificate_create`, `right_certificate_edit`, `right_certificate_delete`, `right_actiontaken_view`, `right_actiontaken_create`, `right_actiontaken_edit`, `right_actiontaken_delete`, `right_disciplinary_view`, `right_disciplinary_create`, `right_disciplinary_edit`, `right_disciplinary_delete`, `right_compensation_view`, `right_compensation_create`, `right_compensation_edit`, `right_compensation_delete`, `right_contribution_view`, `right_sss_view`, `right_sss_create`, `right_sss_edit`, `right_sss_delete`, `right_philhealth_view`, `right_philhealth_create`, `right_philhealth_edit`, `right_philhealth_delete`, `right_hrisreports_view`, `right_personnel_view`, `right_manpower_view`, `right_employeetenure_view`, `right_sssreport_view`, `right_philhealthreport_view`, `right_pagibigreport_view`, `right_wtaxreport_view`, `right_payrollparent_view`, `right_dtr_view`, `right_dtr_create`, `right_dtr_edit`, `right_processpayroll_view`, `right_processpayroll_process`, `right_payslip_view`, `right_loanadjustment_view`, `right_dtrverification_view`, `right_payrollhistory_view`, `right_monthlypayroll_view`, `right_yearlypayroll_view`, `right_ledger_view`, `right_13thmonthpay_view`, `right_otherearningsparent_view`, `right_otherregearnings_view`, `right_otherregearnings_create`, `right_otherregearnings_edit`, `right_otherregearnings_delete`, `right_othertempearnings_view`, `right_othertempearnings_create`, `right_othertempearnings_edit`, `right_othertempearnings_delete`, `right_deductionsparent_view`, `right_regdeduction_view`, `right_regdeduction_create`, `right_regdeduction_edit`, `right_regdeduction_delete`, `right_tempdeduction_view`, `right_tempdeduction_create`, `right_tempdeduction_edit`, `right_tempdeduction_delete`, `right_payrollreferenceparent_view`, `right_payperiod_view`, `right_payperiod_create`, `right_payperiod_edit`, `right_payperiod_delete`, `right_earningsetup_view`, `right_earningsetup_create`, `right_earningsetup_edit`, `right_earningsetup_delete`, `right_earningtype_view`, `right_earningtype_create`, `right_earningtype_edit`, `right_earningtype_delete`, `right_deductiontype_view`, `right_deductiontype_create`, `right_deductiontype_edit`, `right_deductiontype_delete`, `right_deductionsetup_view`, `right_deductionsetup_create`, `right_deductionsetup_edit`, `right_deductionsetup_delete`, `right_deductionperiod_view`, `right_deductionperiod_edit`, `right_adminparent_view`, `right_useracccount_view`, `right_useracccount_create`, `right_useracccount_edit`, `right_useracccount_delete`, `right_usergroup_view`, `right_usergroup_create`, `right_usergroup_edit`, `right_usergroup_delete`, `right_companysetup_view`, `right_companysetup_edit`, `right_reffactorfile_view`, `right_reffactorfile_edit`, `right_taxtable_view`, `right_bir2316_view`, `right_bir2316_create`, `right_bir2316_edit`, `right_bir2316_delete`, `right_scheduling_view`, `right_employee_schedule_view`, `right_employee_schedule_create`, `right_employee_schedule_edit`, `right_employee_schedule_delete`, `right_schedule_demography_view`, `right_schedule_demography_create`, `right_schedule_demography_edit`, `right_schedule_demography_delete`, `right_schedule_timeinout`, `right_schedule_paytype_view`, `right_schedule_paytype_create`, `right_schedule_paytype_edit`, `right_schedule_paytype_delete`, `right_schedule_shifting_view`, `right_schedule_shifting_create`, `right_schedule_shifting_edit`, `right_schedule_shifting_delete`, `right_backup_view`, `right_backup_create`, `right_backup_restore`, `right_schedstat_view`, `right_scheddtr_view`) VALUES ('72', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');


#
# TABLE STRUCTURE FOR: wall_post
#

DROP TABLE IF EXISTS `wall_post`;

CREATE TABLE `wall_post` (
  `wall_post_id` int(11) NOT NULL AUTO_INCREMENT,
  `post_content` varchar(1000) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date_created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`wall_post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 PACK_KEYS=0;

INSERT INTO `wall_post` (`wall_post_id`, `post_content`, `user_id`, `date_created`) VALUES ('1', 'Good Morning :)', '1', '2017-05-30 10:35:11');
INSERT INTO `wall_post` (`wall_post_id`, `post_content`, `user_id`, `date_created`) VALUES ('2', 'Hello :)', '4', '2017-05-30 10:35:33');
INSERT INTO `wall_post` (`wall_post_id`, `post_content`, `user_id`, `date_created`) VALUES ('3', 'afternoon', '1', '2017-06-01 16:36:36');
INSERT INTO `wall_post` (`wall_post_id`, `post_content`, `user_id`, `date_created`) VALUES ('4', 'its workin', '1', '2017-06-01 16:36:44');
INSERT INTO `wall_post` (`wall_post_id`, `post_content`, `user_id`, `date_created`) VALUES ('5', 'hello', '1', '2017-06-23 09:10:21');
INSERT INTO `wall_post` (`wall_post_id`, `post_content`, `user_id`, `date_created`) VALUES ('6', 'asdsadsad', '1', '2017-06-23 09:10:39');


