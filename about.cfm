<!--- <cfheader name="Content-Security-Policy" value="
    default-src 'self';
    script-src 'self' 'unsafe-inline' 'unsafe-eval' https://www.googletagmanager.com https://cdn.jsdelivr.net https://cdnjs.cloudflare.com https://tag.brandcdn.com https://adservices.brandcdn.com https://maps.googleapis.com https://maps.gstatic.com;
    font-src 'self' https://fonts.googleapis.com https://fonts.gstatic.com https://tag.brandcdn.com;
    img-src 'self' data: https://www.belairautoservice.biz https://www.googletagmanager.com https://insight.adsrvr.org https://maps.googleapis.com;
    style-src 'self' 'unsafe-inline' https://fonts.googleapis.com;
    frame-src 'self' https://insight.adsrvr.org https://www.google.com;
"> --->

<!---<cfheader name="Content-Security-Policy" value="
    default-src 'self';
    script-src 'self' 'unsafe-inline' 'unsafe-eval' https://www.googletagmanager.com https://cdn.jsdelivr.net https://cdnjs.cloudflare.com https://tag.brandcdn.com https://adservices.brandcdn.com https://maps.googleapis.com https://maps.gstatic.com https://www.google.com https://www.gstatic.com;
    font-src 'self' https://fonts.googleapis.com https://fonts.gstatic.com https://tag.brandcdn.com;
    img-src 'self' data: https://www.belairautoservice.biz https://www.googletagmanager.com https://insight.adsrvr.org https://maps.googleapis.com https://belairautoservice.biz;
    style-src 'self' 'unsafe-inline' https://fonts.googleapis.com;
    frame-src 'self' https://insight.adsrvr.org https://www.google.com https://adservices.brandcdn.com;
">--->
<!--- removed default self, unsafe inline unsave eval did not work--->
<!--- commeneted out this header on 8/24/2024 at 9:08 pm --->
<!---<cfheader name="Content-Security-Policy" value="
    default-src 'self';
    script-src 'self' https://www.googletagmanager.com https://cdn.jsdelivr.net https://cdnjs.cloudflare.com https://tag.brandcdn.com https://adservices.brandcdn.com https://maps.googleapis.com https://maps.gstatic.com https://www.google.com https://www.gstatic.com;
    font-src 'self' https://fonts.googleapis.com https://fonts.gstatic.com https://tag.brandcdn.com;
    img-src 'self' data: https://www.googletagmanager.com https://insight.adsrvr.org https://maps.googleapis.com;
    style-src 'self' 'unsafe-inline' https://fonts.googleapis.com;
    frame-src 'self' https://insight.adsrvr.org https://www.google.com https://adservices.brandcdn.com;
">--->

<!--- 08/27/2024 added by bud hines --->
<cfheader name="Content-Security-Policy" value="
    default-src 'self' https://www.belairautoservice.biz;
    script-src 'self' 'unsafe-inline' https://www.googletagmanager.com https://cdn.jsdelivr.net https://cdnjs.cloudflare.com https://tag.brandcdn.com https://adservices.brandcdn.com https://maps.googleapis.com https://maps.gstatic.com https://www.google.com https://www.gstatic.com;
    font-src 'self' 'unsafe-inline' https://www.belairautoservice.biz https://belairautoservice.biz https://fonts.googleapis.com https://fonts.gstatic.com https://tag.brandcdn.com;
    img-src 'self' 'unsafe-inline' data: https://www.belairautoservice.biz https://belairautoservice.biz https://www.googletagmanager.com https://insight.adsrvr.org https://maps.googleapis.com;
    style-src 'self' 'unsafe-inline' https://fonts.googleapis.com;
    frame-src 'self' 'unsafe-inline' https://insight.adsrvr.org https://www.google.com https://adservices.brandcdn.com;
">


<cfcache action="cache" timespan="#createtimespan(1,0,0,0)#">
    <cfset variables.pageTitle = "About - Chris Woodie's Bel Air Auto Service">
    <cfset variables.CanonicalLink = "https://www.belairautoservice.biz/about.cfm">
    <cfset variables.metaDescription = "Learn more about Belair Auto Service, our history, and our commitment to providing top-quality auto repair services.">

    

    <cfinclude template="header.cfm">

    <!-- Page Banner -->
    <section class="page-banner" style="background-image:url(<cfoutput>#application.baseURL#</cfoutput>images/background/page-banner-1.webp);">
         <div class="auto-container">
            <div class="page-title"><h1>About Us</h1></div>
            <div class="bread-crumb text-right">
            </div>
        </div>
	</section>
	<!--Services Section-->
    <section class="services-section">
    	<div class="auto-container">

            <div class="row clearfix">
                         <h2 class="post-title">About Chris Woodie's Bel Air Auto Service in Bel Air, Maryland.</h2>
                        <div class="text">
	<p>We have over 20 years of car repair experience and we serve the Fallston, Bel Air, Forest Hill, Harford County areas with dependable and affordable auto care.</p>
                   		<p>We provide 24 hour towing,service, computer diagnostic and electrical service, engine and transmission repairs, AC service, brakes, alignments, tires, mufflers, shocks, struts, etc. We are an inspection station and we honor all extended warranty contracts. All work guaranteed.</p>
