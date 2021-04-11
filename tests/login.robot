***Settings***
Documentation           Teste da página de login

Resource                ../resources/base.robot

Test Teardown   Take Screenshot

***Test Cases***
login com sucesso
    Open Login Page

    Login With                  papito@parodify.com  pwd123

    Logout Link Should Be visible


Login com senha inválida
    Open Login Page

    Login With          papito@parodify.com     abc123

    Alert Should Be     Opps! Dados de acesso incorretos!


Login com e-mail inválido
    Open Login Page

    Login With          404@parodify.com    pwd123

    Alert Should Be     Opps! Dados de acesso incorretos!


Login com e-mail não informado
    Open Login Page

    Login With          ${EMPTY}    pwd123

    Alert Should Be     Opps! Dados de acesso incorretos!


Login com senha não informada
    Open Login Page

    Login With          papito@parodify.com      ${EMPTY}

    Alert Should Be     Opps! Dados de acesso incorretos!
