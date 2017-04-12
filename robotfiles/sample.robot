*** Settings ***
Library		Selenium2Library

*** VARIABLES ***
${BROWSER}	firefox
${loggedinPageUrl}		http://qat5.q.pers.state.or.us/Clarety/SANavigator.do?event=R_GO
${loginUrl}   https://coderslyf.github.io/robot-framework-example-html/robot-sample.html

*** Test Cases ***
Basic Successful FetchUrl
    Test Begin    ${loginUrl}

Assign Custom Id
	Assign Id To Element  xpath=//div[@id='i1']  myid
	Page Should Contain Element  myid

*** Keywords ***

Test Begin
	[Arguments]     ${url}
	Open Browser    ${url}
