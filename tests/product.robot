*** Settings ***
Test Tags    smoke
Resource    ../resources/keywords.robot
Resource    ../resources/locator.robot
Test Setup    Open SauceDemo
Test Teardown    close All Browsers

*** Test Cases ***
Verify Product Page Displayed
    Login With Credentials    ${VALID_USER}   ${VALID_PASS}
    Page Should Contain     ${products_item}
    Page Should Contain Element    ${inventory_item}
    Page Should Contain Button      ${add_to_cart_button}