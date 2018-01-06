<!DOCTYPE html>

<html lang="en">
<?php echo $loader; ?>
<head>

    <meta charset="utf-8">

    <title>JCORE - <?php echo $title; ?></title>

    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-touch-fullscreen" content="yes">
    <meta name="description" content="Avenxo Admin Theme">
    <meta name="author" content="">

    <?php echo $_def_css_files; ?>

    <?php echo $_switcher_settings; ?>
    <?php echo $_def_js_files; ?>


    <style>

        .toolbar{
            float: left;
        }

        td.details-control {
            background: url('assets/img/Folder_Closed.png') no-repeat center center;
            cursor: pointer;
        }
        tr.details td.details-control {
            background: url('assets/img/Folder_Opened.png') no-repeat center center;
        }

        .child_table{
            padding: 5px;
            border: 1px #ff0000 solid;
        }

        .glyphicon.spinning {
            animation: spin 1s infinite linear;
            -webkit-animation: spin2 1s infinite linear;
        }
        .select2-container{
            min-width: 100%;
        }
        @keyframes spin {
            from { transform: scale(1) rotate(0deg); }
            to { transform: scale(1) rotate(360deg); }
        }

        @-webkit-keyframes spin2 {
            from { -webkit-transform: rotate(0deg); }
            to { -webkit-transform: rotate(360deg); }
        }

        .numeric{
            text-align: right;
            width: 60%;
        }

        .sweet-alert p{
            font-weight:400;
            font-size:16pt;
        }

        .sweet-alert h2{
            font-size:30pt;
        }
        .body-online::-webkit-scrollbar-track
        {
        -webkit-box-shadow: inset 0 0 4px rgba(0,0,0,0.3);
        background-color: white;
        border-radius: 5px;
        }

        .body-online::-webkit-scrollbar
        {
        width:7px;
        background-color: #2980b9;
        }

        .body-online::-webkit-scrollbar-thumb
        {
        border-radius: 5px;
        background-color: #2980b9;
        }
        img{
            border-radius: 20%;
            -moz-transition: all 0.3s;
            -webkit-transition: all 0.3s;
            transition: all 0.3s;
        }
        img:hover{
        border-radius: 20%;
        -moz-transform: scale(1.2);
        -webkit-transform: scale(1.2);
        transform: scale(1.1);
        z-index: 4000;

        }
        .onlineusers
        {
        	color:white;
        }
        .percentonlineusers{
        	color:white;
        }
        .fa{
        	color:white;
        }
        .item{
            box-shadow: -2px 2px 40px #424242;
            border-radius:3%;
        }
        .item2{
            box-shadow: -2px 2px 40px #424242;
            border-radius:3%;
        }
        .nomargin{
            color:#263238;
            margin:5px;
            font-size:15pt !important;
        }
        .item{
        max-width: 100%;

        -moz-transition: all 0.3s;
        -webkit-transition: all 0.3s;
        transition: all 0.3s;
        }
        .item:hover{
        -moz-transform: scale(1.2);
        -webkit-transform: scale(1.2);
        transform: scale(1.1);
        z-index: 4000;

        }
        .fa-user{
            color:#616161
        }
        .pace-progress{
          display:none;
        }
    </style>
<?php echo $loaderscript; ?>
</head>

<body class="animated-content" >

<?php echo $_top_navigation; ?>

