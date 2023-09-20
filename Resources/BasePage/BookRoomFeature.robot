*** Settings ***
Documentation    This page interacts with the book room features.T
Resource    BasePageObject.robot

*** Variables ***
#Calendar Locators
${TODAY_BUTTON}     //button[normalize-space()='Today']
${BACK_MONTH_BUTTON}    //button[normalize-space()='Back']
${NEXT_MONTH_BUTTON}    //button[normalize-space()='Next']
${MONTH_YEAR_BANNER}    //span[@class='rbc-toolbar-label']


#Booking Locators
${RoomBookingFirstName}    //input[@placeholder='Firstname']
${RoomBookingLastName}    //input[@placeholder='Lastname']
${RoomBookingEmail}        //input[@name='email']
${RoomBookingPhoneNumber}    //input[@name='phone']
${RoomBookingBookButton}    //button[normalize-space()='Book']

*** Keywords ***
BookRoomFeature-Book Room Today
    [Arguments]    ${first_name}    ${last_name}    ${email}    ${number}
    [Documentation]    This keyword books a selected room for current day.
    BookRoomFeature-Enter First Name   ${first_name}
    BookRoomFeature-Enter Last Name    $last_name
    BookRoomFeature-Enter Email    $email
    BookRoomFeature-Enter Phone Number    $number
    BookRoomFeature-Press Book Room button

BookRoomFeature-Select Date To Book
    [Arguments]    ${date_to_book}
    [Documentation]    This keyword selects the date to book a room for assuming that the user has selected a room first.

BookRoomFeature-Enter First Name
    [Arguments]    ${first_name}
    [Documentation]    This keyword enters in the chosen first name for the booking feature.
    Wait Until Page Contains Element    ${RoomBookingFirstName}    ${BASEPAGE_TIMEOUT}
    Input Text    ${RoomBookingFirstName}    ${first_name}

BookRoomFeature-Enter Last Name
    [Arguments]    ${last_name}
    [Documentation]    This keyword enters in the chosen last name for the booking feature.
    Wait Until Page Contains Element    ${RoomBookingLastName}    ${BASEPAGE_TIMEOUT}
    Input Text    ${RoomBookingLastName}    ${last_name}

BookRoomFeature-Enter Email
    [Arguments]    ${email}
    [Documentation]    This keyword enteres in the chosen email for the booking feature.
    Wait Until Page Contains Element    ${RoomBookingEmail}    ${BASEPAGE_TIMEOUT}
    Input Text    ${RoomBookingEmail}    ${email}

BookRoomFeature-Enter Phone Number
    [Arguments]    ${number}
    [Documentation]    This keyword enters in the chosen number for the booking feature.
    Wait Until Page Contains Element    ${RoomBookingPhoneNumber}    ${BASEPAGE_TIMEOUT}
    Input Text    ${RoomBookingPhoneNumber}    ${number}

BookRoomFeature-Press Book Room button
    [Documentation]    This keyword presses the book button for the selected room.
    Wait Until Page Contains Element    ${RoomBookingBookButton}    ${BASEPAGE_TIMEOUT}
    Click Button    ${RoomBookingBookButton}