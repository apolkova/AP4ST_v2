*** Settings ***
Library  SeleniumLibrary  run_on_failure=Nothing
Library    XML
Resource  objectRepository/URLs.robot
Resource  objectRepository/Browsers.robot
Resource  objectRepository/Headings.robot
Resource  objectRepository/Video.robot
Resource  objectRepository/Values.robot
Resource  objectRepository/Logo.robot
Resource  objectRepository/Buttons.robot

*** Test Cases ***
Pre-conditions - Otevři stránku Videoreportáže
    Open Browser  ${URL_VideoReportaze}  ${Browser_Chrome}
    Wait Until Location Is  ${URL_VideoReportaze}
    Wait Until Element Is Visible  ${Heading_Videoreportaze}
    Click Element  ${Button_Videoreportaz_1} 

TC029 - Ověření přehrávání videa
    [Tags]  TS010  TC029  FrontEnd
    Set Selenium Speed  ${Hodnota_Selenium_Speed_0.5s}
    Wait Until Element Is Visible  ${Video_Kontejner}
    Mouse Over  ${Video_Kontejner}
    Click Element  ${Video_Kontejner}  
    Wait Until Element Is Visible  ${Video_Kontejner}  timeout=${Hodnota_Timeout_5s}

Post-conditions - Zavři prohlížeč
    Close Browser

