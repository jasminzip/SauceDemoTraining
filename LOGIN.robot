*** Settings ***
Resource    /Users/jasminmusanip/PycharmProjects/SauceDemoTraining/RESOURCES/COMMON.robot
Test Setup    Open Browser To Login Page
Test Teardown    Close Browser Session


*** Test Cases ***
Valid Login
    Login With Valid Credentials
    Page Should Contain Element    Products
    Sleep    5

