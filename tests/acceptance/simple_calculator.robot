*** Settings ***
Library    Browser
Resource    ../../environment_variables.robot
Resource    ../../resources/page_actions/calculator.robot
Resource    ../../resources/page_objects/calculator.robot
Resource    ../../resources/assertions/calculator.robot
Suite Teardown    Close Browser
Test Teardown    Take Screenshot


*** Test Cases ***
# POSITIVE SCENARIOS
Open Simple Calculator website
    [Documentation]  Go to Simple Calculator page
    calculator.Open Simple Calculator
    calculator.Validate Simple Calculator page
    calculator.Validate Page Navigations

Add Two Numbers
    [Documentation]  User Adds two valid numbers
    calculator.Open Simple Calculator
    calculator.Input a valid value in textfield one
    calculator.Input a valid value in textfield two
    calculator.Click Calculate button
    calculator.Validate Result    150

# NEGATIVE SCENARIOS
Calculate with empty fields
    [Documentation]  User Calculate with empty values
    calculator.Open Simple Calculator
    calculator.Click Calculate button
    calculator.Validate Result    ERR

Calculate with missing textfield one
    [Documentation]  User Calculate with missing value in the textfield 1
    calculator.Open Simple Calculator
    calculator.Input a valid value in textfield two
    calculator.Click Calculate button
    calculator.Validate Result    ERR

Calculate with missing textfield two
    [Documentation]  User Calculate with missing value in the textfield 2
    calculator.Open Simple Calculator
    calculator.Input a valid value in textfield one
    calculator.Click Calculate button
    calculator.Validate Result    ERR

Calculate with invalid value textfield one
    [Documentation]  User Calculate with invalid value in the textfield 1
    calculator.Open Simple Calculator
    calculator.Input an invalid value in textfield one
    calculator.Input a valid value in textfield two
    calculator.Click Calculate button
    calculator.Validate Result    ERR

Calculate with invalid value textfield two
    [Documentation]  User Calculate with invalid value in the textfield 2
    calculator.Open Simple Calculator
    calculator.Input a valid value in textfield one
    calculator.Input an invalid value in textfield two
    calculator.Click Calculate button
    calculator.Validate Result    ERR

Calculate with invalid value textfield one and two
    [Documentation]  User Calculate with invalid value in the textfield 1 and 2
    calculator.Open Simple Calculator
    calculator.Input an invalid value in textfield one
    calculator.Input an invalid value in textfield two
    calculator.Click Calculate button
    calculator.Validate Result    ERR
