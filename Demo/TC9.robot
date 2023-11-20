*** Settings ***
Library  SeleniumLibrary
Library  SeleniumLibrary
*** Variables ***

*** Test Cases ***

check the sample testcase for browser launch
    [tags]  smoke
    open browser   https://demo.automationtesting.in/Windows.html  chrome
     maximize browser window
    close browser

check the swtich tabs functionality
    [tags]  regression
    open browser   https://demo.automationtesting.in/Windows.html   chrome
    maximize browser window
    ${win_handles}=   get window handles
    click element  xpath://*[@id="Tabbed"]/a/button
    switch window  ${win_handles}[0]
   # log to console
   switch window  title=Frames & windows
    sleep   3
   switch window  title=Selenium
    sleep   5


check the swtich window functionality
    [tags]  windows
    open browser   https://demo.automationtesting.in/Windows.html   chrome
    maximize browser window
    ${win_handles}=   get window handles
    click element  xpath:/html/body/div[1]/div/div/div/div[1]/ul/li[3]/a
    click element   xpath://*[@id="Multiple"]/button
    switch window  ${win_handles}[0]
    sleep   5
   # log to console
   switch window  title=Selenium
    sleep   3
   switch window  title=Index
    sleep   5





*** Keywords ***
