<cfif IsDefined("form.quickemail")>
  <cfif form.name is not "" AND form.quickemail is not "" And form.message is not "">
	  <cfmail to = "belairauto21047@gmail.com,mailadmin@belairautoservice.biz" from = "#form.quickemail#" subject = "Quick Email" type="html">
      		 <!---Change  requested by Chris Woodie on 04/09/2020 --->
             <!---Changed email address from woodiemail@netscape.com to belairauto21047@gmail.com--->
            <!---<p style="color:blue;font-size:18px"><b>MailTo:</b> woodiemail@netscape.com<br></p>--->
			<p style="color:blue;font-size:18px"><b>MailTo:</b> belairauto21047@gmail.com<br></p>

			<p style="color:blue;font-size:18px"><b>MailFrom:</b> #Form.quickemail#<br></p>

			<p style="color:blue;font-size:18px"><b>Subject:</b> Quick Email</br></p>

			<p style="color:blue;font-size:18px"><b>Message:</b> #Form.message#</br></p>
	  </cfmail>

	  <cfset confirmtion = true />
  </cfif>
</cfif>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">    
<!-- Google Tag Manager -->
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src='https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-TV7837Z');</script>
<!-- End Google Tag Manager -->
<cfoutput>
    <cfif isDefined("variables.pageTitle")>
        <title>#variables.pageTitle#</title>
    <cfelse>
        <title>Chris Woodie's Bel Air Auto Service</title>
    </cfif>
                 
    <link rel="canonical" href="#variables.CanonicalLink#">
    
</cfoutput>
    <meta name="viewport" content="width=device-width, initial-scale=1"> 
    <meta name="author" content="Chris Woodie's Belair Auto Service"/>
    <cfoutput><meta name="description" content="#variables.metaDescription#"></cfoutput>
    <!---<meta name="description" content="Car Repair site that handles all your vehicle repair needs. Our services include: Safety and Emission Inspections and make all manner of Auto, Car and Truck Repairs. We service all vehicle makes and models and provide Full Service work, and Honor Extended Warranties and Car Warranties. We check Engine Lights, ABS , SRS Front and back Lights, work on Car Electrical Issues, Perform Tune-ups, Implement Performance Modifications, Provide Tire Services, Install Brake and  Suspension Repairs, Carry out  Wheel Alignments, Change your Oil, Offer  MD State Inspections, Fix Air Conditioning, and Adjust  Transmissions"/>
    --->
    <!---<meta http-equiv="X-UA-Compatible" content="IE-edge; chrome=1">--->
    <meta name="robots" content="follow, index, max-snippet:-1, max-video-preview:-1, max-image-preview:large"/>
    <!---<meta http-equiv="Resource-type" content="document">
    <meta http-equiv="Copyright" content="Chris Woodie's Belair Auto Service"/>--->
    <meta name="Language" content="en-us">
<!-- Stylesheets -->
<!--- 07/21/2024 bud hines --->
<!-- Stylesheets -->
<!--- 07/21/2024 bud hines--->
<!--- <cfif CGI.SCRIPT_NAME EQ '/index.cfm'>
    <link rel=?canonical? href=?https://belairautoservice.biz/index.cfm/? />
</cfif>  --->
<link href="css/styles.pure.css" rel="stylesheet">
<!--- <link href="css/bootstrap.css" rel="stylesheet"> --->
<!--- <link href="css/revolution-slider.css" rel="stylesheet"> --->
<!--- commented out on 10/22/2022 --->
<!--- <link href="css/owl.css" rel="stylesheet"> --->
<!--- <link href="css/style.css" rel="stylesheet"> --->
<link rel="shortcut icon" href="images/icons/favicon.ico" />
<!-- Responsive -->

<link href="css/responsive.css" rel="stylesheet">
<!--[if lt IE 9]><script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
<!--[if lt IE 9]><script src="js/respond.js"></script><![endif]-->
<script src="js/jquery.js"></script>
<style>
    .alert {
        display: none;
    }
    .header-lower .social-links a img {
        max-width: 65%;
    }
    .header-lower .social-links .confirmtion-button {
        background-color: #3c763d;
        color: #fff;
        font-size: 14px;
        font-weight: 600;
        margin: 0 !important;
        padding: 0px 10px;
        border-radius: 4px;
        float: right;
        width: auto;
    }
    .header-lower .social-links .alert-danger .confirmtion-button {
        background-color: #a94442;
    }
</style>
</head>

