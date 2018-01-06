<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class AlphaList extends CORE_Controller
{

    function __construct() {
        parent::__construct('');
        $this->validate_session();
        // if($this->session->userdata('right_scheddtrdetailed_view') == 0 || $this->session->userdata('right_scheddtrdetailed_view') == null) {
        //     redirect('../Dashboard');
        // }
        $this->load->library('excel');
        $this->load->model('Employee_model');
        $this->load->model('SchedEmployee_model');
        $this->load->model('RefSchedPay_model');
        $this->load->model('SchedRefShift_model');
        $this->load->model('RefPayPeriod_model');
        $this->load->model('SchedDTR_model');
        $this->load->model('RefBranch_model');
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
        $data['title'] = 'Alpha List of Employee';

        $this->load->view('alpha_list_view', $data);
    }


    function schedule($transaction=null,$filter_value=null,$filter_value2=null,$type=null){

        switch($transaction){

            case 'sched-dtr-detailed': //
                        $data['period_days']=$this->RefPayPeriod_model->get_list('pay_period_id='.$filter_value);

                        $data['employee_schedule']=$this->Employee_model->get_list(
                            'schedule_employee.pay_period_id=10',
                            'schedule_employee.sched_refshift_id,schedule_employee.date,CONCAT(employee_list.first_name," ",employee_list.middle_name," ",employee_list.last_name) as full_name
                            ,ref_branch.branch,ref_department.department',
                            array(
                                array('schedule_employee','schedule_employee.employee_id=employee_list.employee_id','left'),
                                array('emp_rates_duties','emp_rates_duties.emp_rates_duties_id=employee_list.emp_rates_duties_id','left'),
                                array('ref_branch','ref_branch.ref_branch_id=emp_rates_duties.ref_branch_id','left'),
                                array('ref_department','ref_department.ref_department_id=emp_rates_duties.ref_department_id','left'),
                                ),
                           'schedule_employee.date ASC'
                            );

                        /*$data['_pay_period']=$this->RefPayPeriod_model->get_list(
                            $filter_value,
                            'pay_period_start,pay_period_end'
                            );*/

                        $data['schedules'] = $this->SchedDTR_model->getscheddtrdetailed($filter_value,$filter_value2);
                        /*echo json_encode($test['data'][0]->data_serial);*/


                        /*echo json_encode($arr);*/
                        /*echo json_encode($data['employee_schedule']);*/

                        if($type=='fullview'||$type==null){
                            echo $this->load->view('template/scheddtrdetailed_view',$data,TRUE);
                            //echo $this->load->view('template/dr_content_menus',$data,TRUE);
                        }

                        //show only inside grid without menu button
                        if($type=='contentview'){
                            echo $this->load->view('template/scheddtrdetailed_view',$data,TRUE);
                        }


            break;

            case 'export-alphalist':
            $excel=$this->excel;
            /*$product_id=$this->input->get('id');
            $start=date('Y-m-d',strtotime($this->input->get('start')));
            $end=date('Y-m-d',strtotime($this->input->get('end')));*/

            $excel->setActiveSheetIndex(0);
            $transaction=$this->PayrollReports_model->get_alpha_list($filter_value);

            //name the worksheet
            $excel->getActiveSheet()->setTitle("Alpha List of Employee");

            $excel->getActiveSheet()->getStyle('A1')->getFont()->setBold(TRUE);
            $excel->getActiveSheet()->setCellValue('A1',"Alpha List of Employee")
                ->setCellValue('A2',"Year : ".$filter_value)
                ->setCellValue('A3',"Exported By : ".$this->session->user_fullname)
                ->setCellValue('A4',"Date Exported : ".date("Y-m-d h:i:s"));


            //create headers
            $excel->getActiveSheet()->getStyle('A5:J6')->getFont()->setBold(TRUE);
            $excel->getActiveSheet()->setCellValue('A5', 'Surname')
                                    ->setCellValue('B5', 'Firstname')
                                    ->setCellValue('C5', 'Middlename')
                                    ->setCellValue('D5', 'Tin #')
                                    ->setCellValue('E5', 'WTAX Whold (Jan - Nov)')
                                    ->setCellValue('F5', 'Exemption')
                                    ->setCellValue('G5', 'Gross Pay')
                                    ->setCellValue('H5', 'Deductions (Tax Shield)')
                                    ->mergeCells('H5:J5')
                                    ->setCellValue('K5', 'Taxable Income')
                                    ->setCellValue('L5', 'Tax Due December')
                                    ->setCellValue('H6','SSS')
                                    ->setCellValue('I6','PhilHealth')
                                    ->setCellValue('J6','Pag-Ibig')
                                    ;
            $rows=array();
            foreach($transaction as $x){
                $rows[]=array(
                    $x->last_name,
                    $x->first_name,
                    $x->middle_name,
                    $x->tin,
                    $x->wtax,
                    $x->tax_name,
                    $x->yearly_gross,
                    $x->yearly_sss,
                    $x->yearly_phil,
                    $x->yearly_pagibig,
                    $x->taxable_income
                );
            }


            $excel->getActiveSheet()->getStyle('A5:L5')->getFill()
                ->setFillType(PHPExcel_Style_Fill::FILL_SOLID)
                ->getStartColor()->setARGB('27ae60');

            $excel->getActiveSheet()->getStyle('A6:L6')->getFill()
                ->setFillType(PHPExcel_Style_Fill::FILL_SOLID)
                ->getStartColor()->setARGB('3CB371');

            $styleArray = array(
                'font'  => array(
                    'bold'  => true,
                    'color' => array('rgb' => 'FFFFF'),
                    'size'  => 10,
                    'name'  => 'Tahoma'
                ));

            $excel->getActiveSheet()->getStyle('A5:L6')->applyFromArray($styleArray);

            $excel->getActiveSheet()->fromArray($rows,NULL,'A7');
            //autofit column
            foreach(range('A','L') as $columnID)
            {
                $excel->getActiveSheet()->getColumnDimension($columnID)->setAutoSize(TRUE);
            }

            //$excel->getActiveSheet()->getColumnDimension('A')->setAutoSize(TRUE);

            // Redirect output to a client’s web browser (Excel2007)
            ob_end_clean();
            header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
            header('Content-Disposition: attachment;filename='."Alpha List of Employee.xlsx".'');
            header('Cache-Control: max-age=0');
            // If you're serving to IE 9, then the following may be needed
            header('Cache-Control: max-age=1');

            // If you're serving to IE over SSL, then the following may be needed
            header ('Expires: Mon, 26 Jul 1997 05:00:00 GMT'); // Date in the past
            header ('Last-Modified: '.gmdate('D, d M Y H:i:s').' GMT'); // always modified
            header ('Cache-Control: cache, must-revalidate'); // HTTP/1.1
            header ('Pragma: public'); // HTTP/1.0

            $objWriter = PHPExcel_IOFactory::createWriter($excel, 'Excel2007');
            $objWriter->save('php://output');

            break;

        }
    }
}
