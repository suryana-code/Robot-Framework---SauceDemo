*** Settings ***
Library    SeleniumLibrary
Resource   variables.robot

*** Keywords ***
Open SauceDemo
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

Login With Credentials
    [Arguments]    ${username}    ${password}
    Input Text    id:user-name    ${username}
    Input Text    id:password     ${password}
    Click Button  id:login-button

Logout From Application
    Click Button    id:react-burger-menu-btn
    wait Until Element Is Visible    id:logout_sidebar_link    timeout=5s
    Click Link      id:logout_sidebar_link