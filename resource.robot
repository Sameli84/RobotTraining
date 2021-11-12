*** Settings ***
Library           SeleniumLibrary   run_on_failure=Nothing

*** Variables ***
${SERVER}         https://www.saucedemo.com/
${BROWSER}        Chrome
${DRIVER}         /usr/bin/chromedriver
${DELAY}          0

*** Keywords ***
Prepare Browser
    Open Browser    ${SERVER}   ${BROWSER}   executable_path=${DRIVER}
    Maximize Browser Window
    Set Selenium Speed    0.3 seconds

Input Username
    [Arguments]    ${username}
    Input Text    user-name   ${username}

Input Password
    [Arguments]    ${password}
    Input Text    password   ${password}

Submit Credentials
    Click Button    login-button
    
Verify Solved
    Wait Until Page Contains    THANK YOU FOR YOUR ORDER

Add item to cart
    [Arguments]    ${item}
    Click Button    add-to-cart-sauce-labs-${item}

To shopping cart
    Click Element    shopping_cart_container
    Click Button     checkout

Input first
    [Arguments]    ${fname}
    Input Text    firstName   ${fname}

Input last
    [Arguments]    ${lname}
    Input Text    lastName   ${lname}

Input zip
    [Arguments]    ${zip}
    Input Text    postalCode   ${zip}

Continue
    Click Element   continue

Finish
    Click Element   finish
