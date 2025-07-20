*** Settings ***

*** Keywords ***
Validate Simple Calculator page
    Wait For Elements State    ${header}
    ${text}=    Get Text    ${header}
    ${text}=           Evaluate    "${text}".strip()
    Should Be Equal    ${text}    Simple Calculator

Validate Page Navigations
    Wait For Elements State    ${nav_index}
    Should Contain    ${nav_index}    Index
    Wait For Elements State    ${nav_page}
    Should Contain    ${nav_page}    Page
    Wait For Elements State    ${nav_about}
    Should Contain    ${nav_about}    About

Validate Result
    [Arguments]    ${answer}
    Wait For Elements State    ${result}
    ${text}=    Get Text    ${result}
    ${text}=           Evaluate    "${text}".strip()
    Should Be Equal    ${text}    ${answer}

    