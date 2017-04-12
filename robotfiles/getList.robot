
*** Settings ***
Library		Selenium2Library

*** Variables ***
${BROWSER}	firefox
${loggedinPageUrl}  http://qat5.q.pers.state.or.us/Clarety/SANavigator.do?event=R_GO
${loginUrl}   https://coderslyf.github.io/robot-framework-example-html/robot-sample.html

*** Test Cases ***

Basic Successful FetchUrl
    Test Begin    ${loginUrl}

Test to get list of options under select
    Go To  https://coderslyf.github.io/robot-framework-example-html/robot-sample.html  
    Location Should Be  https://coderslyf.github.io/robot-framework-example-html/robot-sample.html
 	Fail  #TODO:  no html with select tag
	
*** Keywords ***
Test Begin
	[Arguments]     ${url}
	Open Browser    ${url}
	
Fail
   Get List Items  id=form	