<img src="https://www.belairautoservice.biz/images/enginerepair2.png" alt="engine repair" height="50" width="50">           </div>
                          <br>
                          <h3>What We Do:</h3>
                          <br>
                	</div>
                </article>

             <br>
            	<article class="col-md-4 col-sm-12 col-xs-12 post wow fadeInLeft" data-wow-delay="0ms" data-wow-duration="1500ms">
                	<div class="inner">
                <img src="https://www.belairautoservice.biz/images/enginerepair2.png" alt="engine repair" height="104" width="111">


                        <h3 class="post-title">Engine Repair</h3>
                        <div class="text">
Whether it is Foreign or Domestic we can fix it. Chevy, Ford, Chrysler or Dodge we have you covered. Jaguar, Audi, BMW, Mercedes, Lexus, Infiniti, Acura, Toyota, Scion, Honda, Hyundai, Kia .... we repair it. We only fix what needs to be repaired. When you come to us once, if you run into another issue, you will be back because you willl trust us.
           </div>


                	</div>
                </article>

                <article class="col-md-4 col-sm-12 col-xs-12 post wow fadeInLeft" data-wow-delay="300ms" data-wow-duration="1500ms">
                	<div class="inner">
                <img src="https://www.belairautoservice.biz/images/wheelalignment.webp" alt="wheel alignment" height="104" width="105" >

                        <h3 class="post-title">Wheel Alignment</h3>
                        <div class="text">Do not overlook this important item. Maintaining correct tire pressure and ensuring your tires are properly aligned is critical to extending the life of your tires, saving you fuel and ensuring a smooth ride. If you take your hands of the wheel and your car starts veering to the left or right..... it is time to for a realignment..</div>
                	</div>
                </article>


               <article class="col-md-4 col-sm-12 col-xs-12 post wow fadeInLeft" data-wow-delay="600ms" data-wow-duration="1500ms">
                	<div class="inner">
                  <img src="https://www.belairautoservice.biz/images/whychoose.webp" alt="why choose us" height="104" width="93">


                        <h3 class="post-title">Why Choose Us?</h3>

                           <div class="tabs-box">


                         <ul class="checked-list">
							<li>We love what we do</li>
							<li>We are good at what we do</li>
							<li>We care </li>
							<li>We do not suggest unnecessary work</li>
							<li>We can fix what many shops just want to replace</li>
							<li>We charge reasonable prices</li>
							<li>We will check your oil, fluids, filters and hoses on a regular basis</li>
							<li>Come on in and we will set up a schedule for regular maintenance based upon your driving habits</li>
						</ul>
                        </div>
                </div>
                </article>


                <article class="col-md-4 col-sm-12 col-xs-12 post wow fadeInLeft" data-wow-delay="0ms" data-wow-duration="1500ms">
                	<div class="inner">
                        <div class="icon"><span class="flaticon-vehicle71"></span></div>
                        <h3 class="post-title">Electric Tests</h3>
                        <div class="text">We can check your fuses and circuilts to ensure your electronic components are working efficiently.</div>
                	</div>
                </article>

                <article class="col-md-4 col-sm-12 col-xs-12 post wow fadeInLeft" data-wow-delay="300ms" data-wow-duration="1500ms">
                	<div class="inner">
                        <div class="icon"><span class="flaticon-wrenches8"></span></div>
                        <h3 class="post-title">Engine Tune Up</h3>
                        <div class="text">We will get your car working as new.</div>
                	</div>
                </article>

                <article class="col-md-4 col-sm-12 col-xs-12 post wow fadeInLeft" data-wow-delay="600ms" data-wow-duration="1500ms">
                	<div class="inner">
                        <div class="icon"><span class="flaticon-vehicle92"></span></div>
                        <h3 class="post-title">Oil Lube and Filter</h3>
                        <div class="text">We will change your oil, lube your car and change your filters same day.</div>
                	</div>
                </article>

            </div>
        </div>
    </section>

    <cfinclude template="footer.cfm">
</cfcache>

