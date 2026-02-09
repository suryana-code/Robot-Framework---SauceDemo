*** Settings ***
Resource    ../resources/keywords.robot
Test Setup  Open SauceDemo
Test Teardown    Close Browser

*** Test Cases ***
Logout Successfully
    Login With Credentials    ${VALID_USER}    ${VALID_PASS}
    Logout From Application
    Page Should Contain Element    id:login-button
