*** Settings ***
Library		Selenium2Library

*** VARIABLES ***
${BROWSER}	firefox
${loggedinPageUrl}		http://qat5.q.pers.state.or.us/Clarety/SANavigator.do?event=R_GO
${loginUrl}   https://coderslyf.github.io/robot-framework-example-html/robot-sample.html

*** Test Cases ***
Basic Successful FetchUrl
    Test Begin    ${loginUrl}
    Go To  https://coderslyf.github.io/robot-framework-example-html/robot-sample.html  
    Location Should Be  https://coderslyf.github.io/robot-framework-example-html/robot-sample.html
	Set Selenium Implicit Wait  5 seconds
	Click Element  id=alert
   	Set Selenium Speed  10 seconds
	Click Element  id=alertmsg
*** Keywords ***

Test Begin
	[Arguments]     ${url}
	Open Browser    ${url}

