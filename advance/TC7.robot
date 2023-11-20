*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}  https://www.demoblaze.com/
${Browser}  chrome

*** Test Cases ***
check the sample testcase for browser launch
    Launch My Application
    close browser
Check whether user is able to navigate to login section
    Launch My Application
    click element   id:login2
Check whether user is able to click on product
     Launch My Application
     set selenium implicit wait  10
     click element  xpath://*[@id="tbodyid"]/div[1]/div/div/h4/a


Login And CheckLogout
    Launch My Application
    click element   id:login2
    valid login
    Click Button    xpath://*[@id="logInModal"]/div/div/div[3]/button[2]


*** Keywords ***
Launch My Application
    open browser   ${url}   ${Browser}
    maximize browser window
valid login
    Input Text    id:loginusername    demo
    Input Password    id:loginpassword    demo