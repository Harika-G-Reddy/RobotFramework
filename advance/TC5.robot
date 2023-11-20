*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
check the sample testcase for browser launch
    open browser   https://www.demoblaze.com/   chrome
    close browser
check the login functionality

    open browser   https://www.demoblaze.com/   chrome
    set selenium implicit wait  10
    click element   id:login2
#   sleep  5
    input text  id:loginusername    demo
    input text  id:loginpassword    demo
    click element  xpath://*[@id="logInModal"]/div/div/div[3]/button[2]
#   sleep   5
#   wait until element contains  id:nameofuser   Welcome demo
#   wait until element is visible  id:logout2
#   wait until page contains element   id:logout2

    element text should be   id:nameofuser   Welcome demo
#    wait until page does not contain  id:login2

*** Keywords ***
