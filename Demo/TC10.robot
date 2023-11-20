*** Settings ***
Library  SeleniumLibrary
Library  SeleniumLibrary
*** Variables ***
      @{fruitnames}  mango   orang
*** Test Cases ***

check the drag and drop functionality
    [tags]  smoke
    open browser  https://jqueryui.com/droppable/  chrome
     maximize browser window
     select frame  xpath://*[@id="content"]/iframe
     drag and drop  id:draggable    id:droppable
    sleep   5
check the mouse functionality
    [tags]  abd
    open browser  https://jqueryui.com/droppable/  chrome
     maximize browser window
     mouse over  xpath://*[@id="menu-top"]/li[2]/a
     sleep  3
     open context menu  xpath://*[@id="menu-top"]/li[8]/a

     FOR  ${a} IN @{fruitnames}
        log     ${a}
     END





*** Keywords ***
