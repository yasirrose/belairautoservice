<!--- OLD HEADER --->
<!--- <cfheader name="Content-Security-Policy" value="
    default-src 'self';
    script-src 'self' https://www.googletagmanager.com https://cdn.jsdelivr.net https://cdnjs.cloudflare.com https://tag.brandcdn.com https://adservices.brandcdn.com https://maps.googleapis.com https://maps.gstatic.com;
    font-src 'self' https://fonts.googleapis.com https://fonts.gstatic.com https://tag.brandcdn.com;
    img-src 'self' data: https://www.belairautoservice.biz https://www.googletagmanager.com https://insight.adsrvr.org https://maps.googleapis.com;
    style-src 'self' 'unsafe-inline' https://fonts.googleapis.com;
    frame-src 'self' https://insight.adsrvr.org https://www.google.com;
    object-src 'self';
"> --->

<!--- NEW HEADER COMMENTING OUT ON 08/24/2024 TO SEE IF THIS FIXES THE PROBLEM --->
<!--- <cfheader name="Content-Security-Policy" value="
    default-src 'self';
    script-src 'self' 'unsafe-inline' 'unsafe-eval' https://www.googletagmanager.com https://cdn.jsdelivr.net https://cdnjs.cloudflare.com https://tag.brandcdn.com https://adservices.brandcdn.com https://maps.googleapis.com https://maps.gstatic.com https://www.google.com https://www.gstatic.com;
    
    img-src 'self' data: https://www.belairautoservice.biz https://www.googletagmanager.com https://insight.adsrvr.org https://maps.googleapis.com https://belairautoservice.biz;
    style-src 'self' 'unsafe-inline';
    frame-src 'self' https://insight.adsrvr.org https://www.google.com https://adservices.brandcdn.com;
"> --->

<!--- NEW HEADER adjusted CSP without the 'unsafe-inline' and 'unsafe-eval' directives MADE ON 8/24/2024 AT 8:48 PM commented out at 8:53 because this did not work either. need to test locally--->
<!---<cfheader name="Content-Security-Policy" value="
    default-src 'self' https://www.belairautoservice.biz;
    script-src 'self' 'unsafe-inline' https://www.googletagmanager.com https://cdn.jsdelivr.net https://cdnjs.cloudflare.com https://tag.brandcdn.com https://adservices.brandcdn.com https://maps.googleapis.com https://maps.gstatic.com https://www.google.com https://www.gstatic.com;
    font-src 'self' 'unsafe-inline' https://fonts.googleapis.com https://fonts.gstatic.com https://tag.brandcdn.com;
    img-src 'self' 'unsafe-inline' data: https://www.belairautoservice.biz https://www.googletagmanager.com https://insight.adsrvr.org https://maps.googleapis.com https://belairautoservice.biz;
    style-src 'self' 'unsafe-inline' https://fonts.googleapis.com;
    frame-src 'self' 'unsafe-inline' https://insight.adsrvr.org https://www.google.com https://adservices.brandcdn.com;
">--->

<!--- new cfheader for testing on 8/26/2024 by bud hines--->
<!---
<cfheader name="Content-Security-Policy" value="
    default-src 'self' https://*;
    script-src 'self' 'unsafe-inline' https://*;
    font-src 'self' https://*;
    img-src 'self' data: https://*;
    style-src 'self' 'unsafe-inline' https://*;
    frame-src 'self' https://*;
    object-src 'self';
    report-uri /csp-violation-report-endpoint;
">
--->

<!--- new cfheader by bud hines on 08/27/2026--->
<cfheader name="Content-Security-Policy" value="
    default-src 'self' https://www.belairautoservice.biz;
    script-src 'self' 'unsafe-inline' https://www.googletagmanager.com https://cdn.jsdelivr.net https://cdnjs.cloudflare.com https://tag.brandcdn.com https://adservices.brandcdn.com https://maps.googleapis.com https://maps.gstatic.com https://www.google.com https://www.gstatic.com;
    font-src 'self' 'unsafe-inline' https://www.belairautoservice.biz https://belairautoservice.biz https://fonts.googleapis.com https://fonts.gstatic.com https://tag.brandcdn.com;
    img-src 'self' 'unsafe-inline' data: https://www.belairautoservice.biz https://www.googletagmanager.com https://insight.adsrvr.org https://maps.googleapis.com;
    style-src 'self' 'unsafe-inline' https://fonts.googleapis.com;
    frame-src 'self' 'unsafe-inline' https://insight.adsrvr.org https://www.google.com https://adservices.brandcdn.com;
">

