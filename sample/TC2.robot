*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
Verify user is able select element from the dropdown
    open browser   https://demo.automationtesting.in/Register.html   chrome
    select from list by label  Skills    Microsoft Word
    sleep   3
    select from list by index  Skills    7
    sleep  3
    select from list by value  Skills    Java
     sleep  3

Verify user is able select multiple elements from the dropdown
    open browser   https://demo.automationtesting.in/Register.html   chrome
    click element  id:msdd
    sleep   3
    click element  xpath://a[text()='Spanish']
    click element  xpath://a[text()='English']


*** Keywords ***
