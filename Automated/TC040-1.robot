*** Settings ***
Library  SeleniumLibrary  run_on_failure=Nothing
Resource  objectRepository/URLs.robot
Resource  objectRepository/Browsers.robot
Resource  objectRepository/Inputs.robot
Resource  objectRepository/Headings.robot
Resource  objectRepository/Buttons.robot
Resource  objectRepository/Values.robot
Resource  objectRepository/Logo.robot

*** Test Cases ***
Pre-conditions - Otevři hlavní stránku Bzence
    Open Browser  ${URL_Bzenec_HomePage}  ${Browser_Chrome}
    Wait Until Location Is  ${URL_Bzenec_HomePage}
    Wait Until Element Is Visible  ${Heading_OdberNovinek}
    Scroll Element Into View  ${Heading_OdberNovinek}

TC040-1 - Přihlášení k odběru s platným e-mailem
    [Tags]  TS015  TC040-1  FrontEnd
    Set Selenium Speed  ${Hodnota_Selenium_Speed_0.5s}
    Wait Until Element Is Visible  ${Heading_OdberNovinek}
    Element Should Be Visible  ${Input_OdberNovinek}
    Element Should Be Visible  ${Buton_OdberNovinek}
    Input Text  ${Input_OdberNovinek}  ${Hodnota_OdberNovinek_platny}
    Mouse Over  ${Buton_OdberNovinek}
    Wait Until Element Is Enabled  ${Buton_OdberNovinek}
    Click Element  ${Buton_OdberNovinek}
    
Post-conditions - Zavři prohlížeč
    Close Browser
