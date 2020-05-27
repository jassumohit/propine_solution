*** Settings ***

Library  SeleniumLibrary

*** Keywords ***

Load
    Go To  ${Start_Url}

Verify
    Wait Until Page Contains  Propine Date Parser
    Log  Successfully Accessed Propine Web Application