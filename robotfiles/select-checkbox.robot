*** Settings ***
Library		Selenium2Library

*** VARIABLES ***
${BROWSER}	firefox
${loggedinPageUrl}		http://qat5.q.pers.state.or.us/Clarety/SANavigator.do?event=R_GO
${loginUrl}   https://coderslyf.github.io/robot-framework-example-html/robot-sample.html

*** Test Cases ***
Basic Successful FetchUrl
    Test Begin    ${loginUrl}

Test Check box	
	Checkbox Should Be Selected  xpath=//input[@value='two']
    Checkbox Should Not Be Selected  xpath=//input[@value='one']	

Test to select checkbox
    Select Checkbox  xpath=//input[@value='one']   

	
*** Keywords ***

Test Begin
	[Arguments]     ${url}
	Open Browser    ${url}
