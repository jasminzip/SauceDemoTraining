*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}          https://www.saucedemo.com/
${USERNAME}     standard_user
${PASSWORD}     wrong_password

*** Test Cases ***
Invalid Password Login
    Open Browser    ${URL}    chrome
    Input Text      id=user-name     ${USERNAME}
    Input Text      id=password      ${PASSWORD}
    Click Button    id=login-button
    Sleep    5
    Page Should Contain    Password is required
    Close Browser