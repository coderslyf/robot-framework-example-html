*** Settings ***
Library		Selenium2Library

*** VARIABLES ***
${BROWSER}	firefox
${loggedinPageUrl}  http://qat5.q.pers.state.or.us/Clarety/SANavigator.do?event=R_GO
${loginUrl}   https://coderslyf.github.io/robot-framework-example-html/robot-sample.html

*** Test Cases ***

Basic Successful FetchUrl
    Test Begin    ${loginUrl}

Test to Clear input field
     
    Fail test   #TODO: do respective HTML    	
	
*** Keywords ***

Test Begin
	[Arguments]     ${url}
	Open Browser    ${url}
	
Fail test
    Click Element  link=Login
	Wait Until Element Is Visible  //div[@id='i1']  timeout=60
	Location Should Be  https://coderslyf.github.io/robot-framework-example-html/login.html	 
	Clear Element Text  name=usrname