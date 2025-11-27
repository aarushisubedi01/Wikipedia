*** Settings ***
Library    SeleniumLibrary
Resource    ../data/data.robot
Resource    ../pages/wikipage.robot

*** Test Cases ***
check homepage load
    [Documentation]     Verify that user can search pizza successfully
    Open Homepage
check search function
    open homepage
    Search
    close browser
check empty search
    open homepage
    search empty
    close browser
check language selection
    open homepage
    language selection
    close browser
