*** Settings ***
Resource    ../../resources/page_objects/calculator.robot

*** Keywords ***
Open Simple Calculator
    New Browser    ${BROWSER}
    New Page    ${BASE_URL}

Input a valid value in textfield one
    Wait For Elements State    ${textfield_one}
    Fill Text    ${textfield_one}    100

Input a valid value in textfield two
    Wait For Elements State    ${textfield_two}
    Fill Text    ${textfield_two}    50

Click Calculate button
    Wait For Elements State    ${calculate_button}
    Click    ${calculate_button}

Click Plus dropdown
    Wait For Elements State    ${select_function}
    Click    ${select_function}
    Click    ${plus_dropdown}

Click Times dropdown
    Wait For Elements State    ${select_function}
    Click    ${select_function}
    Click    ${times_dropdown}

Click Minus dropdown
    Wait For Elements State    ${select_function}
    Click    ${select_function}
    Click    ${minus_dropdown}

Click Divide dropdown
    Wait For Elements State    ${select_function}
    Click    ${select_function}
    Click    ${divide_dropdown}

Input an invalid value in textfield one
    Wait For Elements State    ${textfield_one}
    Fill Text    ${textfield_one}    abc_123

Input an invalid value in textfield two
    Wait For Elements State    ${textfield_one}
    Fill Text    ${textfield_one}    kyc_1