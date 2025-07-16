*** Settings ***
Library  SeleniumLibrary  run_on_failure=Nothing
Resource  objectRepository/URLs.robot
Resource  objectRepository/Browsers.robot
Resource  objectRepository/Inputs.robot
Resource  objectRepository/Headings.robot
Resource  objectRepository/Buttons.robot
Resource  objectRepository/Values.robot
Resource  objectRepository/Logo.robot
Resource  objectRepository/Notifikace.robot

*** Test Cases ***
Pre-conditions - Otevři hlavní stránku Bzence
    Open Browser  ${URL_Bzenec_HomePage}  ${Browser_Chrome}
    Wait Until Location Is  ${URL_Bzenec_HomePage}
    Wait Until Element Is Visible  ${Heading_OdberNovinek}
    Scroll Element Into View  ${Heading_OdberNovinek}

TC040-2 - Přihlášení k odběru s neplatným e-mailem
    [Tags]  TS015  TC040-1  FrontEnd
    Set Selenium Speed  ${Hodnota_Selenium_Speed_0.5s}
    Wait Until Element Is Visible  ${Heading_OdberNovinek}
    Element Should Be Visible  ${Input_OdberNovinek}
    Element Should Be Visible  ${Buton_OdberNovinek}
    Input Text  ${Input_OdberNovinek}  ${Hodnota_OdberNovinek_neplatny1}
    Mouse Over  ${Buton_OdberNovinek}
    Wait Until Element Is Enabled  ${Buton_OdberNovinek}
    Click Element  ${Buton_OdberNovinek}

    Location Should Be  ${URL_Bzenec_HomePage}
    Element Should Not Be Visible  ${Heading_OdberNovinek_aktivni}  timeout=${Hodnota_Timeout_5s}
    Element Should Not Be Visible  ${Notifikace_OdberNovinek}  timeout=${Hodnota_Timeout_5s}

    Input Text  ${Input_OdberNovinek}  ${Hodnota_OdberNovinek_neplatny2}
    Wait Until Element Is Enabled  ${Buton_OdberNovinek}
    Click Element  ${Buton_OdberNovinek}
    
Post-conditions - Zavři prohlížeč
    Close Browser
