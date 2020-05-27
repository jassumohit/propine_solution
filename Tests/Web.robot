*** Settings ***
Documentation  Basic info for Test suite

Resource  C:/Users/mjasuja/Documents/propine-test/Resources/WebApp.robot
Resource  C:/Users/mjasuja/Documents/propine-test/Resources/Common.robot

Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

*** Variables ***
${Browser} =  firefox

${Start_Url} =  https://vast-dawn-73245.herokuapp.com/

${Result_Text_Element} =  xpath=/html/body/div[2]/div/div[2]/div

${Date_Text_Element} =  xpath=/html/body/div[2]/div/div[1]/form/div/input

@{Positive_Date_format} =  18/10/2009  12/21/1998  12/21/98  21/12/98  1998/12/21
...  1998/21/12  98/12/21  98/21/12  14/5/2009  5/14/2009  5/14/09  14/5/09  2009/5/14  14052009  05142009
...  20090514  February 17, 2009  Feb172009  17Feb2009  2009Feb17  17 February, 2009  2009, February 17  Feb 17, 2009
...  17 Feb, 2009  2009, Feb 17  Feb 17, 09  17 Feb, 09  32, Feb 17

@{Negative_Date_format} =  0  10  25  45  99  877  0000  9999  05 15  abcd

*** Test Cases ***

User can access the web application
    [Documentation]  Basic test case to access web application
    [Tags]  Base
    WebApp.Access the homepage

Verify the default value inside text field with 'Date' label
    [Documentation]  Basic test to verify default text value of Date
    [Tags]  Base
    WebApp.Access the homepage
    WebApp.Verify Date Label text value

Verify Results text when date format is DD/MM/YYYY
    [Documentation]  Test to verify results text when date format is DD/MM/YYYY
    [Tags]  Positive
    WebApp.Access the homepage
    Input Text  ${Date_Text_Element}  ${Positive_Date_format}[0]
    WebApp.Submit Date
    Element Text Should Be  ${Result_Text_Element}  Mon Dec 21 1998 00:00:00 GMT+0000
    Log  Successfully verified result text when input is given in specified format DD/MM/YYYY

Verify Results text when date format is MM/DD/YYYY
    [Documentation]  Test to verify results text when date format is MM/DD/YYYY
    [Tags]  Positive
    WebApp.Access the homepage
    Input Text  ${Date_Text_Element}  ${Positive_Date_format}[1]
    WebApp.Submit Date
    Element Text Should Be  ${Result_Text_Element}  Mon Dec 21 1998 00:00:00 GMT+0000
    Log  Successfully verified result text when input is given in specified format MM/DD/YYYY

Verify Results text when date format is MM/DD/YY
    [Documentation]  Test to verify results text when date format is MM/DD/YY
    [Tags]  Positive
    WebApp.Access the homepage
    Input Text  ${Date_Text_Element}  ${Positive_Date_format}[2]
    WebApp.Submit Date
    Element Text Should Be  ${Result_Text_Element}  Mon Dec 21 1998 00:00:00 GMT+0000
    Log  Successfully verified result text when input is given in specified format MM/DD/YY

Verify Results text when date format is DD/MM/YY
    [Documentation]  Test to verify results text when date format is DD/MM/YY
    [Tags]  Positive
    WebApp.Access the homepage
    Input Text  ${Date_Text_Element}  ${Positive_Date_format}[3]
    WebApp.Submit Date
    Element Text Should Be  ${Result_Text_Element}  Mon Dec 21 1998 00:00:00 GMT+0000
    Log  Successfully verified result text when input is given in specified format DD/MM/YY

Verify Results text when date format is YYYY/MM/DD
    [Documentation]  Test to verify results text when date format is YYYY/MM/DD
    [Tags]  Positive
    WebApp.Access the homepage
    Input Text  ${Date_Text_Element}  ${Positive_Date_format}[4]
    WebApp.Submit Date
    Element Text Should Be  ${Result_Text_Element}  Mon Dec 21 1998 00:00:00 GMT+0000
    Log  Successfully verified result text when input is given in specified format YYYY/MM/DD

