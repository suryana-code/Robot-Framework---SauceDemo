*** Settings ***
Test Tags    regression
Resource    ../resources/keywords/login_keywords.robot
Resource    ../resources/keywords/chart_keywords.robot
Resource    ../resources/locator.robot
Test Setup  Open SauceDemo
Test Teardown    Close Browser

*** Test Cases ***
Add Product To Cart
    [Documentation]    This test case will verify that user can add product to cart successfully
    Login With Credentials    ${VALID_USER}    ${VALID_PASS}
    Add to Chart
