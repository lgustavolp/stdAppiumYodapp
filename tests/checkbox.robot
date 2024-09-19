*** Settings ***

Library    AppiumLibrary

Resource    ../resources/base.resource

*** Test Cases ***
Should Check all the Tasks use Appium

    Start Session
    Get Started
    Navigate to     Check e Radio    
    Go to Item      Checkbox    Marque as techs que usam Appium

    @{techs}    Create List    Ruby    Python    Java    Javascript    C#    Robot Framework

    FOR  ${tech}  IN  @{techs}

        Click Element      xpath=//android.widget.CheckBox[contains(@text, "${tech}")]
        Sleep    1
    
    END

    Sleep    3

    Close Session