*** Settings ***

Resource    ../resources/base.resource

*** Test Cases ***
Should Login with Success

    Start Session

    Get Started
    Navigate to    Formulários
    Go to Item     Login    Olá Padawan, vamos testar o login?

    Input Text       com.qaxperience.yodapp:id/etEmail        yoda@qax.com
    Input Text       com.qaxperience.yodapp:id/etPassword     jedi
    Click Element    com.qaxperience.yodapp:id/btnSubmit

    Wait Until Page Contains    Boas vindas, logado você está.

    Close Session

Shouldn't Login with Wrong Password

    Start Session

    Get Started
    Navigate to    Formulários
    Go to Item     Login    Olá Padawan, vamos testar o login?

    Input Text       com.qaxperience.yodapp:id/etEmail        yoda@qax.com
    Input Text       com.qaxperience.yodapp:id/etPassword     test
    Click Element    com.qaxperience.yodapp:id/btnSubmit

    Wait Until Page Contains    Oops! Credenciais incorretas.

    Close Session