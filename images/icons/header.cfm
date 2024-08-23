<cfif IsDefined("form.quickemail")>
  <cfif form.name is not "" AND form.quickemail is not "" And form.message is not "">
	  <cfmail to = "belairauto21047@gmail.com,mailadmin@belairautoservice.biz" from = "#form.quickemail#" subject = "Quick Email" type="html">
			<p style="color:blue;font-size:18px"><b>MailTo:</b> woodiemail@netscape.com<br></p>

			<p style="color:blue;font-size:18px"><b>MailFrom:</b> #Form.quickemail#<br></p>

			<p style="color:blue;font-size:18px"><b>Subject:</b> Quick Email</br></p>

			<p style="color:blue;font-size:18px"><b>Message:</b> #Form.message#</br></p>
	  </cfmail>

	  <cfset confirmtion = true />
  </cfif>
</cfif>

<!DOCTYPE html>
<html>
<head>
 <title>Chris Woodie's Bel Air Auto Service</title>
     <meta name="description" content="Auto Repair, Car Repair, Truck Repair, All Makes and Models, Full Service, Extended Warranty Service,
  Check Engine Lights, ABS & SRS Lights, Electrical, Tune-ups, Performance Modifications, Tires, Brakes, Suspensions, Wheel Alignments,
   Oil Changes, MD State Inspections, Air Conditioning Service, Transmission Service" />
    <meta name="keywords" content="Auto Repair, Car Repair, Truck Repair, All Makes and Models, Full Service, Extended Warranty Service,
  Check Engine Lights, ABS & SRS Lights, Electrical, Tune-ups, Performance Modifications, Tires, Brakes, Suspensions, Wheel Alignments,
   Oil Changes, MD State Inspections, Air Conditioning Service, Transmission Service">
    <META HTTP-EQUIV="Content-Type" content="text/html; charset=iso-8859-1">
    <meta name="robots" content="index, follow">
    <meta name="distribution" content="global">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="Resource-type" content="document">
    <meta http-equiv="Copyright" content=" Auto Repair, Car Repair, Truck Repair, All Makes and Models, Full Service, Extended Warranty Service,
    Check Engine Lights, ABS & SRS Lights, Electrical, Tune-ups, Performance Modifications, Tires, Brakes, Suspensions, Wheel Alignments,
    Oil Changes, MD State Inspections, Air Conditioning Service, Transmission Service ">
    <meta name="Language" content="en-us">
    <meta name="Pragma" content="no-cache">
    <meta name="ROBOTS" content="ALL">
    <meta name="revisit-after" content="1 days">
    <meta name="author" content=" Auto Repair, Car Repair, Truck Repair, All Makes and Models, Full Service, Extended Warranty Service,
    Check Engine Lights, ABS & SRS Lights, Electrical, Tune-ups, Performance Modifications, Tires, Brakes, Suspensions, Wheel Alignments,
    Oil Changes, MD State Inspections, Air Conditioning Service, Transmission Service ">
    <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">

<!-----style sheets------->
	<link href="css/bootstrap.css" rel="stylesheet">
	<link href="css/font-awesome.css" rel="stylesheet">
	<link href="css/flaticon.css" rel="stylesheet">
	<link href="css/revolution-slider.css" rel="stylesheet">
	<link href="css/owl.css" rel="stylesheet">
	<link href="css/style.css" rel="stylesheet">
	<link rel="shortcut icon" href="images/icons/favicon.ico" />
	<link href="css/responsive.css" rel="stylesheet">
<!------------------------>

</head>

