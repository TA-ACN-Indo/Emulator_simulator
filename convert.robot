*** Settings ***
Library           String
Library           Collections
Library           OperatingSystem
Library           ExcelLibrary
Resource          xl_keywords.txt

*** Test Cases ***
Test_excel
    Log    ${CURDIR}
    ${sheets}    Set Variable    Test_Scenario
    Open Excel    CN_Demo_Android_Emulator_v6.xls    #${excel_path}
    Read_RF_Keywords_Data    ${sheets}
