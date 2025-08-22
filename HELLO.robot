*** Settings ***
Library    BuiltIn
Library    SeleniumLibrary
*** Test Cases ***
Hello Test Case
    Log To Console    Hello, Saudi

First Test Case
     Open browser    https://www.saucedemo.com/    brave
    Sleep    5
    Close Browser
