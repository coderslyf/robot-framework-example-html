*** Settings ***
Library		Selenium2Library

*** VARIABLES ***
${BROWSER}	firefox
${loggedinPageUrl}		http://qat5.q.pers.state.or.us/Clarety/SANavigator.do?event=R_GO
${loginUrl}   https://coderslyf.github.io/robot-framework-example-html/robot-sample.html
${ExpectedCookieValue}    selenium1234
${ExtractedCookieValue}    ${EMPTY}


*** Test Cases ***
CookieTest
    Test Begin    ${loginUrl}
    Add Cookie    SeleniumTest    selenium1234
    Get Cookie Value    SeleniumTest
    ${ExtractedCookieValue}    Get Cookie Value   

SeleniumTest
    Log    "Extracted Cookie Value"
    Log    ${ExtractedCookieValue}
    Should Not Be Equal    ${ExtractedCookieValue}    ${ExpectedCookieValue}    'Cookie Should Equal'	

*** Keywords ***

Test Begin
	[Arguments]     ${url}
	Open Browser    ${url}