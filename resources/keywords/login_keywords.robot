*** Settings ***
Library    SeleniumLibrary
Resource   ../variables/global_variables.robot
Resource   ../locator.robot

*** Keywords ***
Open SauceDemo
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

Login With Credentials
    [Arguments]    ${username}    ${password}
    Input Text    ${username_field}    ${username}
    Input Text    ${password_field}     ${password}
    Click Button  ${login_button}