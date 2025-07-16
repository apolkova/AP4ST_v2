*** Settings ***
Library  SeleniumLibrary  run_on_failure=Nothing
Library  String
Library  OperatingSystem
Resource  objectRepository/URLs.robot
Resource  objectRepository/Buttons.robot
Resource  objectRepository/Headings.robot
Resource  objectRepository/Keywords.robot
Resource  objectRepository/Values.robot
Resource  objectRepository/Inputs.robot

*** Test Cases ***
Pre-conditions - Otevři stránku Úřední deska
  Open Browser  ${URL_Menu_UredniDeska}  ${Browser_Chrome}  
  
TC014-2 - Ověření zobrazení PDF přílohy
    [Tags]  TS004  TC014-2  FrontEnd
    Stahnout a otevrit PDF  ${URL_UD_eg-d}  ${Hodnota_eg-d}
    Stahnout a otevrit PDF  ${URL_UD_XeroxScan}  ${Hodnota_XeroxScan}
    Stahnout a otevrit PDF  ${URL_UD_Verejna_Vyhlaska-fu}  ${Hodnota_Verejna_Vyhlaska-fu}

Post-conditions - Zavři prohlížeč
  Close Browser