Verify Results text when date format is YYYY/DD/MM
    [Documentation]  Test to verify results text when date format is YYYY/DD/MM
    [Tags]  Positive
    WebApp.Access the homepage
    Input Text  ${Date_Text_Element}  ${Positive_Date_format}[5]
    WebApp.Submit Date
    Element Text Should Be  ${Result_Text_Element}  Mon Dec 21 1998 00:00:00 GMT+0000
    Log  Successfully verified result text when input is given in specified format YYYY/DD/MM

Verify Results text when date format is YY/MM/DD
    [Documentation]  Test to verify results text when date format is YY/MM/DD
    [Tags]  Positive
    WebApp.Access the homepage
    Input Text  ${Date_Text_Element}  ${Positive_Date_format}[6]
    WebApp.Submit Date
    Element Text Should Be  ${Result_Text_Element}  Mon Dec 21 1998 00:00:00 GMT+0000
    Log  Successfully verified result text when input is given in specified format YY/MM/DD

Verify Results text when date format is YY/DD/MM
    [Documentation]  Test to verify results text when date format is YY/DD/MM
    [Tags]  Positive
    WebApp.Access the homepage
    Input Text  ${Date_Text_Element}  ${Positive_Date_format}[7]
    WebApp.Submit Date
    Element Text Should Be  ${Result_Text_Element}  Mon Dec 21 1998 00:00:00 GMT+0000
    Log  Successfully verified result text when input is given in specified format YY/DD/MM

Verify Results text when date format is DD/M/YYYY
    [Documentation]  Test to verify results text when date format is DD/M/YYYY
    [Tags]  Positive
    WebApp.Access the homepage
    Input Text  ${Date_Text_Element}  ${Positive_Date_format}[8]
    WebApp.Submit Date
    Element Text Should Be  ${Result_Text_Element}  Thu May 14 2009 00:00:00 GMT+0000
    Log  Successfully verified result text when input is given in specified format DD/M/YYYY

Verify Results text when date format is M/DD/YYYY
    [Documentation]  Test to verify results text when date format is M/DD/YYYY
    [Tags]  Positive
    WebApp.Access the homepage
    Input Text  ${Date_Text_Element}  ${Positive_Date_format}[9]
    WebApp.Submit Date
    Element Text Should Be  ${Result_Text_Element}  Thu May 14 2009 00:00:00 GMT+0000
    Log  Successfully verified result text when input is given in specified format M/DD/YYYY

Verify Results text when date format is M/DD/YY
    [Documentation]  Test to verify results text when date format is M/DD/YY
    [Tags]  Positive
    WebApp.Access the homepage
    Input Text  ${Date_Text_Element}  ${Positive_Date_format}[10]
    WebApp.Submit Date
    Element Text Should Be  ${Result_Text_Element}  Thu May 14 2009 00:00:00 GMT+0000
    Log  Successfully verified result text when input is given in specified format M/DD/YY

Verify Results text when date format is DD/M/YY
    [Documentation]  Test to verify results text when date format is DD/M/YY
    [Tags]  Positive
    WebApp.Access the homepage
    Input Text  ${Date_Text_Element}  ${Positive_Date_format}[11]
    WebApp.Submit Date
    Element Text Should Be  ${Result_Text_Element}  Thu May 14 2009 00:00:00 GMT+0000
    Log  Successfully verified result text when input is given in specified format DD/M/YY

Verify Results text when date format is YYYY/M/DD
    [Documentation]  Test to verify results text when date format is YYYY/M/DD
    [Tags]  Positive
    WebApp.Access the homepage
    Input Text  ${Date_Text_Element}  ${Positive_Date_format}[12]
    WebApp.Submit Date
    Element Text Should Be  ${Result_Text_Element}  Thu May 14 2009 00:00:00 GMT+0000
    Log  Successfully verified result text when input is given in specified format YYYY/M/DD

