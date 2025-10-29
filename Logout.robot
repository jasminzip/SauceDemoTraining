*** Settings ***
Resource    /Users/jasminmusanip/PycharmProjects/SauceDemoTraining/RESOURCES/COMMON.robot

*** Test Cases ***
Login and logout
    [Tags]    Valid Login    regression
    Input Text         id=user-name    ${USERNAME}
    Input Text         id=password    ${PASSWORD}
    Click Button       id=login-button
    Sleep    5
    Page Should Contain    Products
    Sleep    5
    Click Element    id=react-burger-menu-btn
    Click Element    id=logout_sidebar_link
   Sleep    5
