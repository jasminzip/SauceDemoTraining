*** Settings ***
Resource    /Users/jasminmusanip/PycharmProjects/SauceDemoTraining/RESOURCES/COMMON.robot

*** Test Cases ***
Valid Login
    Open Browser To Login Page
    Login With Valid Credentials
    Page Should Contain Element    Products
    Sleep    5
    Close Browser Session

#Invalid Password Login
 #   Open Browser To Login Page
 #   Login With Invalid Password
  #  Page Should Contain Element    ${error_message}
  #  Close Browser Session