Verify Results text when date format is DDMMYYYY
    [Documentation]  Test to verify results text when date format is DDMMYYYY
    [Tags]  Positive
    WebApp.Access the homepage
    Input Text  ${Date_Text_Element}  ${Positive_Date_format}[13]
    WebApp.Submit Date
    Element Text Should Be  ${Result_Text_Element}  Thu May 14 2009 00:00:00 GMT+0000
    Log  Successfully verified result text when input is given in specified format DDMMYYYY

Verify Results text when date format is MMDDYYYY
    [Documentation]  Test to verify results text when date format is MMDDYYYY
    [Tags]  Positive
    WebApp.Access the homepage
    Input Text  ${Date_Text_Element}  ${Positive_Date_format}[14]
    WebApp.Submit Date
    Element Text Should Be  ${Result_Text_Element}  Thu May 14 2009 00:00:00 GMT+0000
    Log  Successfully verified result text when input is given in specified format MMDDYYYY

Verify Results text when date format is YYYYMMDD
    [Documentation]  Test to verify results text when date format is YYYYMMDD
    [Tags]  Positive
    WebApp.Access the homepage
    Input Text  ${Date_Text_Element}  ${Positive_Date_format}[15]
    WebApp.Submit Date
    Element Text Should Be  ${Result_Text_Element}  Thu May 14 2009 00:00:00 GMT+0000
    Log  Successfully verified result text when input is given in specified format YYYYMMDD

Verify Results text when date format is Month DD, YYYY
    [Documentation]  Test to verify results text when date format is Month DD, YYYY
    [Tags]  Positive
    WebApp.Access the homepage
    Input Text  ${Date_Text_Element}  ${Positive_Date_format}[16]
    WebApp.Submit Date
    Element Text Should Be  ${Result_Text_Element}  Tue Feb 17 2009 00:00:00 GMT+0000
    Log  Successfully verified result text when input is given in specified format Month DD, YYYY

Verify Results text when date format is Month abbreviation-Day-Year
    [Documentation]  Test to verify results text when date format is Month abbreviation-Day-Year
    [Tags]  Positive
    WebApp.Access the homepage
    Input Text  ${Date_Text_Element}  ${Positive_Date_format}[17]
    WebApp.Submit Date
    Element Text Should Be  ${Result_Text_Element}  Tue Feb 17 2009 00:00:00 GMT+0000
    Log  Successfully verified result text when input is given in specified format Month abbreviation-Day-Year

Verify Results text when date format is Day-Month abbreviation-Year
    [Documentation]  Test to verify results text when date format is Day-Month abbreviation-Year
    [Tags]  Positive
    WebApp.Access the homepage
    Input Text  ${Date_Text_Element}  ${Positive_Date_format}[18]
    WebApp.Submit Date
    Element Text Should Be  ${Result_Text_Element}  Tue Feb 17 2009 00:00:00 GMT+0000
    Log  Successfully verified result text when input is given in specified format Day-Month abbreviation-Year

Verify Results text when date format is Year-Month abbreviation-Day
    [Documentation]  Test to verify results text when date format is Year-Month abbreviation-Day
    [Tags]  Positive
    WebApp.Access the homepage
    Input Text  ${Date_Text_Element}  ${Positive_Date_format}[19]
    WebApp.Submit Date
    Element Text Should Be  ${Result_Text_Element}  Tue Feb 17 2009 00:00:00 GMT+0000
    Log  Successfully verified result text when input is given in specified format Year-Month abbreviation-Day

Verify Results text when date format is Day-Month name-Year
    [Documentation]  Test to verify results text when date format is Day-Month name-Year
    [Tags]  Positive
    WebApp.Access the homepage
    Input Text  ${Date_Text_Element}  ${Positive_Date_format}[20]
    WebApp.Submit Date
    Element Text Should Be  ${Result_Text_Element}  Tue Feb 17 2009 00:00:00 GMT+0000
    Log  Successfully verified result text when input is given in specified format Day-Month name-Year

Verify Results text when date format is Year-Month name-Day
    [Documentation]  Test to verify results text when date format is Year-Month name-Day
    [Tags]  Positive
    WebApp.Access the homepage
    Input Text  ${Date_Text_Element}  ${Positive_Date_format}[21]
    WebApp.Submit Date
    Element Text Should Be  ${Result_Text_Element}  Tue Feb 17 2009 00:00:00 GMT+0000
    Log  Successfully verified result text when input is given in specified format Year-Month name-Day

