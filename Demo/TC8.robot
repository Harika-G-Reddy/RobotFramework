*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
check the sample testcase for browser launch
    [tags]  smoke
    open browser   https://demo.automationtesting.in/Frames.html   chrome
     maximize browser window
    close browser
check the login functionality
    [tags]  regression

    open browser   https://demo.automationtesting.in/Frames.html   chrome
    maximize browser window
    select frame   id:singleframe
    input text  xpath:/html/body/section/div/div/div/input  bheem
    unselect frame





*** Keywords ***
