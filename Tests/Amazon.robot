*** Settings ***
Documentation    This is some basic info about this suite.
Library    SeleniumLibrary
*** Variables ***


*** Test Cases ***
TC-AMAZON-001 Verify login procedure
    [Documentation]    This is basic info about the test
    [Tags]    Smoke
    AMAZON-001_Go To URL
    close browser

*** Keywords ***
AMAZON-001_Go To URL
    Open Browser    https://www.amazon.com    firefox