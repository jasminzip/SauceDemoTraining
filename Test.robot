*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Open Sauce Demo Site
    Open browser    https://www.saucedemo.com/    chrome
    Page Should Contain    Swag Labs
    Capture Page Screenshot