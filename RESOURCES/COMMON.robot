*** Settings ***
Library    SeleniumLibrary
Library    BuiltIn
Variables    /Users/jasminmusanip/PycharmProjects/SauceDemoTraining/RESOURCES/selectors.py

*** Variables ***
${URL}        https://www.saucedemo.com/
${BROWSER}    chrome
${USERNAME}   standard_user
${PASSWORD}   secret_sauce

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${URL}    ${BROWSER}
    Wait Until Element Is Visible    id=user-name

Login With Valid Credentials

    Input Text         id=user-name    ${USERNAME}
    Input Text         id=password    ${PASSWORD}
    Click Button       id=login-button
    Sleep    5
    Page Should Contain    Products

#Login With Invalid Password
  #  Input Text    ${username_input}    ${USERNAME}
   # Input Text    ${password_input}    wrong_password
   # Click Button  ${login_button}
   # Wait Until Page Contains Element    ${error_message}

Login and logout

    Input Text         id=user-name    ${USERNAME}
    Input Text         id=password    ${PASSWORD}
    Click Button       id=login-button
    Sleep    5
    Page Should Contain    Products
    Sleep    5
    Click Element    id=menu_button_container
    Sleep    5
   Click Element    id=logout_sidebar_link
   Sleep    5

Close Browser Session
    Close Browser
