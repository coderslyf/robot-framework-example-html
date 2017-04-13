*** Settings ***
Library		Selenium2Library

*** VARIABLES ***
${BROWSER}	firefox
${loggedinPageUrl}		http://qat5.q.pers.state.or.us/Clarety/SANavigator.do?event=R_GO
${loginUrl}  https://coderslyf.github.io/robot-framework-example-html/robot-sample.html

*** Test Cases ***

Basic Successful FetchUrl
    Test Begin    ${loginUrl}
	
Test anchor with event handler
     
	 Click Element  xpath=//*[@id='collapseOne']/div/div/ul/li[2]/div/button
	 Wait Until Element Is Visible  //*[@id='collapseOne']/div/div/ul/li[2]/div/button  
     Click Element  xpath=//*[@id='collapseOne']/div/div/ul/li[2]/div/ul/li[1]/a
	 
*** Keywords ***

Test Begin
	[Arguments]     ${url}
	Open Browser    ${url}