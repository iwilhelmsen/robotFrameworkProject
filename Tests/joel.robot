*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BASETAG}  //div[@id='update_list']//div[1]//div[1]//div[3]//div[1]//p
${TARGETTAG}    //*[@id="update_list"]/div[2]/div[1]/div/div[3]/div/span
${BASEPAGE}     https://www.db.yugioh-card.com/yugiohdb/card_search.action?ope=2&cid=4041
${browser}      chrome
${BASEPAGE_TIMEOUT}     5
${Y-VAR}        50

*** Keywords ***
Element_Scroll To Element
    [Arguments]                ${e}
    ${y}=                    Get Vertical Position        ${e}
    ${scroll}=                Evaluate        int(float("${y}")) - ${Y-VAR}
    Execute Javascript        scrollTo(0, ${scroll})

*** Test Cases ***
TC-001_Joel
    OPEN BROWSER    ${BASEPAGE}    ${browser}
    wait until page contains element    ${BASETAG}    ${BASEPAGE_TIMEOUT}
    ${item} =   get text    ${basetag}
    log    ${item}
    Element_Scroll To Element    ${basetag}
    wait until element is visible    ${basetag}     ${BASEPAGE_TIMEOUT}
    mouse over    ${basetag}
    wait until element is visible    ${targettag}   ${BASEPAGE_TIMEOUT}
    ${target} =     get text    ${TARGETTAG}
    log    ${target}
    Close Browser
