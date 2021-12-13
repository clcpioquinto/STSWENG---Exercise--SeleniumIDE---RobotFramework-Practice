*** Settings ***
Documentation     A resource file with reusable keywords and variables
Library     SeleniumLibrary

*** Variables ***

*** Keywords ***

*** Test Cases ***
Locked Out User
    # open browser
    Open Browser   https://www.saucedemo.com/    chrome 
    # set window size
    Maximize Browser Window
    # check if in login page
    Page Should Contain Element    login-button
    # input username
    Input Text     user-name     locked_out_user
    # input password
    Input Password     password     secret_sauce
    # click login button
    Click Button     login-button
    # check if in login page
    Element Text Should Be     class:error-message-container    Epic sadface: Sorry, this user has been locked out.
    # close browser
    [Teardown]     Close Browser