<body>
<div class="page-wrapper">

    <!-- Preloader -->
    <div class="preloader"></div>

    <!-- Main Header -->
    <header class="main-header">
    	<cfif isDefined("confirmtion")>
	    	<div id="confirmMsg" class="alert alert-success contact-succes" style="width:auto">
	    		<a class="close" title="close" aria-label="close" data-dismiss="alert" href="#">x</a>
	    		Thank you, <cfoutput>#form.name#: your message, #form.message#, has been sent. </cfoutput>.
	    	</div>
	    	<script type="text/javascript">
		    	setTimeout(function () {
		    		$('#confirmMsg').slideUp(500);
		    	}, 5000);
	    	</script>
    	</cfif>

    	<cfif isDefined("error")>
	    	<div id="errorMSG" class="alert alert-danger contact-danger" style="width:auto">
	    		<a class="close" title="close" aria-label="close" data-dismiss="alert" href="#">x</a>
	    		Invalid captcha please try again. Thank you!
	    	</div>
	    	<script type="text/javascript">
		    	setTimeout(function () {
		    		$('#errorMSG').slideUp(500);
		    	}, 5000);
	    	</script>
    	</cfif>
        <div class="header-top">
            <div class="auto-container">
                <div class="row clearfix">
                    <!--Logo-->
                    <div class="col-md-4 col-sm-4 col-xs-12 logo">
						<a href="index.cfm">
                   <!-- <img src="images/chriswoodies_logo7.png" alt="Carshire" title="Carshire">-->
                     	<img src="images/logo-2.png" alt="Belair Auto Service" title="Belair Auto Service" height="150">
                    	</a>
					</div>
                    <div class="col-lg-6 header-top-infos col-lg-offset-2">
						<div class="header-right-text">
							<h4>(At the Fallston BP)</h4>
							<h3>1515 Belair Road Fallston, MD 21047</h3>
						</div>
                        <ul class="clearfix">
                            <li>
                                <div class="clearfix ">
                                    <h3>
                                    <img src="images/icons/header-phone.png" alt="">

                                    <b>Call Us Now</b><br>410.879.2254<br>410.838.7227</h3>
                                </div>
                            </li>
							<li>
								<div class="clearfix ">
                                                                    <h3>
									<img src="images/icons/header-timer.png" alt="">
									<b>Our Hours</b><br> <br>M-F: 8:00 - 5:30</h3>
								</div>
							</li>
                        </ul>
                    </div>

                </div>
            </div>
        </div>

        <!--Header Lower-->
		<div class="header-lower">
        	<div class="auto-container">
            	<div class="row clearfix">
                	<!--Main Menu-->
                    <nav class="col-md-9 col-sm-12 col-xs-12 main-menu">
                        <div class="navbar-header">
                            <!-- Toggle Button -->
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                        </div>

                        <div class="navbar-collapse collapse clearfix">
                            <ul class="navigation">
                                <li <cfif #listlast(cgi.script_name,"/")# EQ 'index.cfm'>
                                	class="current"
                                </cfif> ><a href="index.cfm">Home</a></li>

                                <li <cfif #listlast(cgi.script_name,"/")# EQ 'about.cfm'>
                                	class="current"
                                </cfif> ><a href="about.cfm">About</a></li>

                                <li <cfif #listlast(cgi.script_name,"/")# EQ 'maintenance.cfm'>
                                	class="current"
                                </cfif> ><a href="maintenance.cfm">Maintenance</a></li>

                                <li <cfif #listlast(cgi.script_name,"/")# EQ 'services.cfm'>
                                	class="current"
                                </cfif> ><a href="services.cfm">Services</a></li>

                                <li <cfif #listlast(cgi.script_name,"/")# EQ 'contact.cfm'>
                                	class="current"
                                </cfif> ><a href="contact.cfm">Contact</a></li>

                            </ul>
                        </div>
                    </nav>
                    <!--Main Menu End-->

                    <!--Social Links-->
                    <div class="col-md-3 col-sm-12 col-xs-12 social-outer">
                        <div class="social-links text-right">
                            <a href="https://www.facebook.com/pages/Chris-Woodies-Bel-Air-Auto-Service/213696858678389" class="fa fa-facebook-f"></a>
                            <a href="https://plus.google.com/114670278640307030410" class="fa fa-google"></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>