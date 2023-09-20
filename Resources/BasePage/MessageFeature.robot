*** Settings ***
Documentation    This page interacts with the messaging feature on the base page.
Resource    BasePageObject.robot

*** Variables ***
# Constants for accessing the messaging UI elements
${NAME_INPUT}   //input[@id='name']
${EMAIL_INPUT}  //input[@id='email']
${PHONE_INPUT}  //input[@id='phone]
${SUBJECT_INPUT}    //input[@id='subject']
${MESSAGE_INPUT}    //textarea[@id='description']
${MESSAGE_SUBMIT_BUTTON}    //button[@id='submitContact']

*** Keywords ***
MessageFeature-Write Message
    [Arguments]    ${name}  ${email}    ${phone}    ${subject}  ${message}
    [Documentation]    This keyword inputs the desired message components
    input text    ${NAME_INPUT}     ${name}
    input text    ${EMAIL_INPUT}    ${email}
    input text    ${PHONE_INPUT}    ${phone}
    input text    ${SUBJECT_INPUT}  ${subject}
    input text    ${MESSAGE_INPUT}  ${message}

MessageFeature-Select Submit Button
    click button    ${message_submit_button}
