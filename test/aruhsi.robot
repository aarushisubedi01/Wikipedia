*** Settings ***
Library    SeleniumLibrary
Resource    ../data/data.robot
Resource    ../pages/wikipage.robot
*** Test Cases ***
search

    ${data}=    Load json data
    open homepage
    FOR     ${i}    IN    @{data["searches"]}

    ${searches}=    get from dictionary    ${i}    query
    Search    ${searches}
    Go To       ${URL}
    END
    close browser
