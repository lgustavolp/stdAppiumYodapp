*** Settings ***

Resource    ../resources/base.resource

*** Test Cases ***
Should choose level Padawan

    Start Session
    Get Started

    Navigate to     Formulários
    Go to Item      Cadastro        Crie sua conta.

    Select Level    Padawan

    Close Session

Should choose level Jedi

    Start Session
    Get Started

    Navigate to     Formulários
    Go to Item      Cadastro        Crie sua conta.

    Select Level    Jedi

    Close Session

Should choose level Sith

    Start Session
    Get Started

    Navigate to     Formulários
    Go to Item      Cadastro        Crie sua conta.

    Select Level    Sith

    Close Session

Should choose level Outros

    Start Session
    Get Started

    Navigate to     Formulários
    Go to Item      Cadastro        Crie sua conta.

    Select Level    Outros

    Close Session


*** Keywords ***
Select Level
    [Arguments]    ${level}

    Click Element                    id=com.qaxperience.yodapp:id/spinnerJob
    Wait Until Element Is Visible    class=android.widget.ListView
    Click Text                       ${level}