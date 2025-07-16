*** Settings ***
Library  SeleniumLibrary  run_on_failure=Nothing
Resource  objectRepository/URLs.robot
Resource  objectRepository/Buttons.robot
Resource  objectRepository/Headings.robot
Resource  objectRepository/Keywords.robot

*** Test Cases ***
Pre-conditions - Otevři hlavní stránku města Bzenec
  Open and Verify URL  ${URL_Bzenec_HomePage}  ${Heading_HomePage_MainTitle_XPath}  ${Logo_MestoBzenec}

TC006-3 - Ověření načtení stránky BzeneckyZpravodaj a jejího nadpisu
  [Tags]  TS002  TC006-3  FrontEnd
  Open and Verify Dropdown Menu  ${Button_Menu_ZivotVeMeste_XPath}  ${Button_Menu_BzeneckyZpravodaj_XPath}  ${URL_Menu_BzeneckyZpravodaj}  ${Heading_BzeneckyZpravodaj_XPath}

Post-conditions - Zavři prohlížeč
  Close Browser