<cfparam name="form.name" default=""/>
<cfparam name="form.email" default=""/>
<cfparam name="form.subject" default=""/>
<cfparam name="form.message" default=""/>
<cfparam name="form.phone" default=""/>
<!---<cfset captchaSiteKey = "6LdyGbgeAAAAADUMpy2vouTcnRdpZZ8eeksOcAN3">--->
<!---<cfset captchaSiteKey = "6LdqlrMeAAAAAHhQYyLtxZAeJ7_PL8bl2P0SVRdr">--->
<!---<Cfset captchaSecret  = "6LdqlrMeAAAAAPqDCkQL74P_7iSLJT1qV-h-5ZPx">--->
    
<cfset captchaSiteKey = "6Ld-FdIeAAAAAPy1Aj5ByahhLffg6QySTt6zh1xT">
<cfset captchaSecret  = "6Ld-FdIeAAAAABgyatQlHJXMahjh8xyND4sGL2UU">
<!---https://www.google.com/recaptcha/admin/site/517084542/setup--->

<cfset reCaptchaResponse = true />
<cfset errorMessages = []> 
<cfif form.name is not "" AND form.email is not "" AND form.subject is not "" And form.phone is not "">

		<!--- Check the captcha --->
		<cfset reCaptchaResponse = false />
		<cfif structKeyExists(form, 'g-recaptcha-response')>
			<cfhttp url="https://www.google.com/recaptcha/api/siteverify" method="post" result="captchaCheck">
				<cfhttpparam type="formfield" name="secret" value="#captchaSecret#"/>
				<cfhttpparam type="formfield" name="response" value="#form['g-recaptcha-response']#"/>
				<cfhttpparam type="formfield" name="remoteip" value="#cgi.remote_host#"/>
			</cfhttp>

			<cfset captchaResponse   = deserializeJSON(captchaCheck.fileContent)>
			<cfif isStruct(captchaResponse) and structKeyExists(captchaResponse, 'success')>
				<cfset reCaptchaResponse = captchaResponse.success>
			</cfif>
		</cfif>

		<cfif reCaptchaResponse>
		  <cfmail to = "belairauto21047@gmail.com,mailadmin@belairautoservice.biz" from = "#form.email#" subject = "#form.subject#" type="html"> 
	<!---	  <cfmail to = "budhines@gmail.com" from = "#form.email#" subject = "#form.subject#" type="html">  --->
		    		<!---<p style="color:blue;font-size:18px"><b>MailTo:</b> woodiemail@netscape.com<br></p>--->
				<p style="color:blue;font-size:18px"><b>MailTo:</b> belairauto21047@gmail.com<br></p>

				<p style="color:blue;font-size:18px"><b>MailFrom:</b> #Form.email#<br></p>

				<p style="color:blue;font-size:18px"><b>Subject:</b> #Form.subject#</br></p>

				<p style="color:blue;font-size:18px"><b>Message:</b> #Form.message#</br></p>
		  </cfmail>
		  <cfset form.name = ""/><cfset form.email = ""/><cfset form.subject = ""/>
		  <cfset form.message = ""/><cfset form.phone = ""/>
		  <cfset confirmtion = true />
		</cfif>

	  <cfif not reCaptchaResponse>
	  	 <cfset ArrayAppend(errorMessages,'The reCAPTCHA is required.')>
	  </cfif>
</cfif>
<cfset variables.pageTitle = "Contact - Chris Woodie's Bel Air Auto Service">
<cfset variables.CanonicalLink = "https://www.belairautoservice.biz/contact.cfm">
<cfset variables.metaDescription = "Get in touch with Belair Auto Service. Contact us for all your auto repair needs and schedule your appointment today.">
<cfinclude template="header.cfm">
<style type="text/css">
form#contact-form label.error {
    display: inline-block !important;
    font-size: 13px;
    color: red;
    margin: 0;
    line-height: 10px;
    font-weight: 400;
}
textarea#cMessage {
    margin: 0;
}
</style>
<section class="page-banner contact">
	 <div class="auto-container">
		<div class="page-title"><h1>Contact Us</h1></div>
	</div>
