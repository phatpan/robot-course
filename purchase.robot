*** Settings ****
Library    Selenium2Library
Suite Teardown    Close All Browsers

*** Variables ***
${URL}    http://localhost:8000/
${BROWSER_DRIVER}    chrome

*** Test Cases ***
Initial Hide Section Number Purchase
    Given Go To Page Book Store
    When Display Page Purchase
    Then Hide Section Number Purchase

Display Section Number Purchase
    Given Go To Page Book Store
    And Display Page Purchase
    When Fill In Number Purchase
    Then Display Section Number Purchase

*** Keywords ***
Go To Page Book Store
    Open Browser    ${URL}    ${BROWSER_DRIVER}

Display Page Purchase
    Element Should Contain    list-order-book-title    Book lists 

Fill In Number Purchase
    Input Text    num-purchase    3  

Display Section Number Purchase
    Element Should Be Visible    section-number-purchase

Hide Section Number Purchase
    Element Should Not Be Visible    section-number-purchase

