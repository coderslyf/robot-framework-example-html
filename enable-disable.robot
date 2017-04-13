
*** Settings ***
Library		Selenium2Library

*** VARIABLES ***
${BROWSER}	firefox
${loggedinPageUrl}		http://qat5.q.pers.state.or.us/Clarety/SANavigator.do?event=R_GO
${loginUrl}   https://coderslyf.github.io/robot-framework-example-html/enable-disable.html

*** Test Cases ***
Basic Successful FetchUrl
    Test Begin    ${loginUrl}

Verify if element is enabled
    Element Should Be Enabled  xpath=//input[@name='enabled_input']
    element should be disabled  xpath=//input[@name='readonly_input']

*** Keywords ***
Test Begin
	[Arguments]     ${url}
	Open Browser    ${url}
