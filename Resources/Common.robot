*** Settings ***

Library  SeleniumLibrary

*** Keywords ***

Begin Web Test
    Open Browser  about:blank  ${Browser}
    Maximize Browser Window

End Web Test
    Run Keyword If Test Failed  Set Screenshot Directory  C:/Users/mjasuja/Documents/propine-test/Results/Screenshots
    Run Keyword If Test Failed  Capture page screenshot  ${TEST NAME}.png
    sleep  1
    Close Browser