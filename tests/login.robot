*** Settings ***
Resource    ../resources/keywords.robot
Test Setup  Open SauceDemo
Test Teardown    Close Browser

*** Test Cases ***
Login With Valid Credentials
    [Documentation]    Test login functionality with valid username and password.
    Login With Credentials    ${VALID_USER}    ${VALID_PASS}
    Page Should Contain Element    class:inventory_list

Login With Invalid Credentials
    [Documentation]    Test login functionality with valid username and password.
    Login With Credentials    ${INVALID_USER}    ${INVALID_PASS}
    Page Should Contain    Epic sadface