***Settings***
Documentation           Ações da página de login

***Keywords***

Open Login Page

    New Browser               chromium    true
    New Page                  http://parodify.herokuapp.com/users/sign_in
    # Open Browser                http://parodify.herokuapp.com/users/sign_in     chromium
    Wait For Elements State     id=user_email   visible     20

Login With
    [Arguments]     ${email_arg}                ${pass_arg}

    Fill Text       id=user_email               ${email_arg}
    Fill Text       css=#user_password          ${pass_arg}
    Click           css=input[value="Log in"]


Alert Should Be
    [Arguments]     ${expected_arg}

    Get Text        .is-danger .message-body    ==  ${expected_arg}