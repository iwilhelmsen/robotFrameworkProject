*** Settings ***
Documentation    This file interacts with the base Restful-booker landing page.
Library    SeleniumLibrary

*** Variables ***
# Base constants for calling up the base page.
${BASEPAGE}     https://automationintesting.online/
${browser}      chrome
${BASEPAGE_TIMEOUT}     5

*** Keywords ***
BasePageObject-Go To URL
    OPEN BROWSER    ${BASEPAGE}    ${browser}

BasePageObject-Close
    CLOSE BROWSER