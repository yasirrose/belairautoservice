
    <cfheader name="Content-Security-Policy" value="
    default-src 'self';
    script-src 'self' 'unsafe-inline' 'unsafe-eval' https://www.googletagmanager.com https://cdn.jsdelivr.net https://cdnjs.cloudflare.com https://tag.brandcdn.com https://adservices.brandcdn.com https://maps.googleapis.com https://maps.gstatic.com;
    font-src 'self' https://fonts.googleapis.com https://fonts.gstatic.com https://tag.brandcdn.com;
    img-src 'self' data: https://www.belairautoservice.biz https://www.googletagmanager.com https://insight.adsrvr.org https://maps.googleapis.com;
    style-src 'self' 'unsafe-inline' https://fonts.googleapis.com;
    frame-src 'self' https://insight.adsrvr.org https://www.google.com;
">

<cfcache action="cache" timespan="#createtimespan(1,0,0,0)#">
    <cfset variables.pageTitle = "Customer Reviews - Chris Woodie's Bel Air Auto Service">
    <cfset variables.CanonicalLink = "https://www.belairautoservice.biz/customer-reviews.cfm">
    <cfset variables.metaDescription = "Read reviews and testimonials from our satisfied customers. Discover why Belair Auto Service is the trusted choice for auto repairs.">
    <cfinclude template="header.cfm">
<style>
h4.post-sub-title {
    color: #fb4949;
    font-size: 35px;
    margin: 15px 0;
}
h3.post-title {
    color: #36404a;
    font-size: 35px;
}
.review-thums-icons {
    display: flex;
    align-items: center;
    margin: 70px 0;
}
.review-thums-icons a {
    margin: 0 60px 0 0;
    display: inline-block;
}
.Review-Sec {
    width: 100%;
}
.Review-Main {
    width: 100%;
    display: inline-block;
    margin-bottom: 50px;
}
.Inner-Data h4 {
    padding: 0px 0 5px 0;
    font-family: sans-serif;
    font-weight: 600;
}
.Box-data .Inner-Data {
    margin: 0 0 0 10px;
}
.Review-Box {
    width: 30%;
    border: 1px solid #fb4949;
    padding: 20px;
    margin: 10px;
    float: left;
}
.Box-data {
    display: flex;
    align-items: center;
}
.Box-data img {
    padding: 0px 10px 15px 0px;
}

.Para p {
    font-size: 16px;
    font-family: sans-serif;
    line-height: 1.7;
}
.thum-up-icon {
    position: relative;
}
.confirmtion-button {
    background-color: #3c763d;
    color: #fff;
    font-size: 14px;
    font-weight: 600;
    margin: 0 !important;
    padding: 0px 10px;
    border-radius: 4px;
    float: right;
}
.confirmtion-button:hover {
    color: #fff;
}
.alert-danger .confirmtion-button {
    background-color: #a94442;
}

.confirmtion-box.alert {
    position: absolute;
    top: -121px;
    right: 0;
    width: 100%;
    left: 0;
    z-index: 1;
}

.review-thums-icons {
    display: flex;
    align-items: center;
    margin: 70px 0;
    column-gap: 30px;
}

@media (max-width: 850px) {

    .Review-Box {
        width: 47%;
        padding: 20px 10px 20px 10px;
        margin: 10px;
    }
    .thum-up-icon img {
        max-width: 100%;
    }
    h3.post-title {
        font-size: 30px;
    }
    h4.post-sub-title {
        font-size: 30px;
    }
    .main-footer .social-links {
        position: relative !important;
        text-align: left !important;
        padding-bottom: 6px !important;
    }
}

@media (max-width: 700px) {
    .Review-Box {
        width: 100%;
        padding: 20px 10px 20px 10px;
        margin: 10px 0 10px 0;
    }
    .thum-up-icon img {
        max-width: 100%;
    }
    h3.post-title {
        font-size: 30px;
    }
    h4.post-sub-title {
        font-size: 30px;
    }
    .main-footer .social-links {
        position: relative !important;
        text-align: left !important;
        padding-bottom: 6px !important;
    }
    .review-thums-icons {
        column-gap: 15px;
    }

}

/* .page-banner .page-title h2 {
    position: relative;
    display: inline-block;
    padding: 5px 15px;
    font-size: 40px;
    font-weight: 300;
    color: #fb4848;
    text-transform: uppercase;
    background: rgba(255, 255, 255, .8);
} */


h2.post-title {
    color: #36404a;
    font-size: 35px;
}



