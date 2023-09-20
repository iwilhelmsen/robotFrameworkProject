*** Settings ***
#Resource    ../../BasePage/SelectRoomFeature.robot
Library    SeleniumLibrary
Documentation    Testing the Select Room Feature
Resource    ../Resources/BasePage/BasePageObject.robot
Resource    ../Resources/BasePage/SelectRoomFeature.robot
Test Setup    BasePageObject-Go To URL
Test Teardown    BasePageObject-Close

*** Variables ***
#Test Data
${first_name}    Snoopie
${last_name}    Dog
${email}    Snoopie_dog@gmail.com
${phone_number}    919 923 0046

#Default Constants
${DEFAULT_ROOM}    single

*** Test Cases ***
# robot -T --outputdir Results --test "TC-001-Select default room" Tests/SelectRoomFeatureSuite.robot
TC-001-Select default room
    [Tags]    smoke
    [Documentation]    This test checks functionality of selecting the default room.
    SelectRoomFeature-Select Room To Book   ${DEFAULT_ROOM}

# robot -T --outputdir Results --test "TC-002-Book room for today" Tests/SelectRoomFeatureSuite.robot
TC-002-Book room for today
    [Tags]    critical
    [Documentation]    This test checks if a user can select a room and then cancel that selection
    SelectRoomFeature-Book Room For Today    ${DEFAULT_ROOM}    ${first_name}    ${last_name}    ${email}    ${phone_number}