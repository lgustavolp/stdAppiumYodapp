*** Settings ***

Library    AppiumLibrary

*** Test Cases ***

Should Open Home Screen

    Open Application    http://localhost:4723
    ...                 platformName=Android
    ...                 deviceName=Android Emulator
    ...                 automationName=UIAutomator2
    ...                 app=${EXECDIR}/yodapp/yodapp-beta.apk
    ...                 udid=emulator-5554
    ...                 autoGrantPermissions=true

    Wait Until Page Contains        Yodapp    10
    Wait Until Page Contains        Mobile Training    10
    Wait Until Page Contains        by Papito    10

    Close Application 



