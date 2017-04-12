*** Settings ***
Library		Selenium2Library

*** VARIABLES ***
${BROWSER}	firefox
${loggedinPageUrl}  http://qat5.q.pers.state.or.us/Clarety/SANavigator.do?event=R_GO
${loginUrl}   https://coderslyf.github.io/robot-framework-example-html/robot-sample.html

*** Test Cases ***

Basic Successful FetchUrl
    Test Begin    ${loginUrl}

Check Element Is Visible
    Go To  https://coderslyf.github.io/robot-framework-example-html/robot-sample.html  
    Location Should Be  https://coderslyf.github.io/robot-framework-example-html/robot-sample.html
	Element Should Be Visible  id=alert  Alerts
    
	
Check Element Is Not Visible	
	Go To  https://coderslyf.github.io/robot-framework-example-html/robot-sample.html  
    Location Should Be  https://coderslyf.github.io/robot-framework-example-html/robot-sample.html
	Element Should Be Visible  id=alert  Alert
	
*** Keywords ***

Test Begin
	[Arguments]     ${url}
	Open Browser    ${url}
