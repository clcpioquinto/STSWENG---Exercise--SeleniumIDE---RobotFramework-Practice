*** Settings ***
Documentation     A resource file with reusable keywords and variables
Library     SeleniumLibrary

*** Variables ***

*** Keywords ***

*** Test Cases ***
Valid Login
    # open browser
    Open Browser   https://www.saucedemo.com/    chrome 
    # set window size
    Maximize Browser Window
    # check if in login page
    Page Should Contain Element    login-button
    # input username
    Input Text     user-name     standard_user
    # input password
    Input Password     password     secret_sauce
    # click login button
    Click Button     login-button
    # should be open in products page
    Element Text Should Be     class:title     PRODUCTS
    # close browser
    [Teardown]     Close Browser
