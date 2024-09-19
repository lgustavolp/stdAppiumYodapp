*** Settings ***

Library    AppiumLibrary

Resource    ../resources/base.resource

*** Test Cases ***
Should Do a simple Click

    Start Session
    Get Started
    Navigate to     Clique em Botões    
    Go to Item      Clique simples    Botão clique simples
    
    Click Text                       CLIQUE SIMPLES
    Wait Until Page Contains         Isso é um clique simples

    Close Session

Should Do a Long Click
    [Tags]    long
    
    Start Session
    Get Started
    Navigate to     Clique em Botões
    Go to Item      Clique longo    Botão clique longo

    ${locator}       Set Variable            id=com.qaxperience.yodapp:id/long_click
    ${positions}     Get Element Location    ${locator}

    Tap With Positions               1000    ${${positions}[x], ${positions}[y]}    
    Wait Until Page Contains         Isso é um clique longo

    Close Session