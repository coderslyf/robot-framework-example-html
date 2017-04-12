*** Settings ***
Library		Selenium2Library

*** VARIABLES ***
${BROWSER}	firefox
${loggedinPageUrl}		http://qat5.q.pers.state.or.us/Clarety/SANavigator.do?event=R_GO
${loginUrl}   https://coderslyf.github.io/robot-framework-example-html/robot-sample.html

*** Test Cases ***
Basic Successful FetchUrl
    Test Begin    ${loginUrl}
    Click Element  link=Login 
	
	Wait Until Element Is Visible  //div[@id='i1']  timeout=60
	Location Should Be  https://coderslyf.github.io/robot-framework-example-html/login.html	
	Input Text  usrname  abcd
    Input Password  pwd  abcd
    Click Element  xpath=//input[@value='Submit']	
    Go To  https://coderslyf.github.io/robot-framework-example-html/robot-sample.html  
    Location Should Be  https://coderslyf.github.io/robot-framework-example-html/robot-sample.html
	Wait Until Element Is Visible  alert  timeout=10
	Click Element  id=alert
	Wait Until Element Is Visible  alertmsg  timeout=60
    Click Element  id=alertmsg  	
    Go To  https://coderslyf.github.io/robot-framework-example-html/robot-sample.html  
    Location Should Be  https://coderslyf.github.io/robot-framework-example-html/robot-sample.html
	Wait Until Element Is Not Visible  b1  timeout=60
	Click Element  id=b1
	Alert Should Be Present  I am an alert box!
    
	Assign Id To Element  xpath=//div[@id='i1']  myid
	Page Should Contain Element  myid  
	
	
	Capture Page Screenshot
	
	
    






	
		
*** Keywords ***

Test Begin
	[Arguments]     ${url}
	Open Browser    ${url}


	

	
	
# http://robotframework.org/Selenium2Library/Selenium2Library.html
# http://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#positional-arguments
# http://robotframework.org/Selenium2Library/Selenium2Library.html#Introduction
# http://robotframework.org/Selenium2Library/Selenium2Library.html#Execute%20Javascript














