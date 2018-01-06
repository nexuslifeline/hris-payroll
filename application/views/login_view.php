<!DOCTYPE html>
<html lang="en" class="coming-soon">

<head>

    <meta charset="utf-8">
    <title>Login Form</title>


    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-touch-fullscreen" content="yes">
    <meta name="author" content="">

    <link type="text/css" href="assets/css/bootstrap.css" rel="stylesheet">
    <link type="text/css" href="assets/css/animate.css" rel="stylesheet">
    <link type="text/css" href="assets/font-awesome/css/font-awesome.css" rel="stylesheet">

    <link type="text/css" href="assets/fonts/font-awesome/css/font-awesome.min.css" rel="stylesheet">        <!-- Font Awesome -->
    <link type="text/css" href="assets/fonts/themify-icons/themify-icons.css" rel="stylesheet">              <!-- Themify Icons -->

    <link type="text/css" href="assets/plugins/codeprettifier/prettify.css" rel="stylesheet">                <!-- Code Prettifier -->
    <link type="text/css" href="assets/plugins/iCheck/skins/minimal/blue.css" rel="stylesheet">              <!-- iCheck -->


    <link href="assets/plugins/notify/pnotify.core.css" rel="stylesheet"> <!-- notification -->
    <link href="assets/css/pace.css" rel="stylesheet"> <!-- pace -->

    <link rel="stylesheet" href="assets/plugins/spinner/dist/ladda-themeless.min.css">
    <link rel="stylesheet" href="assets/css/fonts.css">
    <style>
    	.logingradient{


background: #1D2B64; /* fallback for old browsers */
background: -webkit-linear-gradient(to left, #1D2B64 , #F8CDDA); /* Chrome 10-25, Safari 5.1-6 */
background: linear-gradient(to left, #1D2B64 , #F8CDDA); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */

    	}
    	 .panel-transparent {
        background: none;
    }

    .panel-transparent .panel-heading{
        background: rgba(122, 130, 136, 0.2)!important;
    }

    .panel-transparent .panel-body{
        background: rgba(46, 51, 56, 0.2)!important;
    }

    .hero{
  background-color: transparent;


}

@media (min-width:992px) {
  .hero .get-it{
    text-align:right;
    margin-top:80px;
    padding-right:30px;
  }
}

@media (max-width:992px) {
  .hero .get-it{
    text-align:center;
  }
}

@media (max-width:992px) {
  .hero .phone-preview{
    text-align:center;
  }
}

.hero .get-it h1, .hero .get-it p{
  color:#fff;
  text-shadow:2px 2px 3px rgba(0,0,0,0.3);
  margin-bottom:40px;
}

.hero .get-it .btn{
  margin-left:10px;
  margin-bottom:10px;
  text-shadow:none;
}


@media (min-width:768px) {
  .login-box-body{
    margin-top:20px;
    background-color: transparent;
    border-radius: 5px;
    color:white;
    padding:20px;
    -webkit-transition: all 0.3s ease;
  -moz-transition: all 0.3s ease;
  -ms-transition: all 0.3s ease;
  -o-transition: all 0.3s ease;
  transition: all 0.3s ease;
  }
}
@media (min-width:1024px) {
  .login-box-body{
    margin-top:90px;
    background-color: transparent;
    border-radius: 5px;
    color:white;
    padding:20px;
    -webkit-transition: all 0.3s ease;
  -moz-transition: all 0.3s ease;
  -ms-transition: all 0.3s ease;
  -o-transition: all 0.3s ease;
  transition: all 0.3s ease;
  }
}

.login-box-body{
  box-shadow: -2px 5px 80px black;
  background-color: transparent;
  border-radius: 5px;
  color:white;
  padding:20px;
  -webkit-transition: all 0.3s ease;
  -moz-transition: all 0.3s ease;
  -ms-transition: all 0.3s ease;
  -o-transition: all 0.3s ease;
  transition: all 0.3s ease;
  }

.login-box-body:hover{
  box-shadow: -2px 5px 80px #ecf0f1;
  -webkit-transition: all 0.3s ease;
  -moz-transition: all 0.3s ease;
  -ms-transition: all 0.3s ease;
  -o-transition: all 0.3s ease;
  transition: all 0.3s ease;
}

input{
  background-color: transparent !important;
  color:white !important;
  border-radius:5px !important;
  -webkit-transition: all 0.5s ease;
  -moz-transition: all 0.5s ease;
  -ms-transition: all 0.5s ease;
  -o-transition: all 0.5s ease;
  transition: all 0.5s ease;
}
input:focus{
  background-color:white !important;
  color:black !important;
  border:1px solid #ecf0f1 !important;
  font-weight: bold;
  -webkit-transition: all 0.5s ease;
  -moz-transition: all 0.5s ease;
  -ms-transition: all 0.5s ease;
  -o-transition: all 0.5s ease;
  transition: all 0.5s ease;
}
.btn{
  background-color:transparent;

  border:1px solid #ecf0f1;
  border-radius:5px !important;
  color:#ecf0f1;
  font-weight:bold;
  -webkit-transition: all 0.5s ease;
  -moz-transition: all 0.5s ease;
  -ms-transition: all 0.5s ease;
  -o-transition: all 0.5s ease;
  transition: all 0.5s ease;

}
.btn:hover{
  background-color:#2c3e50 !important;
  color:white !important;
  border:1px solid #ecf0f1;
  border-radius:5px !important;
  color:#ecf0f1;
  font-weight:bold;
-webkit-transition: all 0.5s ease;
  -moz-transition: all 0.5s ease;
  -ms-transition: all 0.5s ease;
  -o-transition: all 0.5s ease;
  transition: all 0.5s ease;
}
.btn:focus{
  background-color:#2c3e50 !important;
  color:white !important;
  border:1px solid #ecf0f1;
  border-radius:5px !important;
  color:#ecf0f1;
  font-weight:bold;
}
.white{
  color:#ecf0f1 !important;
}
.footer{
   position: fixed;
   text-align: right;
   right:15px;
   bottom: 10px;
   width: 100%;
   color:white;
   font-family:Web Serveroff;
   font-weight: bold;
   font-size: 12pt;
}
    </style>

    </head>

    <body class="focused-form animated-content logingradient">
        <?php echo $loader; ?>

<div class="jumbotron hero" style="background-color:transparent;">
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-md-push-7 hidden-sm hidden-xs">
                      <div class="login-box-body">
                        <p class="login-box-msg" style="font-weight:bold;font-family:Web Serveroff;text-align:center;">Sign in to start your session</p>
                          <div class="form-group has-feedback">
                            <input type="email" class="form-control" name="user_name" placeholder="Email">
                            <span class="glyphicon glyphicon-envelope white form-control-feedback"></span>
                          </div>
                          <div class="form-group has-feedback">
                            <input type="password" class="form-control" name="user_pword" placeholder="Password">
                            <span class="glyphicon glyphicon-lock white form-control-feedback"></span>
                          </div>
                          <div class="row">
                            <div class="col-xs-12">
                              <button type="submit" id="btn_login" style="font-family:Web Serveroff;" class="btn btn-block btn-flat btn_login">Login</button>
                            </div>
                            <!-- /.col -->
                          </div>
                      </div>
                  </div>

                  <div class="col-md-6 col-md-pull-3 get-it hidden-md hidden-lg" style="color:white;">
                    <div class="row">
                        <div class="text-center">
                            <h4 style="font-family:Web Serveroff;font-size:40pt;font-weight:bold;"><?php echo $company_setup[0]->company_name; ?></h4>

                            <span >
                                <address style="font-family:Web Serveroff;font-size:15pt;font-weight:bold;">
                                    WEB Human Resource Information System & Payroll
                                </address>
                            </span>
                        </div>
                    </div>
                    <!-- //end  -->
                </div>

                <div class="col-md-6 col-md-pull-3 get-it hidden-sm hidden-xs" style="color:white;">
                    <div class="row">
                        <div class="text-center">
                            <h4 style="font-family:Web Serveroff;font-size:55pt;font-weight:bold;"><?php echo $company_setup[0]->company_name; ?></h4>

                            <span >
                                <address style="font-family:Web Serveroff;font-size:15pt;font-weight:bold;">
                                    <?php echo $company_setup[0]->quote; ?>
                                </address>
                            </span>
                        </div>
                    </div>
                    <!-- //end  -->
                </div>
                <center>
                <div class="col-md-4 col-md-push-7 hidden-md hidden-lg" style="width:100%;">
                      <div class="login-box-body">
                        <p class="login-box-msg" style="font-weight:bold;font-family:Web Serveroff;">Sign in to start your session</p>
                          <div class="form-group has-feedback">
                            <input type="email" class="form-control" name="user_name1" placeholder="Email">
                            <span class="glyphicon glyphicon-envelope white form-control-feedback"></span>
                          </div>
                          <div class="form-group has-feedback">
                            <input type="password" class="form-control" name="user_pword1" placeholder="Password">
                            <span class="glyphicon glyphicon-lock white form-control-feedback"></span>
                          </div>
                          <div class="row">
                            <div class="col-xs-12">
                              <button type="submit" id="btn_login" style="font-family:Web Serveroff;" class="btn btn-block btn-flat btn_login">Login</button>
                            </div>
                            <!-- /.col -->
                          </div>
                      </div>
                  </div>
                </center>
            </div>
        </div>
    </div>
    <div class="footer">JDEV</div>

<?php echo $_def_js_files; ?>

<script src="assets/plugins/spinner/dist/spin.min.js"></script>
<script src="assets/plugins/spinner/dist/ladda.min.js"></script>



    <script>
      $(function () {

        $('input').iCheck({
          checkboxClass: 'icheckbox_square-blue',
          radioClass: 'iradio_square-blue',
          increaseArea: '20%' // optional
        });

        var bindEventHandlers=(function(){

                $('.btn_login').click(function(){


                    validateUser().done(function(response){

                        showNotification(response);

                        if(response.stat=="success"){
                            setTimeout(function(){
                                window.location.href = "Dashboard";
                            },600);
                        }

                    }).always(function(){
                        setTimeout(function(){
                                $(".btn_login").html('Login');
                            },800);
                    });


                });


                $('input').keypress(function(evt){
                   if(evt.keyCode==13){
                     validateUser().done(function(response){

                         showNotification(response);

                         if(response.stat=="success"){
                             setTimeout(function(){
                                 window.location.href = "Dashboard";
                             },600);
                         }

                     }).always(function(){
                         setTimeout(function(){
                                 $(".btn_login").html('Login');
                             },800);
                     });
                   }
                });


            })();





            var validateUser=(function(){
              if($('input[name="user_name"]').val()==null|| $('input[name="user_name"]').val()==''){
                $('input[name="user_name"]').val($('input[name="user_name1"]').val());
                $('input[name="user_pword"]').val($('input[name="user_pword1"]').val());
              }
              else{

              }

                var _data={uname : $('input[name="user_name"]').val() , pword : $('input[name="user_pword"]').val()};

                return $.ajax({
                    "dataType":"json",
                    "type":"POST",
                    "url":"Login/transaction/validate",
                    "data" : _data,
                    "beforeSend": function(){
                        $(".btn_login").html('<i class="fa fa-spinner fa-spin fa-3x fa-fw" style="font-size:12pt;"></i>');
                    }
                });
            });


            var showNotification=function(obj){
                PNotify.removeAll(); //remove all notifications
                new PNotify({
                    title:  "Notification",
                    text:  obj.msg,
                    type:  obj.stat
                });
            };
      });
    </script>


</body>

<?php echo $loaderscript; ?>
<!-- Mirrored from avenxo.kaijuthemes.com/extras-login.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 06 Jun 2016 12:14:53 GMT -->
</html>
