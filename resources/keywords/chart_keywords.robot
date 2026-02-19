*** Settings ***
Library    SeleniumLibrary
Resource   ../variables/global_variables.robot
Resource   ../locator.robot

*** Keywords ***
Add to Chart
    Click Button    ${added_to_cart_button}
    Element Text Should Be    class:shopping_cart_badge    1
    Click Element    ${shopping_cart_link}
    Page Should Contain    Sauce Labs Backpack