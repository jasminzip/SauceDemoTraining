*** Settings ***
Library    BuiltIn
Library    SeleniumLibrary

*** Variables ***
${URL}            https://www.saucedemo.com/
${USERNAME}       standard_user
${PASSWORD}       secret_sauce

*** Test Cases ***
Valid Login
    Open Browser       ${URL}    chrome
    Input Text         id=user-name    ${USERNAME}
    Input Text         id=password    ${PASSWORD}
    Click Button       id=login-button
    Sleep    5
    Page Should Contain    Products
    Close Browser

