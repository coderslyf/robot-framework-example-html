*** Settings ***
Library		Selenium2Library

*** VARIABLES ***
${BROWSER}	firefox
${loggedinPageUrl}  http://qat5.q.pers.state.or.us/Clarety/SANavigator.do?event=R_GO
${loginUrl}   https://coderslyf.github.io/robot-framework-example-html/robot-sample.html

*** Test Cases ***

Basic Successful FetchUrl
    Test Begin    ${loginUrl}

Check Input Fields If Disabled

    Fail   #TODO: do HTML	
	Element Should Be Enabled  //input[@value='four']  
*** Keywords ***

Test Begin
	[Arguments]     ${url}
	Open Browser    ${url}

Fail
    Element Should Be Disabled  //input[@value='four']	