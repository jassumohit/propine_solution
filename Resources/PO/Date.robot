*** Settings ***

Library  SeleniumLibrary

*** Variables ***
${Submit_Button_Element} =  xpath=/html/body/div[2]/div/div[1]/form/input

*** Keywords ***
Verify Date
    Page Should Contain Element  ${Date_Text_Element}

Access Date
    Element Text Should Be  ${Date_Text_Element}  Enter date in any format
    Log  Successfully verified default value inside text field with 'Date' label

Press Submit
    Click Button  ${Submit_Button_Element}
    Sleep  2