<body>
<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-TV7837Z"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->
<div class="page-wrapper">

    <!-- Preloader -->
    <!--- Commented out preloader  05/17/2020 --->
    <!--- <div class="preloader"></div>       --->

    <!-- Main Header -->
    <header class="main-header">
    	<cfif isDefined("confirmtion")>
	    	<div id="confirmMsg" class="alert alert-success contact-succes" style="width:auto">
	    		<a class="close" title="close" aria-label="close" data-dismiss="alert" href="#">x</a>
	    		Thank you, <cfoutput>#form.name#: your message, #form.message#, has been sent. </cfoutput>.
	    	</div>
	    	<script>
		    	setTimeout(function () {
		    		$('#confirmMsg').slideUp(500);
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
                         	   <!---    	<h3><b>We Do House Calls!</b></h3>
                        	<h4><b>We'll Pick Up Your Vehicle and Deliver it to Your Home!</b></h4>
                        	<h4><b>We Wear Gloves At All Times And For a Nominal Fee We Can Sanitize the Interior of Your Vehicle</b></h4>
                            <h3><b>Corona Virus Update - We're Open to Serve You!</b></h3>--->
							<h4>(At the Fallston Marathon)</h4>
							<h3>1515 Belair Road Fallston, MD 21047</h3>
						</div>
                        <ul class="clearfix">
                            <li>
                                <div class="clearfix ">
                                    <h3>
                                    <img src="images/icons/header-phone.png" alt="Phone number icon">


                                    <b>Call Us Now</b><br>410.879.2254<br>410.838.7227</h3>
                                </div>
                            </li>
							<li>
								<div class="clearfix ">
                                                                    <h3>
								<img src="images/icons/header-timer.png" alt="Business hours icon">
									<b>Our Hours</b><br> <br>M-F: 8:00 - 5:00</h3>
								</div>
							</li>
                               <!---  <li>
                            <div class="clearfix">
                            <p> at the Fallston BP</p>
                            </div>
                            </li>--->
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
                           <!---  --->
                        <div class="navbar-collapse collapse clearfix">
                            <ul class="navigation">
                                <li class="<cfif CGI.SCRIPT_NAME EQ '/index.cfm'> current </cfif> "><a href="index.cfm">Home</a></li>
                                <li class="<cfif CGI.SCRIPT_NAME EQ '/about.cfm'> current </cfif> "><a href="about.cfm">About</a></li>
                                <li class="<cfif CGI.SCRIPT_NAME EQ '/maintenance.cfm'> current </cfif> "><a href="maintenance.cfm">Maintenance</a></li>
                                <li class="<cfif CGI.SCRIPT_NAME EQ '/services.cfm'> current </cfif> "><a href="services.cfm">Services</a></li>
                                <li class="<cfif CGI.SCRIPT_NAME EQ '/contact.cfm'> current </cfif> "><a href="contact.cfm">Contact</a></li>
                                <li class="<cfif CGI.SCRIPT_NAME EQ '/customer-reviews.cfm'> current </cfif> "><a href="customer-reviews.cfm">Customer Reviews</a></li>
                            </ul>
                        </div>
                    </nav>
                    <!--Main Menu End-->

                    <!--Social Links-->
                    <div class="col-md-3 col-sm-12 col-xs-12 social-outer">
                        <div class="social-links text-right">
                            <!---<a href="https://www.facebook.com/pages/Chris-Woodies-Bel-Air-Auto-Service/213696858678389" class="fa fa-facebook-f"></a>--->
                            <a href="https://www.facebook.com/chrisbelairauto/" class="fa fa-facebook-f"></a>
                            <a class="success-alert alert-button thums-icons" data-isgood="true" href="javascript:void(0);"> <img src="images/thumsup-img.png" alt="thumbs up"></a>
                            <a class="danger-alert alert-button thums-icons" data-isgood="false"  href="javascript:void(0);"> <img src="images/thumsdown-img.png" alt="thumbs down"></a>
                            <div class="confirmtion-box alert alert-success thumb-up">
                                <div class="inner-confirmation-box">
                                    <button type="button" class="close">&times;</button>
                                    <p>We are happy you had a good experience, please share your review with us on Google's review page.</p>
                                    <a href="https://www.google.com/search?rlz=1CDGOYI_enUS825US825&hl=en-US&sxsrf=AOaemvI4AyLDDGWmwTys8SoOQ63rjitD_Q:1643202377422&q=belairautoservice.biz&spell=1&sa=X&ved=2ahUKEwim6P_vvc_1AhUClYkEHewdD8sQBSgAegQIARAC&biw=414&bih=720&dpr=2#lrd=0x89c7e0a0b8edb071:0xd5c5720639d05ce2,1,,,&wptab=s:H4sIAAAAAAAAAONgVuLVT9c3NEypKIrPMqksfsRowS3w8sc9YSn9SWtOXmPU5OIKzsgvd80rySypFJLmYoOyBKX4uVB18uxi4sgvSy0qy0wtX8QqkpSao5CYWaSQWFqSr1AMEk5OBQCfvnxTbgAAAA" class="confirmtion-button">OK</a>
                                </div>
                            </div>
                            <div class="confirmtion-box alert alert-danger thumb-down">
                               <div class="inner-confirmation-box">
                                   <button type="button" class="close">&times;</button>
                                   <p>We are sorry you had less than an ideal experience, please complete this email to let us know how we can do better.</p>
                                   <a href="https://www.belairautoservice.biz/contact.cfm" class="confirmtion-button">OK</a>
                               </div>
                           </div>
                            <!---
                            <a href="#" class="fa fa-twitter"></a>
                            <a href="#" class="fa fa-instagram"></a>--->
                            <!---<a href="https://plus.google.com/114670278640307030410" class="fa fa-google"></a>--->
                           <!--- <a href="#" class="fa fa-pinterest-p"></a>--->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>