<div id="wrapper">
    <div id="layout-static">

        <?php echo $_side_bar_navigation;?>

        <div class="static-content-wrapper white-bg">
            <div class="static-content" >
                <div class="page-content">

                    <!-- <ol class="breadcrumb" style="margin-bottom:0px;">
                        <li><a href="dashboard">Dashboard</a></li>
                        <li><a href="RefBranch">DTR TIME IN</a></li>
                    </ol> -->

                    <div class="container-fluid" style="margin:10px;margin-top:30px;">
                        <!-- <center><h2 style="padding:0;margin:0;margin-bottom:25px;font-weight:400;">JCORE HUMAN RESOURCE INFORMATION SYSTEM</h2></center> -->
                        <div class="row">
                            <div class="col-md-6">
                                <div class="info-tile tile-orange item2" style="background-color:#ecf0f1;">
                                    <center>
                                    <div class="tile-heading" style="display:block;font-size:18pt;"><span style="color:#616161">TIME IN/OUT</span><span style="float:right !important;color:#616161;" id="livedate"><?php echo date("Y/m/d");?></span></div>
                                    <hr style="background-color: :black;border:1px solid #263238;">
                                    <h1 class="text-right"  style="text-align:center;font-size:56pt !important;height:110px;"><clockin id="clock_in">?</clockin><inout style="font-size:18pt !important;font-weight:bold;position:relative;top:15px;color:#27ae60;" id="inout"></inout></h1>
                                    <hr style="background-color: :black;border:1px solid #263238;">
                                        <p class="nomargin text-left"><b>ECODE</b> : <ecode style="float:right;" id="ecode"></ecode></p>
                                        <p class="nomargin text-left"><b>Fullname</b> : <fullname  style="float:right;" id="fullname"></fullname></p>
                                        <p class="nomargin text-left"><b>Branch</b> : <branch  style="float:right;" id="branch"></branch></p>
                                        <p class="nomargin text-left"><b>Department</b> : <department  style="float:right;" id="department"></department></p>
                                        <p class="nomargin text-left"><b>Position</b> : <position  style="float:right;" id="position"></position></p>
                                    </center>
                                    <hr style="background-color: :black;border:1px solid #263238;">
                                </div>

                            </div>
                            <div class="col-md-6">
                                <div class="info-tile tile-orange item2" style="background-color:#ecf0f1;">
                                    <div class="tile-heading" style="display:block;"><span style="font-size:18pt;color:#616161">EMPLOYEE PROFILE</span><i class="fa fa-user" style="float:right;" aria-hidden="true"></i></div>
                                    <hr style="background-color: :black;border:1px solid #263238;">
                                    <center><img class="loadingimg" id="image_name" style="margin-top:4px;width:235px;height:235px;" src="assets/img/anonymous-icon.png"></img>
                                    <hr style="background-color: :black;border:1px solid #263238;">
                                    <center><label class="nomargin" style="font-weight:bold;text-align:center !important;color:#263238;">Scan Employee Code Here</label>
                                    <input type="text" id="employee_code" style="width:80%;" class="form-control text-center">
                                    </center>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                    		      <div class="col-md-6">
                          		    <div class="info-tile tile-orange item" style="background-color:#27ae60;height:150px !important;">
                                      <div class="tile-heading" style="color:white;display:block;"><span>Average Attendance</span><i class="fa fa-bar-chart" style="float:right;" aria-hidden="true"></i></div>
                                      <div class="tile-body" style="color:white;"><span><average class="average">N/A</average>%</span></div>
                                      <div class="progress">
                                        <div class="progress-bar progress-bar-success progress-bar-striped active paverage" role="progressbar"
                                        aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width:0%" >
                                        </div>
                                      </div>
                                      <div class="tile-footer"><span class="text-white"><avgattendance class="avgattendance" style="color:white;">0 percent </avgattendance><i class="fa fa-bar-chart"></i></span></div>
                                	</div>
                            	</div>
                            	<div class="col-md-6">
                          		    <div class="info-tile tile-orange item" style="background-color:#3498db;height:150px;">
                                      <div class="tile-heading" style="color:white;display:block;"><span>Schedules Attended</span><i class="fa fa-check-circle-o" style="float:right;" aria-hidden="true"></i></div>
                                      <div class="tile-body" style="color:white;"><span><attended class="attended">N/A</attended></span></div>
                                      <div class="progress">
                                        <div class="progress-bar progress-bar-success progress-bar-striped active pattended" role="progressbar"
                                        aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width:0%" >
                                        </div>
                                      </div>
                                      <div class="tile-footer"><span style="color:white;"><attended2 class="attended2" style="color:white;"></attended2> times <i class="fa fa-check-circle-o"></i></span></div>
                                	</div>
                            	</div>
                              <div class="col-md-6">
                              <div class="info-tile tile-orange item" style="background-color:#e74c3c;height:150px;">
                                      <div class="tile-heading" style="color:white;display:block;"><span>Schedules Unattended</span><i class="fa fa-exclamation-triangle" style="float:right;" aria-hidden="true"></i></div>
                                      <div class="tile-body" style="color:white;"><span><unattended class="unattended">N/A</unattended></span></div>
                                      <div class="progress">
                                        <div class="progress-bar progress-bar-success progress-bar-striped active punattended" role="progressbar"
                                        aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width:0%" >
                                        </div>
                                      </div>
                                      <div class="tile-footer"><span style="color:white;"><unattended2 class="unattended2"></unattended2> times <i class="fa fa-exclamation-triangle"></i></span></div>
                                  </div>
                              </div>
                              <div class="col-md-6">
                                <div class="info-tile tile-orange item" style="background-color:#1abc9c;height:150px;">
                                    <div class="tile-heading" style="color:white;display:block;"><span>Date & Time</span><i class="fa fa-clock-o" style="float:right;" aria-hidden="true"></i></div>
                                    <h3 class="text-right"  style="color:white;"><span style="float:left !important;">Time</span><span id="livetime"><?php echo date("h:iA"); ?></span></h3>
                                    <hr>
                                    <h3 class="text-right"  style="color:white;"><span style="float:left !important;">Date</span><span id="livedate"><?php echo date("Y/m/d");?></span></h3>
                                </div>
                              </div>
                            </div>
                            <div class="col-md-6">
                                <div class="info-tile tile-orange item2" style="background-color:#009688;height:333px;">
                                    <div class="tile-heading" style="color:white;display:block;"><span>Period Stats</span><i class="fa fa-clock-o" style="float:right;" aria-hidden="true"></i></div>
                                    <div class="period_stats" style="height:280px;overflow-y:scroll;">
                                      <center><h4 style="font-weight:bold;margin:10px;margin-top:5;margin-bottom:0;color:white;">No Data</h4></center>
                                  </div>
                                </div>
                            </div>

                        </div>
                        <div class="row">
                          <div class="col-md-6">
                              <div class="info-tile tile-orange item2" style="background-color:#4CAF50;height:333px;">
                                  <div class="tile-heading" style="color:white;display:block;"><span>Who's In</span><i class="fa fa-clock-o" style="float:right;" aria-hidden="true"></i></div>
                                  <div class="" style="height:280px;overflow-y:scroll;">
                                    <table class="table table-responsive" style="color:white;">
                                      <thead>
                                          <th>Ecode</th>
                                          <th>Name</th>
                                          <th>Time In</th>
                                      </thead>
                                      <tbody class="whos_in">

                                      </tbody>
                                    </table>
                                </div>
                              </div>
                          </div>
                          <div class="col-md-6">
                              <div class="info-tile tile-orange item2" style="background-color:#03A9F4;height:333px;">
                                  <div class="tile-heading" style="color:white;display:block;"><span>Who's Out</span><i class="fa fa-clock-o" style="float:right;" aria-hidden="true"></i></div>
                                  <div class="" style="height:280px;overflow-y:scroll;">
                                    <table class="table table-responsive" style="color:white;">
                                      <thead>
                                          <th>Ecode</th>
                                          <th>Name</th>
                                          <th>Time Out</th>
                                      </thead>
                                      <tbody class="whos_out">

                                      </tbody>
                                    </table>
                                </div>
                              </div>
                          </div>
                        </div>
                    </div><!-- .container-fluid -->
                </div> <!-- #page-content -->
            </div><!--static content -->

        </div><!--content wrapper -->
    </div><!--static layout -->