<!--- added this new header to resolve cors issue --->
<cfheader name="Access-Control-Allow-Origin" value="https://belairautoservice.biz">



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
    <!--- <script>
        (function(w,d,s,l,i){
            w[l]=w[l]||[];
            w[l].push({'gtm.start': new Date().getTime(), event:'gtm.js'});
            var f=d.getElementsByTagName(s)[0],
                j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';
            j.async=true;
            j.src='https://www.googletagmanager.com/gtm.js?id='+i+dl;
            f.parentNode.insertBefore(j,f);
        })(window,document,'script','dataLayer','GTM-TV7837Z');
    </script> --->
    <!-- End Google Tag Manager -->

    <cfoutput>
        <!-- Page Title -->
        <cfif isDefined("variables.pageTitle")>
            <title>#variables.pageTitle#</title>
        <cfelse>
            <title>Chris Woodie's Bel Air Auto Service</title>
        </cfif>

        <!-- Canonical Link -->
        <cfif isDefined("variables.CanonicalLink")>
            <link rel="canonical" href="#variables.CanonicalLink#">
        <cfelse>
            <!-- Build canonical link using CGI variables -->
            <cfset protocol = cgi.https eq "on" ? "https://" : "http://">
            <cfset host = cgi.server_name>
            <cfset port = (cgi.server_port eq "80" or cgi.server_port eq "443") ? "" : ":" & cgi.server_port>
            <cfset uri = cgi.script_name & (cgi.query_string neq "" ? "?" & cgi.query_string : "")>
            <link rel="canonical" href="#protocol##host##port##uri#" />
        </cfif>

        <!-- Meta Description -->
        <cfif isDefined("variables.metaDescription") and len(trim(variables.metaDescription))>
            <meta name="description" content="#variables.metaDescription#" />
        <cfelse>
            <meta name="description" content="Welcome to Belair Auto Service, your trusted partner for all auto repair needs in Belair." />
        </cfif>
    </cfoutput>

    <!-- Viewport -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="author" content="Chris Woodie's Belair Auto Service">
    <meta name="robots" content="follow, index, max-snippet:-1, max-video-preview:-1, max-image-preview:large">
    <meta name="language" content="en-us">
    <meta name="keywords" content="Bel Air, Fallston, Harford County, Auto Repair, Car Repair, Truck Repair, All Makes and Models, Full Service, Extended Warranty Service,
  Check Engine Lights, ABS & SRS Lights, Electrical, Tune-ups, Performance Modifications, Tires, Brakes, Suspensions, Wheel Alignments,
   Oil Changes, MD State Inspections, Air Conditioning Service, Transmission Service">

    <!-- Stylesheets -->
    <!--- <link href="https://www.belairautoservice.biz/css/styles.pure.css" rel="stylesheet"> --->
    <link href="https://www.belairautoservice.biz/css/styles.pure.css" rel="preload" as="style" onload="this.rel='stylesheet'">

    <!--- <link rel="preload" href="https://www.belairautoservice.biz/css/styles.pure.css" as="style">
    
    <link rel="stylesheet" href="https://www.belairautoservice.biz/css/styles.pure.css" media="print" onload="this.media='all'">
    <noscript><link rel="stylesheet" href="https://www.belairautoservice.biz/css/styles.pure.css"></noscript> --->

    <link rel="shortcut icon" href="https://www.belairautoservice.biz/images/icons/favicon.ico" />
    <!---<link href="css/responsive.css" rel="stylesheet">--->
    
    <!-- IE Compatibility -->
    <!--[if lt IE 9]><script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
    <!--[if lt IE 9]><script src="js/respond.js"></script><![endif]-->
    

      
    
    <!-- jQuery -->
    <script src="https://www.belairautoservice.biz/js/jquery.js" deffer></script>
    
    <!--- <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.0/jquery.validate.min.js"> </script>   --->
    <!--- <script src="https://ajax.aspnetcdn.com/ajax/jquery.validate/1.19.0/jquery.validate.min.js"></script> --->
    
    <!-- Inline Styles -->
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
    <meta name="google-site-verification" content="1ZIenJBRhdywckIBOASqjlw0Aoe-ndoHFXVKkAZEOMo" />
</head>

