*** Settings ***

Library  SeleniumLibrary

*** Keywords ***

Access Results
    Element Text Should Be  ${Result_Text_Element}  No Input
    Log  Successfully verified results text when no input is given