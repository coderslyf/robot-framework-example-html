*** Settings ***
Library		Selenium2Library

*** Variables ***
${BROWSER}	firefox
${loggedinPageUrl}  http://qat5.q.pers.state.or.us/Clarety/SANavigator.do?event=R_GO
${loginUrl}   https://coderslyf.github.io/robot-framework-example-html/robot-sample.html

*** Test Cases ***

Basic Successful FetchUrl
    Test Begin    ${loginUrl}

Test To Get Element Attribute
    Go To  https://coderslyf.github.io/robot-framework-example-html/robot-sample.html  
    Location Should Be  https://coderslyf.github.io/robot-framework-example-html/robot-sample.html
	Fail    
 	
*** Keywords ***

Test Begin
	[Arguments]     ${url}
	Open Browser    ${url}
	
Fail
    Get Element Attribute   id=i1@href	