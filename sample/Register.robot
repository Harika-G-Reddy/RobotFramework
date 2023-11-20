*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
Verify user is able to Register
  open browser   https://demo.automationtesting.in/Register.html   chrome
  sleep  3
  input text  xpath://*[@id="basicBootstrapForm"]/div[1]/div[1]/input  HR
  input text  xpath://*[@id="basicBootstrapForm"]/div[1]/div[2]/input  G
  input text  xpath://*[@id="basicBootstrapForm"]/div[2]/div/textarea  Hyderabad
  input text  xpath://*[@id="eid"]/input  hr@gmail.com
  input text  xpath://*[@id="basicBootstrapForm"]/div[4]/div/input  9876543210
  sleep  3
  click element  xpath://*[@id="basicBootstrapForm"]/div[5]/div/label[2]/input
  click element  id:checkbox1
  click element  id:checkbox2
  click element  id:msdd
  click element  xpath://a[text()='English']
  click element  xpath://a[text()='Hindi']
  click element  xpath://a[text()='Spanish']
  click element  xpath://a[text()='German']
  sleep  2
  select from list by value  Skills  Python
  sleep  2
  click element  xpath://*[@id="basicBootstrapForm"]/div[10]/div/span/span[1]/span
  click element  xpath://*[@id="select2-country-results"]/li[6]
  sleep  2
  select from list by value  yearbox  1955
  select from list by value  xpath://*[@id="basicBootstrapForm"]/div[11]/div[2]/select  May
  select from list by value  daybox  5
  sleep  2
  input text  xpath://*[@id="firstpassword"]  demo
  input text  xpath://*[@id="secondpassword"]  demo
  click element  xpath://*[@id="submitbtn"]
  sleep  5

Verify user is able to Register using keboard actions
    [tags]  keyss
  open browser   https://demo.automationtesting.in/Register.html   chrome
  sleep  3
  input text  xpath://*[@id="basicBootstrapForm"]/div[1]/div[1]/input  HR
  press keys     xpath://*[@id="basicBootstrapForm"]/div[1]/div[2]/input    TAB
  input text    xpath://*[@id="basicBootstrapForm"]/div[1]/div[2]/input    sam


*** Keywords ***