</style>
         <!-- Page Banner -->
        <section class="page-banner" style="background-image:url(images/customer-review-banner.png); padding-bottom: 40px;">
                <div class="auto-container">
                        <div class="page-title"><h1>Customer Reviews</h1></div>
                        <div class="bread-crumb text-right"></div>
                </div>
        </section>
	<!--Services Section-->
        <section class="services-section">
    	        <div class="auto-container">
                        <div class="clearfix">
                                <h2 class="post-title">See the customer reviews for our auto repair shop in Bel Air, Maryland.</h2>
                                <h4 class="post-sub-title">We really appreciate your support and would love to hear from you!</h4>
                                <div class="text">
	                                <p>Your business is very appreciated. We truly value your feedback as we use this information to help us to continue to improve our customer service, overall performance and your experience when working with us.</p>
                                </div>
                                <div class="review-thums-icons">
                                    <div class="thum-up-icon">
                                        <a class="success-alert alert-button" data-isgood="true" href="javascript:void(0);"> <img src="https://www.belairautoservice.biz/images/thumsup-img.png" alt="thumbs up" height="191" width="213" ></a>

                                        <div class="confirmtion-box alert alert-success thumb-up">
                                            <div class="inner-confirmation-box">
                                                <button type="button" class="close">&times;</button>
                                                <p>We are happy you had a good experience, please share your review with us on Google's review page.</p>
                                                <!---    <a href="https://www.google.com/search?rlz=1CDGOYI_enUS825US825&hl=en-US&sxsrf=AOaemvI4AyLDDGWmwTys8SoOQ63rjitD_Q:1643202377422&q=belairautoservice.biz&spell=1&sa=X&ved=2ahUKEwim6P_vvc_1AhUClYkEHewdD8sQBSgAegQIARAC&biw=414&bih=720&dpr=2#lrd=0x89c7e0a0b8edb071:0xd5c5720639d05ce2,1,,,&wptab=s:H4sIAAAAAAAAAONgVuLVT9c3NEypKIrPMqksfsRowS3w8sc9YSn9SWtOXmPU5OIKzsgvd80rySypFJLmYoOyBKX4uVB18uxi4sgvSy0qy0wtX8QqkpSao5CYWaSQWFqSr1AMEk5OBQCfvnxTbgAAAA" class="confirmtion-button">OK</a>--->
                                                <a href="https://g.page/r/CeJc0DkGcsXVEAg/review" class="confirmtion-button">OK</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="thum-up-icon down">
                                       <a class="danger-alert alert-button" data-isgood="false"  href="javascript:void(0);"> <img src="https://www.belairautoservice.biz/images/thumsdown-img.png" alt="thumbs down" height="191" width="213"></a>

                                       <div class="confirmtion-box alert alert-danger thumb-down">
                                           <div class="inner-confirmation-box">
                                               <button type="button" class="close">&times;</button>
                                               <p>We are sorry you had less than an ideal experience, please complete this email to let us know how we can do better.</p>
                                               <a href="https://www.belairautoservice.biz/contact.cfm" class="confirmtion-button">OK</a>
                                           </div>
                                       </div>
                                    </div>
                                </div>
                                <div class="Review-div">
                                        <div class="Review-Heding">
                                                <h3>From 525 Reviews &nbsp; <img src="https://www.belairautoservice.biz/images/stars.png" alt="stars" height="35" width="121"></h3>
                                                <img src="" alt="">
                                        </div>
                                </div>
                	</div>
                </div>
        </section>
        <Section class="Review-Sec" id="ReviewSec-id">
                <div class="auto-container">
                    <div class="Review-Main">
                        <div class="Review-Box">
                            <div class="Box-data">
                                <img src="https://www.belairautoservice.biz/images/image1.png" alt="image1" height="80" width="80" >
                                <div class="Inner-Data">
                                    <h3>Regina T.</h3>
                                    <img src="https://www.belairautoservice.biz/images/stars.png" alt="stars" height="35" width="121" >
                                </div>
                            </div>
                            <div class="Para">
                                <p>I have been to Bel Air Auto Service just a few times and I think ya'll are great! You have helped me quickly each time. The cost hast been good and competitive."</p>
                            </div>
                        </div>
                        <div class="Review-Box">
                            <div class="Box-data">
                                <img src="https://www.belairautoservice.biz/images/bull-img.png" alt="Bull-img" height="80" width="80" >
                                <div class="Inner-Data">
                                    <h4>Kevin B.</h4>
                                    <img src="https://www.belairautoservice.biz/images/stars.png" alt="stars" height="35" width="121" >
                                </div>
                            </div>
                            <div class="Para">
                                <p>" This facility has cheap labor and good service."</p>
                            </div>
                        </div>
                        <div class="Review-Box">
                            <div class="Box-data">
                                <img src="https://www.belairautoservice.biz/images/image2.png" alt="image2" height="80" width="80" >
                                <div class="Inner-Data">
                                    <h4>Bud Hines - Fallston</h4>
                                    <img src="https://www.belairautoservice.biz/images/stars.png" alt="stars" height="35" width="121" >
                                </div>
                            </div>
                            <div class="Para">
                                <p>"I took my Jaguar to a nearby Jaguar dealer who said I needed to replace my ABS and my switches for about $7,000. I brought my car to Chris Woodies and they determined that my switches needed to be repaired and they did this for $350. My Jag has been driving great ever since."</p>
                            </div>
                        </div>
                    </div>
                </div>
            </Section>  

        <!--Customer-Reviews Section-->

        <section class="Customer-Reviews">
                <div class="auto-container">
                        
                               

                <div>       
        </section>
    <cfinclude template="footer.cfm">
</cfcache>

