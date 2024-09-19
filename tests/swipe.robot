*** Settings ***

Resource    ../resources/base.resource


*** Test Cases ***
Should can remove Darth Vader

    Start Session
    Get Started

    Navigate to    Star Wars
    Go to Item    Lista    Darth Vader

    ${positions}    Get Element Location    xpath=//android.widget.TextView[@text="@darthvader"]/../../..//*[contains(@resource-id, "indicator")]

    # VERTICAL Y
    # HORIZONTAL X
    # XPATH TO GO TO THE FATHER NODE (/../../..//*[contains(@resource-id, "indicator")])
    # Evaluate -> to user a mathematic operator ( - )
    ${start_x}     Set Variable    ${positions}[x]
    ${start y}     Set Variable    ${positions}[y]
    ${offset_x}    Evaluate        ${positions}[x] - 650
    ${offset_y}    Set Variable    ${positions}[y]

    Swipe    ${start_x}    ${start_y}    ${offset_x}     ${offset_y}    1000

    Click Element    id=com.qaxperience.yodapp:id/btnRemove
    Wait Until Page Does Not Contain    Darth Vader

    Close Session
