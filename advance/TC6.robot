*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Test Cases ***
Login And CheckLogout
    Open Browser    https://www.demoblaze.com/    chrome
    click element   id:login2
    Input Text    id:loginusername    demo
    Input Password    id:loginpassword    demo
    Click Button    xpath://*[@id="logInModal"]/div/div/div[3]/button[2]

    # Check if the logout link is displayed after login
    Wait Until Element Is Visible   id:logout2    timeout=10s

    # Your other test steps after successful login go here

    # Perform logout
#    Click Element    id:logout2

    # Check if the logout link is not displayed after logout
#    Wait Until Keyword Succeeds    10s    2s    Element Should Not Be Visible    id:logout2

    # Your other test steps after successful logout go here

*** Keywords ***
