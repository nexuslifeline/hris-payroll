


  <!-- Bootstrap 3.3.6 -->
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="assets/dist/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="assets/dist/css/skins/_all-skins.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="assets/plugins/iCheck/flat/blue.css">
  <!-- Morris chart -->
  <link rel="stylesheet" href="assets/plugins/morris/morris.css">
  <!-- jvectormap -->
  <link rel="stylesheet" href="assets/plugins/jvectormap/jquery-jvectormap-1.2.2.css">
  <!-- Date Picker -->
  <link rel="stylesheet" href="assets/plugins/datepicker/datepicker3.css">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="assets/plugins/daterangepicker/daterangepicker.css">
  <!-- bootstrap wysihtml5 - text editor -->
  <link rel="stylesheet" href="assets/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">

  <link href="assets/plugins/notify/pnotify.css" rel="stylesheet"> <!-- notification -->
  <link href="assets/plugins/sweet-alert/sweetalert.css" rel="stylesheet"> <!-- sweet alert -->
  <!-- DataTables -->
  <link rel="stylesheet" href="assets/plugins/datatables/dataTables.bootstrap.css">
    <!-- Select2 -->
  <link rel="stylesheet" href="assets/plugins/select2/select2.min.css">
    <!-- Lightbox -->
  <link rel="stylesheet" href="assets/plugins/lightgallery/dist/css/lightgallery.css">
  <!-- pace -->
  <link rel="stylesheet" href="assets/plugins/pace/pace.css">
  <!-- custom style -->
  <link rel="stylesheet" href="assets/css/styles.css">

<!--   <link rel="stylesheet" href="assets/plugins/datetimepicker/bootstrap-datetimepicker.min.css"> -->


  <style>
    input{
        font-size:8pt !important;
    }
    .fa-size{
      width:15px;
    }
    .tbl-header{
      background-color: #222d32;
      color:white;
    }
    .select2{
      width:100% !important;
    }
    .form-control {
			transition: all 0.5s ease;
      border:1px solid #95a5a6 !important;
    }
    .form-control:focus {
				transition: all 0.5s ease;
        box-shadow: 1px 1px 15px black !important;
				border-radius: 5px;
				color:black;
        font-weight: bold;
        font-size:11pt;
    }
    /*select:focus {
			transition: all 0.5s ease;
			box-shadow: 1px 1px 15px black !important;
			border-radius: 10px;
			color:black;
        font-weight: bold;
    }*/
		textarea.form-control{
			transition: all 0.5s ease;
    }
    textarea.form-control:focus {
			transition: all 0.5s ease;
			box-shadow: 1px 1px 15px black !important;
			border-radius: 10px;
			color:black;
        font-weight: bold;
    }
    input[type="checkbox"]:focus {
			transition: all 0.5s ease;
      outline:5px solid #616161 !important;
    }

		.select2 {
			transition: all 0.5s ease;
      border:1px solid #95a5a6 !important;
    }
    .select2:focus {
				transition: all 0.5s ease;
        box-shadow: 1px 1px 15px black !important;
				border-radius: 5px;
				color:black;
        font-weight: bold;
        font-size:11pt;
    }

		.btn{
			transition: all 0.5s ease;
		}

    .colorsearch{
      transition: all 0.5s ease;
    }
    .box{
      transition: all 0.5s ease;
    }

		.btn:hover{
			box-shadow: 2px 2px 10px black;
		}


    .typeahead:focus{
      transition: all 0.5s ease;
      box-shadow: 1px 1px 15px black !important;
      border-radius: 5px;
      color:black;
      font-weight: bold;
      font-size:11pt;
    }
    .ui-pnotify{
      top:50px;
    }
    /*.loader {
      position: fixed;
      left: 0px;
      top: 0px;
      width: 100%;
      height: 100%;
      z-index: 9999;
      background-color: #16a085;
      background: url('assets/loader.svg') 50px 50px no-repeat rgb(249,249,249);
    }*/
    .loader {
      position: fixed;
      left: 0px;
      top: 0px;
      width: 100%;
      height: 100%;
      z-index: 9999;
      background: url(assets/ripple.svg) center no-repeat #fff;
    }
    .odd{
      height:20px !important;
    }
    .even{
      height:20px !important;
    }
    .table{
      width:100% !important;
    }
    td.details-control {
        background: url('assets/img/open.png') no-repeat center center;
        cursor: pointer;
    }
    tr.details td.details-control {
        background: url('assets/img/close.png') no-repeat center center;
    }

    .imgwrapper img{
      box-shadow: 0px 0px 3px black !important;height: 100%;width: auto;vertical-align: middle;
      border-radius:5%;
    }
    .imgwrapper{
      box-shadow: 0px 1px 25px black !important;
      border-radius:5%;
    }
    .smalltable{
      font-size:8pt;
    }
    .noborder{
			border:none;
      background-color:transparent;
		}
    .pointer{
			cursor: pointer;
		}
    .inputsmall{
      width:100%;
    }

    .btncash{
      width:100%;
      background-color:#27ae60;
      color:white !important;
      height:60px;
      margin-top:2px;
      font-weight:bold;
      font-size:13pt;
      box-shadow: 1px 1px 5px black;
      border:1px solid #2c3e50;
    }

    .amounts{
      color:#2ecc71;
      margin-right:5px;
      float:right;
      text-align:right;
      font-weight:bold;
      margin-top:0px !important;
      border:none;
      background-color:transparent;
      color:#f1c40f;
      font-size:18pt !important;
    }

    .lgtext{
      font-weight: bold !important;
      color:#27ae60 !important;
      font-size:18pt !important;
    }

    .btn-blue{
      background-color:#2980b9;
      color:white;
    }
    .modal-header{
      cursor:move;
    }

  </style>
