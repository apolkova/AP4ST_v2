*** Settings ***
Library  SeleniumLibrary  run_on_failure=Nothing
Resource  objectRepository/URLs.robot
Resource  objectRepository/Browsers.robot
Resource  objectRepository/Headings.robot
Resource  objectRepository/Inputs.robot
Resource  objectRepository/Buttons.robot
Resource  objectRepository/Values.robot
Resource  objectRepository/Logo.robot
Resource  objectRepository/Keywords.robot
Resource  objectRepository/Notifikace.robot

*** Test Cases ***
Pre-conditions - Otevři hlavní stránku města Bzenec
    Open and Verify URL  ${URL_Bzenec_HomePage}  ${Heading_HomePage_MainTitle_XPath}  ${Logo_MestoBzenec}

TC041 - Ověření potvrzovací hlášky po přihlášení
    [Tags]  TS015  TC041  FrontEnd
    Set Selenium Speed  ${Hodnota_Selenium_Speed_0.5s}
    Wait Until Element Is Visible  ${Heading_OdberNovinek}
    Element Should Be Visible  ${Input_OdberNovinek}
    Element Should Be Visible  ${Buton_OdberNovinek}
    Input Text  ${Input_OdberNovinek}  ${Hodnota_OdberNovinek_platny}
    Mouse Over  ${Buton_OdberNovinek}
    Wait Until Element Is Enabled  ${Buton_OdberNovinek}
    Click Element  ${Buton_OdberNovinek}
    
    Wait Until Location Contains  ${Hodnota_OdberNovinek_URL}  timeout=${Hodnota_Timeout_10s}
    Wait Until Element Is Visible  ${Heading_OdberNovinek_aktivni}  timeout=${Hodnota_Timeout_5s}
    Wait Until Element Is Visible  ${Notifikace_OdberNovinek}  timeout=${Hodnota_Timeout_5s}
    Element Should Contain  ${Notifikace_OdberNovinek}  ${Hodnota_OdberNovinek_Notifikace}


Post-conditions - Zavři prohlížeč
    Close Browser
