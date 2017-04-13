
*** Settings ***
Library		Selenium2Library

*** VARIABLES ***
${BROWSER}	firefox
${loggedinPageUrl}		http://qat5.q.pers.state.or.us/Clarety/SANavigator.do?event=R_GO
${loginUrl}   https://coderslyf.github.io/robot-framework-example-html/filled-form.html
*** Test Cases ***

Basic Successful FetchUrl
    Test Begin    ${loginUrl}


Get List Items From Single-Select List
    [Documentation]    Get List Items From Single-Select List
    ${items}=    Get List Items    preferred_channel
    ${expected}=    Create List    Email    Telephone    Direct mail
    Should Be Equal    ${items}    ${expected}

Get List Items From Multi-Select List
    [Documentation]    Get List Items From Multi-Select List
    ${items}=    Get List Items    interests
    ${expected}=    Create List    Males    Females    Others
    Should Be Equal    ${items}    ${expected}



Get Selected List Value
    [Documentation]    Get Selected List Value
    ${selected}=    Get Selected List Value    preferred_channel
    Should Be Equal    ${selected}    phone

Get Selected List Values
    [Documentation]    Get Selected List Values
    ${selected}=    Get Selected List Values    preferred_channel
    ${expected}=    Create List    phone
    Should Be Equal    ${selected}    ${expected}

Get Selected List Label
    [Documentation]    Get Selected List Label
    ${selected}=    Get Selected List Label    preferred_channel
    Should Be Equal    ${selected}    Telephone
    Select From List    interests    Males
    ${selected}=    Get Selected List Label    interests
    Should Be Equal    ${selected}    Males


*** Keywords ***
Test Begin
	[Arguments]     ${url}
	Open Browser    ${url}
