*** Settings ***
Library		Selenium2Library

*** VARIABLES ***
${BROWSER}	firefox
${loggedinPageUrl}		http://qat5.q.pers.state.or.us/Clarety/SANavigator.do?event=R_GO
${loginUrl}   https://coderslyf.github.io/robot-framework-example-html/robot-sample.html
${ExpectedCookieValue}    selenium1234
${ExtractedCookieValue}    ${EMPTY}


*** Test Cases ***
Test1
    Test Begin    ${loginUrl}
    Click Element  link=Login 
	
	Wait Until Element Is Visible  //div[@id='i1']  timeout=60
	Location Should Be  https://coderslyf.github.io/robot-framework-example-html/login.html	
	Input Text  usrname  abcd
    Input Password  pwd  abcd
    Click Element  xpath=//input[@value='Submit']
	
Page Screenshot	
    Capture Page Screenshot
	
*** Keywords ***

Test Begin
	[Arguments]     ${url}
	Open Browser    ${url}