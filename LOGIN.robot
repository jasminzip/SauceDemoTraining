*** Settings ***
Resource    /Users/jasminmusanip/PycharmProjects/SauceDemoTraining/RESOURCES/COMMON.robot
Test Setup    Open Browser To Login Sauce Demo
Test Teardown    Close Browser Session


*** Test Cases ***
Valid Login
    [Tags]    Valid Login    regression
    Login With Valid Credentials
    Page Should Contain Element    Products
    Sleep    5

