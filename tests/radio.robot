*** Settings ***

Library    AppiumLibrary

Resource    ../resources/base.resource

*** Test Cases ***
Should Select the option Javascript

    Start Session
    Get Started
    Navigate to     Check e Radio    
    Go to Item      Botões de radio    Escolha sua linguagem preferida

    Click Element      xpath=//android.widget.RadioButton[contains(@text, "Javascript")]

    Sleep    3

    Close Session