</section>
<div class="sidebar-page">
	<div class="auto-container">
		<div class="row clearfix">

			<!-- Left Content -->
			<section class="left-content col-lg-8 col-md-8 col-sm-7 col-xs-12">


				<!-- Contact Form -->
				<div class="contact-form contact-form-new">

					<div class="sec-title"><h3 class="skew-lines">FeedBack</h3></div>
					<div class="msg-text">We look forward to hearing from you</div>

					<!--Contact Form-->
					<!--- <cfloop array="#errorMessages#" index="message">
						<p class="bg-danger text-danger" style="padding: 5px;"><cfoutput>#message#</cfoutput></p>
					</cfloop> --->
					<form class="cmxform" id="contact-form" method="post" action="">
						<div class="row clearfix">
							<div class="col-md-6 col-sm-12 col-xs-12">
								<div class="form-group">
									<label class="form-label" for="cName">Name</label>
									<input id="cName" name="Name" type="text" placeholder="Enter Your Name" value="<cfoutput>#form.name#</cfoutput>"  required/>
								</div>
							</div>
							<div class="col-md-6 col-sm-12 col-xs-12">
								<div class="form-group">
									<label class="form-label" for="cEmail">Email</label>
									<input id="cEmail" type="email" name="email" placeholder="Enter Your Email Address"  value="<cfoutput>#form.email#</cfoutput>" required >
								</div>
							</div>
							<div class="clearfix"></div>
							<div class="col-md-6 col-sm-12 col-xs-12">
								<div class="form-group">
                                    <label for="cPhone" class="form-label">Phone</label>
									<input id="cPhone" type="tel" name="phone" placeholder="Enter Phone Number" value="<cfoutput>#form.phone#</cfoutput>" required >
								</div>
							</div>
							<div class="col-md-6 col-sm-12 col-xs-12">
								<div class="form-group">
									<label for="cSubject" class="form-label">Subject</label>
									<input id="cSubject" type="text" name="subject" placeholder="Enter a Subject" value="<cfoutput>#form.subject#</cfoutput>" required>
								</div>
							</div>
							<div class="clearfix"></div>
							<div class="col-md-12 col-sm-12 col-xs-12">
								<div class="form-group">
									<label for="cMessage" class="form-label">Message</label>
									<textarea id="cMessage" name="message" placeholder="Type Message Here" required><cfoutput>#form.message#</cfoutput></textarea>
								</div>
							</div>
							<div class="col-md-12 col-sm-12 col-xs-12">
								<div class="form-group">
									<div class="g-recaptcha brochure__form__captcha" data-sitekey="<cfoutput>#captchaSiteKey#</cfoutput>"></div>
								</div>
							</div>
						</div>
						<input type = "hidden" name = "name_required" value = "You must enter a recipient">
						<input type = "hidden" name = "email_required" value = "You must enter a sender">
						<input type = "hidden" name = "message_required" value = "You must enter a message">
						<div class="form-group text-right">
							<!---<a class="button btn btn-danger" href="#" onClick="document.getElementById('contact-form').reset()">Clear</a>--->
							<button type="submit" name="submit-form" class="theme-btn dark-btn hvr-bounce-to-right" ><span class="fa fa-envelope"></span> Send Message</button>
						</div>

					</form>

				</div>


			</section>

			<!-- Side Bar -->
			<aside class="side-bar col-lg-4 col-md-4 col-sm-5 col-xs-12">
				<!-- Contact Info -->
				<div class="widget cont-info">
					<div class="sec-title"><h3 class="skew-lines">company info</h3></div>
					<div class="cont-box">
						<div class="text">1515 Belair Road Fallston, MD 21047</div>
						<ul class="info">
							<li><strong>Email</strong> <a href="mailto:belairauto21047@gmail.com">belairauto21047@gmail.com</a></li>
							<li><strong>Phone</strong> <a href="#">410.879.2254</a></li>
							<li><strong>Phone</strong> <a href="#">410.838.7227</a></li>
							<li><strong>Fax</strong> <a href="#">410.877.1507</a></li>
							<li><strong>Website</strong> <a href="http://belairautoservice.biz">BelAirAutoService.biz</a></li>
						</ul>
					</div>

				</div>
				<div class="widget site-map">
					<!---<iframe src="https://www.google.com/maps/d/embed?mid=zj0zOtQ5QWdw.kx2mAYhDcvT4" width="640" height="480"></iframe>--->
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3078.463269696318!2d-76.38432028435483!3d39.50403267948161!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c7e0a0bb15eb7d%3A0xb2f0db3644daf27d!2s1511%20Belair%20Rd%2C%20Fallston%2C%20MD%2021047!5e0!3m2!1sen!2sus!4v1638625933662!5m2!1sen!2sus" width="400" height="300" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
				</div>


			</aside>

		</div>
	</div>

