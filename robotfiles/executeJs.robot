*** Settings ***
Library		Selenium2Library

*** Variables ***
${BROWSER}	firefox
${loggedinPageUrl}  http://qat5.q.pers.state.or.us/Clarety/SANavigator.do?event=R_GO
${loginUrl}   https://coderslyf.github.io/robot-framework-example-html/robot-sample.html

*** Test Cases ***

Basic Successful FetchUrl
    Test Begin    ${loginUrl}

Check Element Contains Text
    Go To  https://coderslyf.github.io/robot-framework-example-html/robot-sample.html  
    Location Should Be  https://coderslyf.github.io/robot-framework-example-html/robot-sample.html
	Execute Javascript  window.open("https://coderslyf.github.io/robot-framework-example-html/login.html")
 	
*** Keywords ***

Test Begin
	[Arguments]     ${url}
	Open Browser    ${url}
