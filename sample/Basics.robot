*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
Verify user is able access the login page
    open browser   https://www.demoblaze.com/   chrome
    click element  id:login2
    sleep  5
Verify user is able access the login page with valid username and valid password
    open browser   https://www.demoblaze.com/   chrome
    click element  id:login2
    sleep  3
    input text  id:loginusername    demo
    input text  id:loginpassword    demo
    click element  xpath://*[@id="logInModal"]/div/div/div[3]/button[2]



*** Keywords ***
