*** Settings ***
Library  SeleniumLibrary  run_on_failure=Nothing
Resource  objectRepository/URLs.robot
Resource  objectRepository/Buttons.robot
Resource  objectRepository/Logo.robot
Resource  objectRepository/Keywords.robot

*** Test Cases ***
Pre-conditions - Otevři libovolnou podstránku webu města Bzenec
  Open and Verify URL  ${URL_Menu_DulezitaSdeleni}  ${Heading_DulezitaSdeleni_XPath}  ${Logo_MestoBzenec}

TC002 - Ověření funkčnosti návratu na hlavní stránku přes logo
  [Tags]  TS001  TC002  FrontEnd
  Click Element  ${Logo_MestoBzenec}
  Wait Until Location Is  ${URL_Bzenec_HomePage}
  Located on MainPage

Post-conditions - Zavři prohlížeč
  Close Browser
