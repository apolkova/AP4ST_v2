*** Settings ***
Library  SeleniumLibrary  run_on_failure=Nothing
Resource  objectRepository/URLs.robot
Resource  objectRepository/Buttons.robot
Resource  objectRepository/Headings.robot
Resource  objectRepository/Keywords.robot

*** Test Cases ***
Pre-conditions - Otevři hlavní stránku města Bzenec
  Open and Verify URL  ${URL_Bzenec_HomePage}  ${Heading_HomePage_MainTitle_XPath}  ${Logo_MestoBzenec}

TC006-2 - Ověření načtení stránky Sport a jejího nadpisu
  [Tags]  TS002  TC006-2  FrontEnd
  Open and Verify Dropdown Menu  ${Button_Menu_ZivotVeMeste_XPath}  ${Button_Menu_Sport_XPath}  ${URL_Menu_Sport}  ${Heading_Sport_XPath}

Post-conditions - Zavři prohlížeč
  Close Browser