</div> <!--wrapper -->




<?php echo $_rights; ?>
<script>
var interval = 3000;
$(document).ready(function(){
    var retrieve_whosin=0;
    var retrieve_whosout=0;

    function getlistonce() {
        var _data=$('#').serializeArray();
        _data.push({name : "retrieve_whosin" ,value : retrieve_whosin });
        _data.push({name : "retrieve_whosout" ,value : retrieve_whosout });
        $.ajax({
          type: 'POST',
          url: 'SchedTimein/transaction/getlivetime',
          dataType: 'json',
          "data": _data,
          success: function (response) {
                $('#livetime').text(response.livetime);
                $('#livedate').text(response.livedate);

                var whos_in="";


                if(response.status=="nodata"){
                    $('.whos_in').html("<h4 style='color:white;'>No Data</h4>");
                    retrieve_whosin=response.count_whosin;
                }
                // alert(response.count_whosin);

                if(response.status=="nochanges"){
                  retrieve_whosin=response.count_whosin;
                }
                if(response.status=="newdata"){
                  retrieve_whosin=response.count_whosin;
                  var jsoncountin=response.whos_in.length-1;
                  for(var x=0;parseInt(jsoncountin)>=x;x++){
                    whos_in+='<tr>'+
                              '<td>'+response.whos_in[x].ecode+'</td>'+
                              '<td>'+response.whos_in[x].full_name+'</td>'+
                              '<td>'+response.whos_in[x].time_in12+'</td>'+
                              '</tr>';
                  }
                  $('.whos_in').html(whos_in);
                }
                var whos_out="";

                if(response.statusout=="nodata"){
                    $('.whos_out').html("<h4 style='color:white;'>No Data</h4>");
                    retrieve_whosout=response.count_whosout;
                }
                // alert(response.count_whosin);

                if(response.statusout=="nochanges"){
                  retrieve_whosout=response.count_whosout;
                }
                if(response.status=="newdata"){
                  retrieve_whosout=response.count_whosout;
                  var jsoncountout=response.whos_out.length-1;
                  for(var z=0;parseInt(jsoncountout)>=z;z++){
                    whos_out+='<tr>'+
                              '<td>'+response.whos_out[z].ecode+'</td>'+
                              '<td>'+response.whos_out[z].full_name+'</td>'+
                              '<td>'+response.whos_out[z].time_out12+'</td>'+
                              '</tr>';
                  }
                  $('.whos_out').html(whos_out);
                }


            },
          complete: function (response) {

          }
        });
      }

    function getlist() {
        var _data=$('#').serializeArray();
        _data.push({name : "retrieve_whosin" ,value : retrieve_whosin });
        _data.push({name : "retrieve_whosout" ,value : retrieve_whosout });
        $.ajax({
          type: 'POST',
          url: 'SchedTimein/transaction/getlivetime',
          dataType: 'json',
          "data": _data,
          success: function (response) {
                $('#livetime').text(response.livetime);
                $('#livedate').text(response.livedate);

                var whos_in="";


                if(response.status=="nodata"){
                    $('.whos_in').html("<h4 style='color:white;'>No Data</h4>");
                    retrieve_whosin=response.count_whosin;
                }
                // alert(response.count_whosin);

                if(response.status=="nochanges"){
                  retrieve_whosin=response.count_whosin;
                }
                if(response.status=="newdata"){
                  retrieve_whosin=response.count_whosin;
                  var jsoncountin=response.whos_in.length-1;
                  for(var x=0;parseInt(jsoncountin)>=x;x++){
                    whos_in+='<tr>'+
                              '<td>'+response.whos_in[x].ecode+'</td>'+
                              '<td>'+response.whos_in[x].full_name+'</td>'+
                              '<td>'+response.whos_in[x].time_in12+'</td>'+
                              '</tr>';
                  }
                  $('.whos_in').html(whos_in);
                }
                var whos_out="";

                if(response.statusout=="nodata"){
                    $('.whos_out').html("<h4 style='color:white;'>No Data</h4>");
                    retrieve_whosout=response.count_whosout;
                }
                // alert(response.count_whosin);

                if(response.statusout=="nochanges"){
                  retrieve_whosout=response.count_whosout;
                }
                if(response.status=="newdata"){
                  retrieve_whosout=response.count_whosout;
                  var jsoncountout=response.whos_out.length-1;
                  for(var z=0;parseInt(jsoncountout)>=z;z++){
                    whos_out+='<tr>'+
                              '<td>'+response.whos_out[z].ecode+'</td>'+
                              '<td>'+response.whos_out[z].full_name+'</td>'+
                              '<td>'+response.whos_out[z].time_out12+'</td>'+
                              '</tr>';
                  }
                  $('.whos_out').html(whos_out);
                }


            },
          complete: function (response) {

                  setTimeout(getlist, interval);
          }
        });
      }
      setTimeout(getlist, interval);
    var autooutinterval=18000000; //5hours
    function autoout() {
          var _data=$('#').serializeArray();
          $.ajax({
            type: 'POST',
            url: 'SchedTimein/transaction/autotimeout',
            dataType: 'json',
            "data": _data,
            success: function (response) {

            },
            complete: function (response) {

                    setTimeout(autoout, autooutinterval);
            }
          });
    }
    setTimeout(autoout, autooutinterval);
    $('#employee_code').keypress(function(evt){
        /*clearinfos();*/
        /*swal.close();*/
        if(evt.keyCode==13){
            getlistonce();
            TimeIn().done(function(response){

                showNotification(response);
                /*if(response.stat=="error"){
                    $.unblockUI();
                    return;
                }*/
                if(response.stat=="error"){
                    swal({
                          title: response.title,
                          text: response.msg,
                          type: "error",
                          timer: 2000,
                          showConfirmButton: false
                    });
                    defaultvalues();
                    return;
                }

                if(response.stat=="warning"){
                    swal({
                          title: response.title,
                          text: response.msg,
                          type: "warning",
                          timer: 2000,
                          showConfirmButton: false
                    });

                    defaultvalues();

                    $('#image_name').attr('src',response.employee_list[0].image_name);
                    $('#ecode').text(response.employee_list[0].ecode);
                    $('#fullname').text(response.employee_list[0].full_name );
                    $('#branch').text(response.employee_list[0].branch);
                    $('#department').text(response.employee_list[0].department);
                    $('#position').text(response.employee_list[0].position);


                    $('.period_stats').html('<center><h4 style="font-weight:bold;margin:10px;margin-top:5;margin-bottom:0;text-center;color:white;">No Data</h4></center>');
                    $.unblockUI();
                    var jsoncount=response.period_stats.length-1;

                    if(response.period_stats.length<=0){
                        return;
                    }

                    var period_stats='';
                    var totalpercent=0;
                    var renderedpercent=0;
                    var average=0;

                    var days_attended=0;
                    var avg_attended=0;
                    var days_unattended=0;
                    var days_count=0;
                    var avg_unattended=0;

                        for(var i=0;parseInt(jsoncount)>=i;i++){

                            totalpercent+= 100;
                            renderedpercent+= parseInt(response.period_stats[i].stat_completion);

                            var days_attended_count = (response.period_stats[i].stat_completion > 0 ) ? 1 : 0;
                            days_attended += parseInt(days_attended_count);
                            days_count +=1;
                            //in
                            var time = response.period_stats[i].time_in;
                            var timearray = time.split(" ");
                            var timeString = timearray[1];
                            var time_in = getampm(timeString);
                            //out
                            var time = response.period_stats[i].time_out;
                            var timearray = time.split(" ");
                            var timeString = timearray[1];
                            var time_out = getampm(timeString);

                                period_stats+='<h4 style="margin:10px;margin-top:5;margin-bottom:0;color:white;">'+response.period_stats[i].day+ '<span style="float:right !important;">' +response.period_stats[i].date+'</span></h4>'+
                                        '<p style="margin:10px;margin-top:0;margin-bottom:0;color:white;">'+response.period_stats[i].stat_completion+'%<span style="float:right !important;font-weight:400">'+time_in+'-'+time_out+'</span></p>'+
                                        '<div class="progress" style="margin:10px;margin-top:0;margin-bottom:0;color:white;">'+
                                          '<div class="progress-bar progress-bar-success progress-bar-striped active aemployeeprogress" role="progressbar"'+
                                          'aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="color:white;width:'+response.period_stats[i].stat_completion+'%">'+
                                          '</div>'+
                                        '</div><hr>';
                        }
                    average = (renderedpercent/totalpercent)*100;
                    $('.average').text(average.toFixed(2));
                    $('.paverage').css("width",average+"%");
                    $('.avgattendance').text(average.toFixed(2)+" percent ");


                    avg_attended = (days_attended/days_count)*100;
                    $('.attended').text(avg_attended.toFixed(2)+"%");
                    $('.attended2').text(days_attended);
                    $('.pattended').css("width",avg_attended.toFixed(2)+"%");
                    days_unattended = Math.abs(parseInt(days_attended)-parseInt(days_count))
                    avg_unattended = (days_unattended/days_count)*100;
                    $('.unattended').text(avg_unattended.toFixed(2)+"%");
                    $('.punattended').css("width",avg_unattended.toFixed(2)+"%");
                    $('.unattended2').text(days_unattended);


                   /*alert(days_attended);*/

                    $('.period_stats').html(period_stats);

                    $('#clock_in').text('?');
                    $('#inout').text('');
                    /*$('#clock_out').text(response.clock_out);*/

                    return;
                }

                /*if(response.employee_list.length==0){
                    alert();
                    $('#fullname').text("Not Found");
                    $('#image_name').attr('src',"assets/img/anonymous-icon.png");
                    $('#ecode').text("Not Found");
                    $('#fullname').text("Not Found");
                    $('#branch').text("Not Found");
                    $('#department').text("Not Found");
                    $('#position').text("Not Found");
                    $('#clock_in').text("Not Found");
                    $('#clock_out').text("Not Found");
                    $.unblockUI();
                    return;
                }*/
                if(response.stat=="success"){
                    swal({
                          title: response.title,
                          text: response.msg,
                          type: "success",
                          timer: 2000,
                          showConfirmButton: false
                    });
                }
                var jsoncount=response.period_stats.length-1;
                    var period_stats='';
                    var totalpercent=0;
                    var renderedpercent=0;
                    var average=0;

                    var days_attended=0;
                    var avg_attended=0;
                    var days_unattended=0;
                    var days_count=0;
                    var avg_unattended=0;

                        for(var i=0;parseInt(jsoncount)>=i;i++){

                            totalpercent+= 100;
                            renderedpercent+= parseInt(response.period_stats[i].stat_completion);

                            var days_attended_count = (response.period_stats[i].stat_completion > 0 ) ? 1 : 0;
                            days_attended += parseInt(days_attended_count);
                            days_count +=1;
                            //in
                            var time = response.period_stats[i].time_in;
                            var timearray = time.split(" ");
                            var timeString = timearray[1];
                            var time_in = getampm(timeString);
                            //out
                            var time = response.period_stats[i].time_out;
                            var timearray = time.split(" ");
                            var timeString = timearray[1];
                            var time_out = getampm(timeString);

                                period_stats+='<h4 style="margin:10px;margin-top:5;margin-bottom:0;color:white;">'+response.period_stats[i].day+ '<span style="float:right !important;">' +response.period_stats[i].date+'</span></h4>'+
                                        '<p style="margin:10px;margin-top:0;margin-bottom:0;color:white;">'+response.period_stats[i].stat_completion+'%<span style="float:right !important;font-weight:400">'+time_in+'-'+time_out+'</span></p>'+
                                        '<div class="progress" style="margin:10px;margin-top:0;margin-bottom:0;color:white;">'+
                                          '<div class="progress-bar progress-bar-success progress-bar-striped active aemployeeprogress" role="progressbar"'+
                                          'aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="color:white;width:'+response.period_stats[i].stat_completion+'%">'+
                                          '</div>'+
                                        '</div><hr>';
                        }
                    average = (renderedpercent/totalpercent)*100;
                    $('.average').text(average.toFixed(2));
                    $('.paverage').css("width",average+"%");
                    $('.avgattendance').text(average+" percent ");


                    avg_attended = (days_attended/days_count)*100;
                    $('.attended').text(avg_attended.toFixed(2)+"%");
                    $('.attended2').text(days_attended);
                    $('.pattended').css("width",avg_attended.toFixed(2)+"%");
                    days_unattended = Math.abs(parseInt(days_attended)-parseInt(days_count))
                    avg_unattended = (days_unattended/days_count)*100;
                    $('.unattended').text(avg_unattended.toFixed(2)+"%");
                    $('.punattended').css("width",avg_unattended.toFixed(2)+"%");
                    $('.unattended2').text(days_unattended);
                    $('.period_stats').html(period_stats);

                $('#image_name').attr('src',response.employee_list[0].image_name);
                $('#ecode').text(response.employee_list[0].ecode);
                $('#fullname').text(response.employee_list[0].full_name );
                $('#branch').text(response.employee_list[0].branch);
                $('#department').text(response.employee_list[0].department);
                $('#position').text(response.employee_list[0].position);
                $('#clock_in').text(response.clock_in);
                $('#inout').text('IN');
                $('#inout').css('color','27ae60');

                        if(response.clock_out!="notset"){
                            $('#clock_in').text(response.clock_out);
                            $('#inout').text('OUT');
                            $('#inout').css('color','red');
                        }
                /*$('#friday').text(response.friday);*/



            }).always(function(){
                $.unblockUI();
            });
            $('#employee_code').val('');
        }
    });

    var TimeIn=function(){
        //
        var _data=$('#').serializeArray();
        _data.push({name : "employee_code" ,value : $('#employee_code').val() });
        return $.ajax({
            "dataType":"json",
            "type":"POST",
            "url":"SchedEmployee/transaction/timein",
            "data":_data,
            "beforeSend": showSpinningProgress($('#'))
        });
    };

    var showNotification=function(obj){
        PNotify.removeAll();
        new PNotify({
            title:  obj.title,
            text:  obj.msg,
            type:  obj.stat
        });
    };

    var showSpinningProgress=function(e){
        $.blockUI({ message: '<img src="assets/img/gears.svg"/><br><h4 style="color:#ecf0f1;">Processing</h4>',
            css: {
            border: 'none',
            padding: '15px',
            backgroundColor: 'none',
            opacity: 1,
            zIndex: 20000,
        } });
        $('.blockOverlay').attr('title','Click to unblock').click($.unblockUI);
    };

    var defaultvalues=function(){
        $('#fullname').text("Not Found");
        $('#image_name').attr('src',"assets/img/anonymous-icon.png");
        $('#ecode').text("Not Found");
        $('#fullname').text("Not Found");
        $('#branch').text("Not Found");
        $('#department').text("Not Found");
        $('#position').text("Not Found");
        $('#clock_in').text("?");
        $('#clock_out').text("?");
    }

    var clearinfos=function(){
        $('#fullname').text("");
        $('#image_name').attr('src',"assets/img/anonymous-icon.png");
        $('#ecode').text("");
        $('#fullname').text("");
        $('#branch').text("");
        $('#department').text("");
        $('#position').text("");
        $('#clock_in').text("?");
        $('#clock_out').text("?");
    };

    var getampm=function(timeString){
        var hourEnd = timeString.indexOf(":");
        var H = +timeString.substr(0, hourEnd);
        var h = H % 12 || 12;
        var ampm = H < 12 ? "AM" : "PM";
        var time = h + timeString.substr(hourEnd, 3) + ampm;
        return time;
    }

    $('#employee_code').focus(500);

});

</script>
</body>

</html>
