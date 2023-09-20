*** Settings ***
Documentation    This is the page object page for accessing the admin page.
Library    SeleniumLibrary
Resource    ../BasePage/BasePageObject.robot
Resource    AdminNavBarFeature.robot

*** Variables ***
#Admin Constants
${ADMIN_URL}    https://automationintesting.online/#/admin

#Admin creds
${USER_NAME}    admin
${PASSWORD}     password

#Admin Login Page Locators
${USER_NAME_INPUT}  //input[@id='username']
${PASSWORD_INPUT}   //input[@id='password']
${LOGIN_BUTTON}     //button[@id='doLogin']

*** Keywords ***
AdminPageObject-Open Admin Page
    OPEN BROWSER    ${ADMIN_URL}    ${browser}

AdminPageObject-Goto Admin Page
    GO TO    ${ADMIN_URL}

AdminPageObject-Login as Admin
    AdminPageObject-Open Admin Page
    WAIT UNTIL PAGE CONTAINS ELEMENT    ${LOGIN_BUTTON}
    INPUT TEXT    ${USER_NAME_INPUT}    ${USER_NAME}
    INPUT TEXT    ${PASSWORD_INPUT}     ${PASSWORD}
    CLICK BUTTON    ${LOGIN_BUTTON}