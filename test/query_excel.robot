*** Settings ***
Library     SeleniumLibrary
Resource    ../data/data.robot
Resource    ../pages/wikipage.robot
Library     DataDriver    ../data/searches.xlsx    sheet_name=Sheet1
Suite Setup      Open Homepage
Suite Teardown   Close All Browsers
Test Template    Perform Search


*** Test Cases ***
Search Wikipedia Query    ${searches}


*** Keywords ***
Perform Search
    [Arguments]    ${searches}
    Search    ${searches}
    Wait Until Page Contains    ${searches}    timeout=10s
    Go To    ${URL}
