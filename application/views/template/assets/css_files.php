<link rel="icon" href="assets/img/favicon.png" type="image/gif" sizes="16x16">
<link type="text/css" href="assets/css/bootstrap.css" rel="stylesheet">
<link type="text/css" href="assets/css/animate.css" rel="stylesheet">
<link type="text/css" href="assets/font-awesome/css/font-awesome.css" rel="stylesheet">

<link type="text/css" href="assets/fonts/font-awesome/css/font-awesome.min.css" rel="stylesheet">        <!-- Font Awesome -->
<link type="text/css" href="assets/fonts/themify-icons/themify-icons.css" rel="stylesheet">              <!-- Themify Icons -->
<link type="text/css" href="assets/css/styles.css" rel="stylesheet">                                     <!-- Core CSS with all styles -->

<link type="text/css" href="assets/plugins/codeprettifier/prettify.css" rel="stylesheet">                <!-- Code Prettifier -->
<link type="text/css" href="assets/plugins/iCheck/skins/minimal/blue.css" rel="stylesheet">              <!-- iCheck -->


<link href="assets/plugins/notify/pnotify.core.css" rel="stylesheet"> <!-- notification -->
<link href="assets/css/pace.css" rel="stylesheet"> <!-- pace -->

<link href="assets/plugins/sweet-alert/sweetalert.css" rel="stylesheet"> <!-- sweetalert -->
<style>
	.demo-options{
		top:50px !important;
	}
	.datepicker{z-index:9999 !important}
	.panel-heading{
		background-color:#2c3e50 !important;

	}
	.panel-heading h2{
		color:white !important;
		border-radius:10px;
	}
	.panel-default{
		border-radius:5px;
		border-bottom:2px solid #2c3e50 !important;
	}
	.boldlabel{
		font-weight:bold;
	}
	.inputhighlight{
		border:1.5px solid #27ae60;
		opacity:0.9;
	}
	.black{
		color:black !important;
	}
	.green{
		color:#27ae60 !important;

	}
	.form-group{
		padding:2px !important;
	}
	.nomargin{
		margin:2px;
	}
	.dataTables_length{
		/*float:right;*/
		padding-left:10px;
		padding-top:5px;
	}
	.dataTables_filter {
   /*float:left;*/
   	padding-right:10px;
   	padding-top:5px;
	}

	.ui-pnotify{
            top:50px;
        }

    .sorting{
        background-color:#2c3e50 !important;
        color:white;
    }
    .sorting_asc{
        background-color:#2c3e50 !important;
        color:white;
    }
    .sorting_desc{
        background-color:#2c3e50 !important;
        color:white;
    }
    .sorting_disabled{
        background-color:#2c3e50 !important;
        color:white;
    }
    .customth{
        background-color:#2c3e50 !important;
        color:white;

    }
    .customtable{

    }
    .table-responsive{
    	overflow-x:initial;
    }

    .no-js #loader { display: none;  }
	.js #loader { display: block; position: absolute; left: 100px; top: 0; }
	.se-pre-con {
    position: fixed;
    left: 0px;
    top: 0px;
    width: 100%;
    height: 100%;
    z-index: 9999;
    background: url(assets/img/preloader.gif) center no-repeat #fff;
	}
	.container-fluid{
		/**padding:0px;**/
	}
	.panel-body{
		padding:0px !important;
	}

	::-webkit-scrollbar {
    width: 8px;
    height:9px;
	}

	::-webkit-scrollbar-track {
	    -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3);
	    border-radius: 5px;
	}

	::-webkit-scrollbar-thumb {
		background: #7f8c8d;
	    border-radius: 5px;
	    -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.5);
	}
	.inlinecustomlabel{
            font-weight: bold;
            margin-top:5px;
            font-size: 14px;

        }
    .inlinecustomlabel-sm{
            font-weight: bold;
            margin-top:5px;
            font-size: 13px;

        }
        .inlinecustomlabel-sm2{
            font-weight: bold;
            font-size: 8pt;
            margin-top:5px;

        }
        .inputcustom{
        	height:30px;
        }
        .loadingimg {
          margin-top:4px;width:150px;height:150px;
          background: transparent url('assets/img/imgpreloader2.gif') center no-repeat;
        }
        .btnedit{
            background-color:#3498db !important;
            color:white;
        }
        .btndelete{
            background-color: #e74c3c !important;
            color:White;
        }
		#topnav .navbar-brand {
	    width: 120px;
		}
	    /*.modal-dialog{
		    height: 750px !important;
		    overflow-y:scroll;
		}*/
		/*.modal-backdrop{
			height:auto !important;
		}*/
		.modal-backdrop {
		  position: fixed;
		  top: 0;
		  right: 0;
		  bottom: 0;
		  left: 0;
		  z-index: @zindex-modal-background;
		  background-color: @modal-backdrop-bg;
		  // Fade for backdrop
		  &.fade { .opacity(0); }
		  &.in { .opacity(@modal-backdrop-opacity); }
		}
		html {
		  zoom: 90%;
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
			max-width: 100%;
    	max-height: 100%;
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
		.btn:hover{
			box-shadow: 2px 2px 10px black;
		}
		.schedsetting{
			cursor:pointer;
			transition: all 0.5s ease;

		}
		.schedsetting:hover{
			transition: all 0.5s ease;
			color:black;
			box-shadow: 1px 1px 15px black !important;
		}
		.static-sidebar{
			-webkit-transition: width 0.5s, height 0.5s; /* For Safari 3.1 to 6.0 */
    	transition: width 0.5s, height 0.5s;
		}
		.icon-bg{
			-webkit-transition: width 0.5s, height 0.5s; /* For Safari 3.1 to 6.0 */
    	transition: width 0.5s, height 0.5s, transform 0.5s;
		}
		.icon-bg:hover{
			transform: rotate(360deg);
		}
		.sidebar nav.widget-body > ul.acc-menu li, .sidebar nav.widget-body > ul.acc-menu li a{
			transition: all 0.5s ease;
		}
		.username{
			transition: all 0.5s ease;
		}
		.useremail{
			transition: all 0.5s ease;
		}
		.odd{
			transition: all 0.3s ease-out;
		}
		.even{
			transition: all 0.3s ease-out;
		}.ui-pnotify-text{
			font-weight:bold;
			font-size:10pt !important;
		}
		.reports {
		  width: 95%;
		  height: 95%;
		  margin-top: 10px;
		  padding: 0;
		}

		.report-content {
		  height: auto;
		  min-height: 95%;
		  border-radius: 0;
		}
		.modal-header{
      cursor:move;
    }

		.delete{
			width:40px;background-color:#e74c3c;color:white;
		}
		.add{
			width:40px;background-color:#2ecc71 !important;color:white;"
		}
		.name{
			width:120;background-color:#3498db;color:white;
		}

		</style>