<body>
<!-- Google Tag Manager (noscript) -->
<!--- <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-TV7837Z"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript> --->
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

                   <!--- <picture>
                    <!-- WebP format -->
                    <source srcset="https://www.belairautoservice.biz/images/logo-2.webp" type="image/webp">
                    <!-- PNG fallback -->
                    <img src="https://www.belairautoservice.biz/images/logo-2.png" alt="Belair Auto Service" title="Belair Auto Service" height="150" width="382">
                </picture> --->

                     	<img src="https://www.belairautoservice.biz/images/logo-2.webp" alt="Belair Auto Service" title="Belair Auto Service" height="150" width="382" loading="lazy" >
                    	</a>
					</div>
                    <div class="col-lg-6 header-top-infos col-lg-offset-2">
						<div class="header-right-text">
                         	   <!---    	<h3><b>We Do House Calls!</b></h3>
                        	<h4><b>We'll Pick Up Your Vehicle and Deliver it to Your Home!</b></h4>
                        	<h4><b>We Wear Gloves At All Times And For a Nominal Fee We Can Sanitize the Interior of Your Vehicle</b></h4>
                            <h3><b>Corona Virus Update - We're Open to Serve You!</b></h3>--->

							<!--- <h4>(At the Fallston Marathon)</h4> --->
                            <p style="font-size:18px;" >(At the Fallston Marathon)</p>

                            <!--- <cfif CGi.REMOTE_ADDR eq '110.39.156.90' >
                                <p style="font-size:18px;" >(At the Fallston Marathon)</p>
                            </cfif> --->
							<!--- <h3>1515 Belair Road Fallston, MD 21047</h3> --->
                            <p style="font-size:24px; color:#fb4848;" >1515 Belair Road Fallston, MD 21047</p>

                            <!--- <cfif CGi.REMOTE_ADDR eq '110.39.156.90' >
                                <p style="font-size:24px; color:#fb4848;" >1515 Belair Road Fallston, MD 21047</p>
                            </cfif> --->

						</div>
                        <ul class="clearfix">
                            <li>
                                <div class="clearfix ">
                                    <p style="font-size:24px;">
                                    <img src="https://www.belairautoservice.biz/images/icons/header-phone.png" alt="Phone number icon" height="30" width="30" loading="lazy" >


                                    <b>Call Us Now</b><br><br>410.879.2254<br> <br> 410.838.7227</p>
                                </div>
                            </li>
							<li>
								<div class="clearfix ">
                                                                    <p style="font-size:24px;">
								<img src="https://www.belairautoservice.biz/images/icons/header-timer.png" alt="Business hours icon" height="31" width="27" loading="lazy" >
									<b>Our Hours</b><br> <br><br><br>  M-F: 8:00 - 5:00</p>
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
                            <button type="button" class="navbar-toggle" aria-label="Toggle navigation" data-toggle="collapse" data-target=".navbar-collapse">
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                            
                        </div>
                           <!---  --->
                        <div class="navbar-collapse collapse clearfix">
                            <ul class="navigation">
                                <li class="<cfif CGI.SCRIPT_NAME EQ '/index.cfm'> current </cfif> "><a href="https://www.belairautoservice.biz/index.cfm">Home</a></li>
                                <li class="<cfif CGI.SCRIPT_NAME EQ '/about.cfm'> current </cfif> "><a href="https://www.belairautoservice.biz/about.cfm">About</a></li>
                                <li class="<cfif CGI.SCRIPT_NAME EQ '/maintenance.cfm'> current </cfif> "><a href="https://www.belairautoservice.biz/maintenance.cfm">Maintenance</a></li>
                                <li class="<cfif CGI.SCRIPT_NAME EQ '/services.cfm'> current </cfif> "><a href="https://www.belairautoservice.biz/services.cfm">Services</a></li>
                                <li class="<cfif CGI.SCRIPT_NAME EQ '/contact.cfm'> current </cfif> "><a href="https://www.belairautoservice.biz/contact.cfm">Contact</a></li>
                                <li class="<cfif CGI.SCRIPT_NAME EQ '/customer-reviews.cfm'> current </cfif> "><a href="https://www.belairautoservice.biz/customer-reviews.cfm">Customer Reviews</a></li>
                            </ul>
                        </div>
                    </nav>
                    <!--Main Menu End-->

                    <!--Social Links-->
                    <div class="col-md-3 col-sm-12 col-xs-12 social-outer">
                        <div class="social-links text-right">
                            <!---<a href="https://www.facebook.com/pages/Chris-Woodies-Bel-Air-Auto-Service/213696858678389" class="fa fa-facebook-f"></a>--->
                            <a href="https://www.facebook.com/chrisbelairauto/" class="fa fa-facebook-f"></a>
                            <a class="success-alert alert-button thums-icons" data-isgood="true" href="javascript:void(0);"> <img src="https://www.belairautoservice.biz/images/thumsup-img2.webp" alt="thumbs up" height="20" width="50" loading="lazy" ></a>
                            <a class="danger-alert alert-button thums-icons" data-isgood="false"  href="javascript:void(0);"> <img src="https://www.belairautoservice.biz/images/thumsdown-img1.webp"  alt="thumbs down" height="20" width="50" loading="lazy" ></a>
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
    
    <!--- <cfdump var="#CGi.REMOTE_ADDR#"  110.39.156.90> --->

   