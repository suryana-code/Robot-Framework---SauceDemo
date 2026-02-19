*** Settings ***
Test Tags    regression
Resource    ../resources/keywords/login_keywords.robot
Resource    ../resources/keywords/checkout_keywords.robot
Resource    ../resources/variables/global_variables.robot
Resource    ../resources/locator.robot
Test Setup  Open SauceDemo
Test Teardown    Close Browser

*** Test Cases ***
Checkout With Empty Data
    [Documentation]    Verify that user cannot checkout with empty data
    Login With Credentials    ${VALID_USER}    ${VALID_PASS}
    Checkout Data
    Click Button    ${continue_button}
    Page Should Contain    Error

Successful Checkout
    [Documentation]    Verify that user can checkout with valid data
    Login With Credentials    ${VALID_USER}    ${VALID_PASS}
    Checkout Data
    Put Checkout    ${first-Name}    ${last-Name}    ${postal-Code}