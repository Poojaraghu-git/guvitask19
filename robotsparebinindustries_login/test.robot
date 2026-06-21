*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Open Application
    Open Browser    https://robotsparebinindustries.com/    Chrome
    Title Should Be    RobotSpareBin Industries Inc. - Intranet

Login As A User
   Input Text      xpath=//input[@id ='username']    maria
   Input text      xpath=//input[@id ='password']    thoushallnotpass
   Click button    xpath=//button[@type='submit']

Verify User Login
   Wait until element is visible    xpath=//span[@class='username']
   Page should contain    maria

Logout User
    Wait until element is visible    xpath=//button[@id='logout']
    Click element    xpath=//button[@id='logout']


*** Test Cases ***
Open Website
    Open Application

Verify User Login Is Successful
    Open Application
    Login As A User
    Verify User Login

Verify User Logged Out Successfully
    Open Application
    Login As A User
    Logout User

