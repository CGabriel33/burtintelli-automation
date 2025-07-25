*** Variables ***
# Simple Calculator page
${header}    xpath=//h1[contains(.,'Simple Calculator')]
${nav_index}    xpath=//a[contains(.,'Index')]
${nav_page}    xpath=//a[contains(.,'Page')]
${nav_about}    xpath=//a[contains(.,'About')]
${textfield_one}    xpath=//form//input[@id='number1']
${textfield_two}    xpath=//form//input[@id='number2']
${select_function}    xpath=//form//select[@id='function']
${plus_dropdown}    xpath=//select[@id='function']//option[@value='plus']
${times_dropdown}    xpath=//option[@value='times']
${minus_dropdown}    xpath=//select[@id='function']//option[@value='minus']
${divide_dropdown}    xpath=//select[@id='function']//option[@value='divide']
${calculate_button}    xpath=//input[@id='calculate']
${result}    xpath=//span[@id='answer']