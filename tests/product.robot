*** Settings ***
Resource    ../resources/keywords.robot
Test Setup    Open SauceDemo
Test Teardown    close All Browsers

*** Test Cases ***
Verify Product Page Displayed
    Login With Credentials    ${VALID_USER}   ${VALID_PASS}
    Page Should Contain     Products
    Page Should Contain Element    css:.inventory_item
    Page Should Contain Button      Add to cart