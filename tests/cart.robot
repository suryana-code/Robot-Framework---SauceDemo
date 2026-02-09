*** Settings ***
Resource    ../resources/keywords.robot
Test Setup  Open SauceDemo
Test Teardown    Close Browser

*** Test Cases ***
Add Product To Cart
    Login With Credentials    ${VALID_USER}    ${VALID_PASS}
    Click Button    id:add-to-cart-sauce-labs-backpack
    Element Text Should Be    class:shopping_cart_badge    1
    Click Element    class:shopping_cart_link
    Page Should Contain    Sauce Labs Backpack
