*** Settings ***
Test Tags    regression
Resource    ../resources/keywords/login_keywords.robot
Resource    ../resources/keywords/keywords.robot
Resource    ../resources/locator.robot
Test Setup  Open SauceDemo
Test Teardown    Close Browser

*** Test Cases ***
Logout Successfully
    Login With Credentials    ${VALID_USER}    ${VALID_PASS}
    Logout From Application
    Page Should Contain Element    ${login_button}
