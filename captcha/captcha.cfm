<!--- Kill extra output. --->
<cfsilent>
    <!--- Param FORM values. --->
    <cfparam
        name="FORM.captcha"
        type="string"
        default=""
        />

    <cfparam
        name="FORM.captcha_check"
        type="string"
        default=""
        />

    <cftry>
        <cfparam
            name="FORM.submitted"
            type="numeric"
            default="0"
            />

        <cfcatch>
            <cfset FORM.submitted = 0 />
        </cfcatch>
    </cftry>

	<!--- <cfdump var="#FORM.captcha#"> --->
	<!--- <cfdump var="#Decrypt(
                FORM.captcha_check,
                "bots-aint-sexy",
                "CFMX_COMPAT",
                "HEX"
                )#"> --->
	<!--- <cfabort> --->
    <!--- Set a flag to see if this user is a bot or not. --->
    <cfset blnIsBot = true />


    <!--- Check to see if the form has been submitted. --->
    <cfif FORM.submitted>

        <!---
            Decrypt the captcha check value. Since this was
            submitted via a FORM, we have to be careful about
            attempts to hack it. Always put a Decrypt() call
            inside of a CFTry / CFCatch block.
        --->
        <cftry>

            <!--- Decrypt the check value. --->
            <cfset strCaptcha = Decrypt(
                FORM.captcha_check,
                "bots-aint-sexy",
                "CFMX_COMPAT",
                "HEX"
                ) />

            <!---
                Check to see if the user-submitted value is
                the same as the decrypted CAPTCHA value.
                Remember, ColdFusion is case INsensitive with
                the EQ opreator.
            --->
            <cfif (strCaptcha EQ FORM.captcha)>

                <!---
                    The user entered the correct text. Set the
                    flag for future use.
                --->
                <cfset blnIsBot = false />

            </cfif>

            <!--- Catch any errors. --->
            <cfcatch>

                <!--- Make sure the bot flag is set. --->
                <cfset blnIsBot = true />

            </cfcatch>
        </cftry>

    </cfif>



    <!---
        Before we render the form, we have to figure out
        which CAPTCHA text we are going to display. For
        this, we have to come up with a random combination
        of letters/numbers. For this, we are going to use an
        easy solution which is shuffling an array of valid
        characters.
    --->

    <!---
        Create the array of valid characters. Leave out the
        numbers 0 (zero) and 1 (one) as they can be easily
        confused with the characters o and l (respectively).
    --->
    <cfset arrValidChars = ListToArray(
        "A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z," &
        "2,3,4,5,6,7,8,9"
        ) />

    <!--- Now, shuffle the array. --->
    <cfset CreateObject(
        "java",
        "java.util.Collections"
        ).Shuffle(
            arrValidChars
            )
        />

    <!---
        Now that we have a shuffled array, let's grab the
        first 8 characters as our CAPTCHA text string.
    --->
    <cfset strCaptcha = (
        arrValidChars[ 1 ] &
        arrValidChars[ 2 ] &
        arrValidChars[ 3 ] &
        arrValidChars[ 4 ] &
        arrValidChars[ 5 ] &
        arrValidChars[ 6 ] &
        arrValidChars[ 7 ] &
        arrValidChars[ 8 ]
        ) />


    <!---
        At this point, we have picked out the CAPTCHA string
        that we want the users to ender. However, we don't
        want to pass that text anywhere in the form otherwise
        a spider might be able to scrape it. Thefefore, we now
        want to encrypt this value into our check field.
    --->
    <cfset FORM.captcha_check = Encrypt(
        strCaptcha,
        "bots-aint-sexy",
        "CFMX_COMPAT",
        "HEX"
        ) />

</cfsilent>