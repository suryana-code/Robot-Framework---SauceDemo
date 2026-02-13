*** Settings ***
Resource    ../resources/keywords.robot
Resource    ../resources/variables.robot
Resource    ../resources/locator.robot
Test Setup  Open SauceDemo
Test Teardown    Close Browser

*** Test Cases ***
Checkout With Empty Data
    Login With Credentials    ${VALID_USER}    ${VALID_PASS}
    Click Button    ${add_to_cart_button}
    Click Element   ${shopping_cart_link}
    Click Button    ${checkout_button}
    Click Button    ${continue_button}
    Page Should Contain    Error

Successful Checkout
    # Set Selenium Speed    0.3s
    Login With Credentials    ${VALID_USER}    ${VALID_PASS}
    Click Button    ${add_to_cart_button}
    Click Element   ${shopping_cart_link}
    Click Button    ${checkout_button}
    wait Until Element Is Visible    ${continue_button}    timeout=5s
    Put Checkout    ${first-Name}    ${last-Name}    ${postal-Code}
    Click Button    ${continue_button}
    wait Until Element Is Visible    ${finish_button}    timeout=5s
    Click Button    ${finish_button}
    wait Until Element Is Visible    ${complete_header}    timeout=5s
    Page Should Contain    Thank you for your order