</div>


<script src="js/validate.js"></script>
<script src="https://www.google.com/recaptcha/api.js"></script>
<!--- <script src="https://ajax.aspnetcdn.com/ajax/jquery.validate/1.11.1/jquery.validate.min.js"></script> --->

<!--- <script src="https://ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.js"></script> --->


<script>
//$.validator.setDefaults({
//	submitHandler: function() { alert("submitted!"); }
//});

$(document).ready(function() {

$("#contact-form").validate();
	//validate the comment form when it is submitted
	// $("#contact-form").validate({
	// 	rules:{
	// 		cName:{
	// 			required:true,
 //        		minlength: 3
	// 		},
	// 		cEmail:{
	// 			required:true,
	// 			email:true
	// 		},
	// 		cPhone:{
	// 			required:true
	// 		},
	// 		cSubject:{
	// 			required:true
	// 		},
	// 		cMessage:{
	// 			required:true,
 //        		minlength: 3
	// 		}
	// 	},
	// 	messages: {
 //            cName: {
 //        			minlength: "Name should be at least 3 characters"
 //     			 },
 //            cEmail: {
 //        				email: "The email should be in the format: abc@domain.tld"
 //     				},
 //            cPhone: "Please enter your phone number!",
 //            cSubject: "Please enter a subject!",
 //            cMessage: {
 //        			minlength: "Message should be at least 3 characters"
 //     			 }
 //        }

		
	// });

	// $('#submit-form').on('click', function() {
 //    	$("#contact-form").validate();
	// });

	// validate signup form on keyup and submit
	// $("#signupForm").validate({
	// 	rules: {
	// 		name: {
	// 			required: true,
	// 			minlength: 2
	// 		},
	// 		//password: {
	// 		//				required: true,
	// 		//				minlength: 5
	// 		//			},
	// 		//			confirm_password: {
	// 		//				required: true,
	// 		//				minlength: 5,
	// 		//				equalTo: "#password"
	// 		//			},
	// 		email: {
	// 			required: true,
	// 			email: true
	// 		},
	// 		topic: {
	// 			required: "#newsletter:checked",
	// 			minlength: 2
	// 		},
	// 		agree: "required"
	// 	},
	// 	messages: {
	// 		name: "Please enter your name",
	// 					//lastname: "Please enter your lastname",
	// 		//			username: {
	// 		//				required: "Please enter a username",
	// 		//				minlength: "Your username must consist of at least 2 characters"
	// 		//			},
	// 		//			password: {
	// 		//				required: "Please provide a password",
	// 		//				minlength: "Your password must be at least 5 characters long"
	// 		//			},
	// 		//			confirm_password: {
	// 		//				required: "Please provide a password",
	// 		//				minlength: "Your password must be at least 5 characters long",
	// 		//				equalTo: "Please enter the same password as above"
	// 		//			},
	// 		email: "Please enter a valid email address"
	// 	}
	// });

	// propose username by combining first- and lastname
	$("#username").focus(function() {
		var firstname = $("#firstname").val();
		var lastname = $("#lastname").val();
		if(firstname && lastname && !this.value) {
			this.value = firstname + "." + lastname;
		}
	});

	//code to hide topic selection, disable for demo
	var newsletter = $("#newsletter");
	// newsletter topics are optional, hide at first
	var inital = newsletter.is(":checked");
	var topics = $("#newsletter_topics")[inital ? "removeClass" : "addClass"]("gray");
	var topicInputs = topics.find("input").attr("disabled", !inital);
	// show when newsletter is checked
	newsletter.click(function() {
		topics[this.checked ? "removeClass" : "addClass"]("gray");
		topicInputs.attr("disabled", !this.checked);
	});
});
// grecaptcha.getResponse()
</script>
<cfinclude template="footer.cfm">