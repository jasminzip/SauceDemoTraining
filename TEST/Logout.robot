*** Settings ***
Resource    COMMON.robot
Test Setup       Open Browser       ${URL}    chrome
Test Teardown        Close Browser

*** Variables ***
${URL}            https://www.saucedemo.com/
${USERNAME}       standard_user
${PASSWORD}       secret_sauce

*** Test Cases ***
Login

    Input Text         id=user-name    ${USERNAME}
    Input Text         id=password    ${PASSWORD}
    Click Button       id=login-button
    Sleep    5
    Page Should Contain    Products
    Click Element    id=react-burger-menu-btn
    Sleep    5
    Click Element    id=logout_sidebar_link
    Sleep    5