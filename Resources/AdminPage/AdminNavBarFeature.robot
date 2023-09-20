*** Settings ***
Documentation    This page interacts with the nav bar on the admin page.
Resource    AdminPageObject.robot

*** Variables ***
${ROOMS_NAV}        //a[normalize-space()='Rooms']
${REPORT_NAV}       //a[@id='reportLink']
${BRANDING_NAV}     //a[@id='brandingLink']
${MESSAGES_NAV}     //i[@class='fa fa-inbox']
${FRONT_PAGE_NAV}   //a[@id='frontPageLink']
${LOGOUT_NAV}       //a[normalize-space()='Logout']

*** Keywords ***
AdminNavBarFeature-Goto Bookings
    CLICK LINK    ${ROOMS_NAV}

AdminNavBarFeature-Goto Reports
    CLICK LINK    ${REPORT_NAV}

AdminNavBarFeature-Goto Branding
    CLICK LINK    ${BRANDING_NAV}

AdminNavBarFeature-Goto Messages
    CLICK LINK  ${MESSAGES_NAV}

AdminNavBarFeature-Goto Front Page
    CLICK LINK  ${FRONT_PAGE_NAV}

AdminNavBarFeature-Log Out
    CLICK BUTTON    ${LOGOUT_NAV}