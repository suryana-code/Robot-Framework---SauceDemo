*** Settings ***
Resource    ../resources/keywords.robot
Test Setup  Open SauceDemo
Test Teardown    Close Browser

*** Test Cases ***
Checkout With Empty Data
    Login With Credentials    ${VALID_USER}    ${VALID_PASS}
    Click Button    id:add-to-cart-sauce-labs-backpack
    Click Element   class:shopping_cart_link
    Click Button    id:checkout
    Click Button    id:continue
    Page Should Contain    Error

Successful Checkout
    # Set Selenium Speed    0.3s
    Login With Credentials    ${VALID_USER}    ${VALID_PASS}
    Click Button    id:add-to-cart-sauce-labs-backpack
    Click Element   class:shopping_cart_link
    Click Button    id:checkout
    wait Until Element Is Visible    id:continue    timeout=5s
    Input Text      id:first-name    Test
    Input Text      name:lastName     User
    Input Text      id:postal-code   12345
    Click Button    id:continue
    wait Until Element Is Visible    id:finish    timeout=5s
    Click Button    id:finish
    wait Until Element Is Visible    class:complete-header    timeout=5s
    Page Should Contain    Thank you for your order
