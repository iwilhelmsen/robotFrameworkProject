*** Settings ***
Documentation    This page interacts with the admin room management feature.
Resource    AdminPageObject.robot

*** Variables ***
#Room Creation Constants
${ROOM_NUMBER_INPUT}   //input[@id='roomName']
${ROOM_TYPE_PULLDOWN}   //select[@id='type']
${ROOM_HANDICAP_PULLDOWN}   //select[@id='accessible']
${ROOM_PRICE_INPUT}     //input[@id='roomPrice']
${ROOM_WIFI_CHECKBOX}   //input[@id='wifiCheckbox']
${ROOM_TV_CHECKBOX}     //input[@id='tvCheckbox']
${ROOM_RADIO_CHECKBOX}  //input[@id='radioCheckbox']
${ROOM_REFRESHMENTS_CHECKBOX}   //input[@id='refreshCheckbox']
${ROOM_SAFE_CHECKBOX}   //input[@id='safeCheckbox']
${ROOM_VIEWS_CHECKBOX}  //input[@id='viewsCheckbox']
${ROOM_CREATE_BUTTON}   //button[@id='createRoom']