*** Settings ***
library    SeleniumLibrary
Resource   ../variables/global_variables.robot
Resource   ../locator.robot

*** Keywords ***
Checkout Data
    Click Button    ${add_to_cart_button}
    Click Element   ${shopping_cart_link}
    Click Button    ${checkout_button}
    wait Until Element Is Visible    ${continue_button}    timeout=5s

Put Checkout
    [Arguments]    ${first-name}    ${last-name}    ${postal-code}
    Input Text      id:first-name    ${first-name}
    Input Text      name:lastName     ${last-name}
    Input Text      id:postal-code   ${postal-code}
    Click Button    ${continue_button}
    wait Until Element Is Visible    ${finish_button}    timeout=5s
    Click Button    ${finish_button}
    wait Until Element Is Visible    ${complete_header}
    Page Should Contain    Thank you for your order