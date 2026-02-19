*** Settings ***
Test Tags    smoke
Resource    ../resources/keywords/keywords.robot
Resource    ../resources/keywords/login_keywords.robot
Resource    ../resources/locator.robot
Test Setup    Open SauceDemo
Test Teardown    close All Browsers

*** Test Cases ***
Verify Product Page Displayed
    [Documentation]    Verify that product page is displayed after login
    Login With Credentials    ${VALID_USER}   ${VALID_PASS}
    Page Should Contain     ${products_item}
    Page Should Contain Element    ${inventory_item}
    Page Should Contain Button      ${add_to_cart_button}