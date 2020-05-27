*** Settings ***

Resource  C:/Users/mjasuja/Documents/propine-test/Resources/PO/Landing.robot
Resource  C:/Users/mjasuja/Documents/propine-test/Resources/PO/Date.robot
Resource  C:/Users/mjasuja/Documents/propine-test/Resources/PO/Result.robot

*** Keywords ***

Access the homepage
    Landing.Load
    Landing.Verify

Verify Date Label text value
    Date.Verify Date
    Date.Access Date

Submit Date
    Date.Press Submit

Access Results Text
    Result.Access Results