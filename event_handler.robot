
*** Settings ***
Library		Selenium2Library

*** VARIABLES ***
${BROWSER}	firefox
${loggedinPageUrl}		http://qat5.q.pers.state.or.us/Clarety/SANavigator.do?event=R_GO
${loginUrl}   https://coderslyf.github.io/robot-framework-example-html/event-handler.html

*** Test Cases ***
Basic Successful FetchUrl
    Test Begin    ${loginUrl}
    Title Should Be  Original
    Click Element  xpath=html/body/a[1]
    Title Should Be  Changed

*** Keywords ***
Test Begin
	[Arguments]     ${url}
	Open Browser    ${url}