Verify Results text when date format is Month abbreviation Day, Year
    [Documentation]  Test to verify results text when date format is Month abbreviation Day, Year
    [Tags]  Positive
    WebApp.Access the homepage
    Input Text  ${Date_Text_Element}  ${Positive_Date_format}[22]
    WebApp.Submit Date
    Element Text Should Be  ${Result_Text_Element}  Tue Feb 17 2009 00:00:00 GMT+0000
    Log  Successfully verified result text when input is given in specified format Month abbreviation Day, Year

Verify Results text when date format is Day Month abbreviation, Year
    [Documentation]  Test to verify results text when date format is Day Month abbreviation, Year
    [Tags]  Positive
    WebApp.Access the homepage
    Input Text  ${Date_Text_Element}  ${Positive_Date_format}[23]
    WebApp.Submit Date
    Element Text Should Be  ${Result_Text_Element}  Tue Feb 17 2009 00:00:00 GMT+0000
    Log  Successfully verified result text when input is given in specified format Day Month abbreviation, Year

Verify Results text when date format is Year, Month abbreviation Day
    [Documentation]  Test to verify results text when date format is Year, Month abbreviation Day
    [Tags]  Positive
    WebApp.Access the homepage
    Input Text  ${Date_Text_Element}  ${Positive_Date_format}[24]
    WebApp.Submit Date
    Element Text Should Be  ${Result_Text_Element}  Tue Feb 17 2009 00:00:00 GMT+0000
    Log  Successfully verified result text when input is given in specified format Year, Month abbreviation Day

Verify Results text when date format is Month abbreviation Day, Year(2 digit)
    [Documentation]  Test to verify results text when date format is Month abbreviation Day, Year(2 digit)
    [Tags]  Positive
    WebApp.Access the homepage
    Input Text  ${Date_Text_Element}  ${Positive_Date_format}[25]
    WebApp.Submit Date
    Element Text Should Be  ${Result_Text_Element}  Tue Feb 17 2009 00:00:00 GMT+0000
    Log  Successfully verified result text when input is given in specified format Month abbreviation Day, Year(2 digit)

Verify Results text when date format is Day Month abbreviation, Year(2 digit)
    [Documentation]  Test to verify results text when date format is Day Month abbreviation, Year(2 digit)
    [Tags]  Positive
    WebApp.Access the homepage
    Input Text  ${Date_Text_Element}  ${Positive_Date_format}[26]
    WebApp.Submit Date
    Element Text Should Be  ${Result_Text_Element}  Tue Feb 17 2009 00:00:00 GMT+0000
    Log  Successfully verified result text when input is given in specified format Day Month abbreviation, Year(2 digit)

Verify Results text when date format is Year(2 digit), Month abbreviation Day
    [Documentation]  Test to verify results text when date format is Year(2 digit), Month abbreviation Day
    [Tags]  Positive
    WebApp.Access the homepage
    Input Text  ${Date_Text_Element}  ${Positive_Date_format}[27]
    WebApp.Submit Date
    Element Text Should Be  ${Result_Text_Element}  Tue Feb 17 2032 00:00:00 GMT+0000
    Log  Successfully verified result text when input is given in specified format Year(2 digit), Month abbreviation Day

Verify Results text when no input is given
    [Documentation]  Test to verify results text with no input
    [Tags]  Negative
    WebApp.Access the homepage
    WebApp.Submit Date
    WebApp.Access Results Text

Verify when date text is 0, result text interpreted with default day month and year
    [Documentation]  Test to verify when date text is 0, result text interpreted with default day month and year
    [Tags]  Negative
    WebApp.Access the homepage
    Input Text  ${Date_Text_Element}  ${Negative_Date_format}[0]
    WebApp.Submit Date
    Element Text Should Be  ${Result_Text_Element}  Invalid date
    Log  Successfully verified result text interpreted with default day month and year

