*** Settings ***
Documentation    This page interacts with the base select room features.
Resource    BasePageObject.robot
Resource    BookRoomFeature.robot

*** Variables ***
# Constants for accessing the room UI elements
${RoomPrefix}    //div[contains(.,"
${RoomSuffix}    ")][@class="row hotel-room-info"]//button


*** Keywords ***
SelectRoomFeature-Select Room To Book
    [Arguments]    ${room_name}
    [Documentation]    This keyword selects the intended room from the list of displayed rooms.
    ${book_room_button_locator} =   Set Variable    ${RoomPrefix}${room_name}${RoomSuffix}
    log     ${book_room_button_locator}
    wait until page contains element    ${book_room_button_locator}     ${BASEPAGE_TIMEOUT}
    click button    ${book_room_button_locator}

SelectRoomFeature-Book Room For Today
    [Arguments]    ${room_name}    ${first_name}    ${last_name}    ${email}    ${number}
    [Documentation]    This keyword books the selected room with the provided info.
    SelectRoomFeature-Select Room To Book    ${room_name}
    BookRoomFeature-Book Room Today    ${first_name}    ${last_name}    ${email}    ${number}
