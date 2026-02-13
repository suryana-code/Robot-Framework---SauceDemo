*** Settings ***
Resource    ../resources/keywords.robot
Resource    ../resources/locator.robot
Test Setup  Open SauceDemo
Test Teardown    Close Browser

*** Test Cases ***
Add Product To Cart
    Login With Credentials    ${VALID_USER}    ${VALID_PASS}
    Click Button    ${added_to_cart_button}
    Element Text Should Be    class:shopping_cart_badge    1
    Click Element    ${shopping_cart_link}
    Page Should Contain    Sauce Labs Backpack
