*** Settings ***
Documentation     A resource file with reusable keywords and variables
Library     SeleniumLibrary

*** Variables ***

*** Keywords ***

*** Test Cases ***
Wrong Password
    # open browser
    Open Browser   https://www.saucedemo.com/    chrome 
    # set window size
    Maximize Browser Window
    # check if in login page
    Page Should Contain Element    login-button
    # input username
    Input Text     user-name     standard_user
    # input password
    Input Password     password     1234
    # click login button
    Click Button     login-button
    # should be open in products page
    Element Text Should Be     class:error-message-container     Epic sadface: Username and password do not match any user in this service
    # close browser
    [Teardown]     Close Browser
