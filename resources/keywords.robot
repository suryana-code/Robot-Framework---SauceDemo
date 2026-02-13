*** Settings ***
Library    SeleniumLibrary
Resource   variables.robot
Resource   locator.robot

*** Keywords ***
Open SauceDemo
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

Login With Credentials
    [Arguments]    ${username}    ${password}
    Input Text    ${username_field}    ${username}
    Input Text    ${password_field}     ${password}
    Click Button  ${login_button}

Logout From Application
    Click Button    ${menu_button}
    wait Until Element Is Visible    ${logout_link}    timeout=5s
    Click Link      ${logout_link}

Put Checkout
    [Arguments]    ${first-name}    ${last-name}    ${postal-code}
    Input Text      id:first-name    ${first-name}
    Input Text      name:lastName     ${last-name}
    Input Text      id:postal-code   ${postal-code}