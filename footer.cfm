  <style>
    .main-footer .social-links a img {
        max-width: 65%;
    }
    .main-footer .social-links .confirmtion-button {
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
    .main-footer .social-links .alert-danger .confirmtion-button {
        background-color: #a94442;
    }
 </style>

  <!--Main Footer-->
    <footer class="main-footer">
    	<!--Footer Upper-->
    	<div class="footer-upper">
        	<div class="auto-container">
            	<div class="row clearfix">

                    <!--Footer Widget-->
                    <div class="col-md-3 col-sm-12 col-xs-12">
                    	<div class="footer-widget contact-widget">
                        	<h3>Contact Us</h3>
                        	<div class="text">Contact us to set up your next appointment.</div>
                            <ul class="info">
                            <!--- -------------------------------------------------------------------- --->
							<!---change requested by Chris Woodie on 04/04/2020 --->
           					 <!---changed email address from mailadmin@belairautoservice.biz to belairauto21047@gmail.com --->
            			 	<!--- -------------------------------------------------------------------- --->
                            	<!---<li><strong>Email</strong> <a href="contact.cfm">mailadmin@belairautoservice.biz</a></li>--->
                                <li><strong>Email</strong> <a href="contact.cfm">belairauto21047@gmail.com</a></li>
                                <li><strong>Phone</strong> <a href="tel:410.879.2254">410.879.2254</a></li>
                                <li><strong>Phone</strong> <a href="tel:410.879.7227">410.838.7227</a></li>
                                <li><strong>Website</strong> <a href="https://www.belairautoservice.biz/index.cfm">BelAirAutoService.biz</a></li>
                            </ul>
                        </div>
                    </div>

                    <!--Footer Widget-->
                    <div class="col-md-3 col-sm-12 col-xs-12">
                    	<div class="footer-widget services-widget">
                        	<h3>Our Services</h3>
                        	<ul class="links">
                            	<li><a class="disable-link" href=""><i class="fa fa-check-circle"></i>All Makes and Models</a></li>
                                <li><a class="disable-link" href=""><i class="fa fa-check-circle"></i>MD Car Inspection</a></li>
                                <li><a class="disable-link" href=""><i class="fa fa-check-circle"></i>Oil Lube and Filter</a></li>
                                <li><a class="disable-link" href=""><i class="fa fa-check-circle"></i>Wheel Alignment</a></li>
                                <li><a class="disable-link" href=""><i class="fa fa-check-circle"></i>Full Service Auto/Truck Repairs</a></li>
                            </ul>
                        </div>
                    </div>

                    <!--Footer Widget-->
                    <div class="col-md-3 col-sm-12 col-xs-12">
                    	<div class="footer-widget support-widget">
                        	<h3>Our Support</h3>
                        	<ul class="links">
                            	<li><a class="disable-link" href=""><i class="fa fa-check-circle"></i>How to get started?</a></li>
                                <li><a class="disable-link" href=""><i class="fa fa-check-circle"></i>Frequently asked questions</a></li>
                                <li><a class="disable-link" href=""><i class="fa fa-check-circle"></i>Customer testimonials</a></li>
                                <li><a class="disable-link" href=""><i class="fa fa-check-circle"></i>Get a free quote</a></li>
                                <li><a class="disable-link" href=""><i class="fa fa-check-circle"></i>Help &amp; Support Center</a></li>
                            </ul>
                        </div>
                    </div>

                    <!--Footer Widget-->
                    <div class="col-md-3 col-sm-12 col-xs-12">
                    	<div class="footer-widget newsletter-widget">
                        	<h3>FOLLOW US</h3>
                            <ul class="social-bttn-box">
                            	<li><a href="https://www.facebook.com/Bel-Air-Auto-Service-115837198476058/"><img src="https://www.belairautoservice.biz/images/facebook-btn.png" alt="Facebook icon"  height="40" width="182" loading="lazy" /></a></li>
                               <!--- <li><a href="https://plus.google.com/114670278640307030410"><img src="images/Google-plus-btn.png" /></a></li>--->
                            </ul>
                        </div>
                    </div>

                </div>
            </div>
        </div>


        <!--Footer Bottom-->
        <div class="footer-bottom">
        	<div class="auto-container">
        	        <cfset currentyear = now()>


            	<div class="row clearfix">
            	    <cfoutput>
                    <div class="col-md-8 col-sm-12 col-xs-12"><div class="copyright">Copryright  &copy;#dateformat(currentyear, "yyyy")# Bel Air Auto Service |  Designed and Built by RuntheBusiness at <a href="https://Runthebusiness.biz" style="color: red;"> RuntheBusiness.biz</a></div>
                    </div></cfoutput>
                    <div class="col-md-4 col-sm-12 col-xs-12">
                        <div class="social-links">
                            <a href="https://www.facebook.com/Bel-Air-Auto-Service-115837198476058/" class="fa fa-facebook-f"></a> 
                            <a class="success-alert alert-button thums-icons footer" data-isgood="true" href="javascript:void(0);"> <img src="https://www.belairautoservice.biz/images/thumsup-img2.webp" alt="thumbs up" height="30" width="50" loading="lazy" ></a>

                            <a class="danger-alert alert-button thums-icons footer" data-isgood="false"  href="javascript:void(0);"> <img src="https://www.belairautoservice.biz/images/thumsdown-img1.webp" alt="thumbs down" loading="lazy" height="30" width="50" style="margin-top:8px;"></a>
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

                            <!---<a href="https://plus.google.com/114670278640307030410" class="fa fa-google"></a>--->
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </footer>

</div>
<!--End pagewrapper-->

<!--Scroll to top-->
<div class="scroll-to-top"></div>

<div id="cookieConsent">
    <!--- <div id="closeCookieConsent">x</div> --->
    This website is using cookies. <a href="#" target="_blank">More info</a>. <a class="cookieConsentOK">That's Fine</a>
</div>


<!-----style sheets-----
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/font-awesome.css" rel="stylesheet">
<link href="css/flaticon.css" rel="stylesheet">
<link href="css/revolution-slider.css" rel="stylesheet">
<link href="css/owl.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<link rel="shortcut icon" href="images/icons/favicon.ico" />
<link href="css/responsive.css" rel="stylesheet">
<script src="js/jquery.js"></script>
----->
<link href="https://www.belairautoservice.biz/css/mix-css-min.css" rel="stylesheet" >
<!--- <script src="https://www.belairautoservice.biz/js/jquery.js" defer></script> --->
<!--- <script src="https://www.belairautoservice.biz/js/validate.js" defer></script> --->
<!--- <script src='https://cdn.jsdelivr.net/gmaps4rails/2.1.2/gmaps4rails.js' defer> </script> --->
<!--- <script src='https://cdnjs.cloudflare.com/ajax/libs/underscore.js/1.8.3/underscore.js' defer> </script> --->
<script async src="https://www.belairautoservice.biz/js/mix-js-min.js" ></script>
<!--JS Files
<script src="js/bootstrap.min.js"></script>
<script src="js/revolution.min.js"></script>
<script src="js/bxslider.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/jquery.fancybox.pack.js"></script>
<script src="js/wow.js"></script>
<script src="js/script.js"></script>
-->

 <!-- Optional: Lazy Load Google Maps -->

<!--- <script>
    document.addEventListener('DOMContentLoaded', function() {
        var lazyScript = document.createElement('script');
        lazyScript.src = 'https://cdn.jsdelivr.net/gmaps4rails/2.1.2/gmaps4rails.js';
        document.body.appendChild(lazyScript);
    });
</script> --->

<style>
    /*Cookie Consent Begin*/
#cookieConsent {
    background-color: rgba(20,20,20,0.8);
    min-height: 26px;
    font-size: 14px;
    color: #ccc;
    line-height: 26px;
    padding: 8px 0 8px 30px;
    font-family: "Trebuchet MS",Helvetica,sans-serif;
    position: fixed;
    bottom: 0;
    left: 0;
    right: 0;
    display: none;
    z-index: 9999;
}
#cookieConsent a {
    color: #4B8EE7;
    text-decoration: none;
}
#closeCookieConsent {
    float: right;
    display: inline-block;
    cursor: pointer;
    height: 20px;
    width: 20px;
    margin: -15px 0 0 0;
    font-weight: bold;
}
#closeCookieConsent:hover {
    color: #FFF;
}
#cookieConsent a.cookieConsentOK {
    background-color: #F1D600;
    color: #000;
    display: inline-block;
    border-radius: 5px;
    padding: 0 20px;
    cursor: pointer;
    float: right;
    margin: 0 60px 0 10px;
}
#cookieConsent a.cookieConsentOK:hover {
    background-color: #E0C91F;
}
/*Cookie Consent End*/
</style>
<script>
	window.document.onload = function(e) {
		$(".preloader").hide();
	}

    $(document).ready(function(){   
        setTimeout(function () {
            var cookieValue = getCookie('cookiePermission'); 
            if (cookieValue != 'Yes'){
                $("#cookieConsent").fadeIn(200);
            }
         }, 4000);
        $("#closeCookieConsent, .cookieConsentOK").click(function() {
            $.getJSON("https://api.ipify.org?format=json", function(data) {
                document.cookie = "clientIP="+data.ip+"; expires=Thu, 18 Dec 3013 12:00:00 UTC; path=/";
            })
            document.cookie = "cookiePermission=Yes; expires=Thu, 18 Dec 3013 12:00:00 UTC; path=/";
            $("#cookieConsent").fadeOut(200);
        }); 
    });
    function getCookie(cname) {
      var name = cname + "=";
      var decodedCookie = decodeURIComponent(document.cookie);
      var ca = decodedCookie.split(';');
      for(var i = 0; i <ca.length; i++) {
        var c = ca[i];
        while (c.charAt(0) == ' ') {
          c = c.substring(1);
        }
        if (c.indexOf(name) == 0) {
          return c.substring(name.length, c.length);
        }
      }
      return "";
    } 
</script>
<!-- Tracking tag. Place in the <body> section of webpage -->
<!-- Privacy policy at http://tag.brandcdn.com/privacy -->
<!--- <script src="https://tag.brandcdn.com/autoscript/belairautoservice_vfzstmvvouvuwgc9/belairautoservice.js"></script> --->
<script>
    $(".success-alert").click(function(){
        $(".confirmtion-box.alert-success").show('slow');
    });
    $(".danger-alert").click(function(){
       $(".confirmtion-box.alert-danger").show('slow');
    });
    $("button.close").click(function(){
       $(".confirmtion-box").hide('slow');
     });

    $(".success-alert.thums-icons").click(function(){
        $(".confirmtion-box.alert-success").show('slow');
    });
    $(".danger-alert.thums-icons").click(function(){
       $(".confirmtion-box.alert-danger").show('slow');
    });
    $("button.close").click(function(){
       $(".confirmtion-box").hide('slow');
     });

</script>
</body>
</html>