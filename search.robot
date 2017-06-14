*** Settings ***
Library    Selenium2Library
Suite Teardown    Close All Browsers

*** Variables ***
${URL}    https://www.google.co.th/
${BROWSER_DRIVER}    chrome

*** Test Cases ***
Search Robot In Google
    Open Browser    ${URL}    ${BROWSER_DRIVER}
    Input text     lst-ib     robot  



