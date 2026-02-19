*** Settings ***
Library    SeleniumLibrary
Resource   ../variables/global_variables.robot
Resource   ../locator.robot

*** Keywords ***

Logout From Application
    Click Button    ${menu_button}
    wait Until Element Is Visible    ${logout_link}
    Click Link      ${logout_link}
    wait Until Element Is Visible    ${login_button}