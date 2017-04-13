
*** Settings ***
Library		Selenium2Library

*** VARIABLES ***
${BROWSER}	firefox
${loggedinPageUrl}		http://qat5.q.pers.state.or.us/Clarety/SANavigator.do?event=R_GO
${loginUrl}   https://coderslyf.github.io/robot-framework-example-html/link-links.html

*** Test Cases ***
Basic Successful FetchUrl
    Test Begin    ${loginUrl}

Assign Id To Element
    [Documentation]    Tests also Reload Page keyword.
    Page Should Not Contain Element    my id
    Assign ID to Element    xpath=//div[@id="first_div"]    my id
    Page Should Contain Element    my id
    Reload Page
    Page Should Not Contain Element    my id

Click Link With Text And Image
    [Documentation]    Click Link With Text And Image
    Click Link    Text and image


Get Elements
    [Documentation]    Get Elements
    @{links}=    Get WebElements    //div[@id="div_id"]/a
    Length Should Be    ${links}    11

*** Keywords ***
Test Begin
	[Arguments]     ${url}
	Open Browser    ${url}
