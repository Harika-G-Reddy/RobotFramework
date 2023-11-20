*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
check the sample testcase
    open browser   https://www.demoblaze.com/   chrome
    click element   id:login2
    sleep  5
    input text  id:loginusername    demo
    input text  id:loginpassword    demo
    click element  xpath://*[@id="logInModal"]/div/div/div[3]/button[2]
    sleep   5
    #element should be visible   id:logout2
    element text should be   id:nameofuser   Welcome demo123
*** Keywords ***
