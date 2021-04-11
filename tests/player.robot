***Settings***
Documentation           Testar o player


Resource                ../resources/base.robot

Test Teardown   Take Screenshot
***Test Cases***
Reproduzir parodia Bug da Manha
    Open Login Page
    Login With      papito@parodify.com     pwd123
    Logout Link Should Be visible

    Go To Search Page
    Go To Sertanejo Category
    Open Album From             Marcus e Debug
    Play Song                   Bug de Manhã
    Song Should Be Playing      Bug de Manhã 