Verify when date text is 1-12, result text interpreted as month with default day and year
    [Documentation]  Test to verify when date text is 1-12, result text interpreted as month with default day and year
    [Tags]  Negative
    WebApp.Access the homepage
    Input Text  ${Date_Text_Element}  ${Negative_Date_format}[1]
    WebApp.Submit Date
    Element Text Should Be  ${Result_Text_Element}  Invalid date
    Log  Successfully verified result text interpreted as month with default day and year

Verify when date text is 13-31, result text interpreted as invalid date
    [Documentation]  Test to verify when date text is 13-31, result text interpreted as invalid text
    [Tags]  Negative
    WebApp.Access the homepage
    Input Text  ${Date_Text_Element}  ${Negative_Date_format}[2]
    WebApp.Submit Date
    Element Text Should Be  ${Result_Text_Element}  Invalid date
    Log  Successfully verified result text interpreted as invalid date

Verify when date text is 32-49, result text interpreted as 2K year with default date and month
    [Documentation]  Test to verify when date text is 32-49, result text interpreted as 2K year with default date and month
    [Tags]  Negative
    WebApp.Access the homepage
    Input Text  ${Date_Text_Element}  ${Negative_Date_format}[3]
    WebApp.Submit Date
    Element Text Should Be  ${Result_Text_Element}  Invalid date
    Log  Successfully verified result text interpreted as 2K year with default date and month

Verify when date text is 50-99, result text interpreted as 1900 year with default date and month
    [Documentation]  Test to verify when date text is 50-99, result text interpreted as 1900 year with default date and month
    [Tags]  Negative
    WebApp.Access the homepage
    Input Text  ${Date_Text_Element}  ${Negative_Date_format}[4]
    WebApp.Submit Date
    Element Text Should Be  ${Result_Text_Element}  Invalid date
    Log  Successfully verified result text interpreted as 1900 year with default date and month

Verify when date text is 100-999, result text interpreted as hundreds year value with default date and month
    [Documentation]  Test to verify when date text is 100-999, result text interpreted as hundreds year value with default date and month
    [Tags]  Negative
    WebApp.Access the homepage
    Input Text  ${Date_Text_Element}  ${Negative_Date_format}[5]
    WebApp.Submit Date
    Element Text Should Be  ${Result_Text_Element}  Invalid date
    Log  Successfully verified result text interpreted as hundreds year value with default date and month

Verify when date text is 0000, result text should be Invalid date
    [Documentation]  Test to verify when date text is 0000, result text should be Invalid date
    [Tags]  Negative
    WebApp.Access the homepage
    Input Text  ${Date_Text_Element}  ${Negative_Date_format}[6]
    WebApp.Submit Date
    Element Text Should Be  ${Result_Text_Element}  Invalid date
    Log  Successfully verified result text should be Invalid date

Verify when date text is 1000-9999, result text interpreted as year value with default date and month
    [Documentation]  Test to verify when date text is 1000-9999, result text interpreted as year value with default date and month
    [Tags]  Negative
    WebApp.Access the homepage
    Input Text  ${Date_Text_Element}  ${Negative_Date_format}[7]
    WebApp.Submit Date
    Element Text Should Be  ${Result_Text_Element}  Invalid date
    Log  Successfully verified result text interpreted as year value with default date and month

Verify Results text when date format is MM DD
    [Documentation]  Test to verify results text when date format is MM DD
    [Tags]  Positive
    WebApp.Access the homepage
    Input Text  ${Date_Text_Element}  ${Negative_Date_format}[8]
    WebApp.Submit Date
    Element Text Should Be  ${Result_Text_Element}  Invalid date
    Log  Successfully verified result text as Month, Day value and default year value when input is given in specified format MM DD

Verify Results text is invalid when date text is letters
    [Documentation]  Test to verify results text when date text is letters
    [Tags]  Negative
    WebApp.Access the homepage
    Input Text  ${Date_Text_Element}  ${Negative_Date_format}[9]
    WebApp.Submit Date
    Element Text Should Be  ${Result_Text_Element}  Invalid date
    Log  Successfully verified result text as Invalid date when input text is letters