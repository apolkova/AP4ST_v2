*** Settings ***
Library  SeleniumLibrary  run_on_failure=Nothing
Resource  objectRepository/URLs.robot
Resource  objectRepository/Buttons.robot
Resource  objectRepository/Headings.robot
Resource  objectRepository/Keywords.robot

*** Test Cases ***
Pre-conditions - Otevři hlavní stránku města Bzenec
  Open and Verify URL  ${URL_Bzenec_HomePage}  ${Heading_HomePage_MainTitle_XPath}  ${Logo_MestoBzenec}

TC007-3 - Ověření načtení stránky Tipy na Vylet a jejího nadpisu
  [Tags]  TS002  TC007-3  FrontEnd
  Open and Verify Dropdown Menu  ${Button_Menu_Turismus_XPath}  ${Button_Menu_TipyNavVylety_XPath}  ${URL_Menu_TipyNaVylety}  ${Heading_TipyNaVylety_XPath}

Post-conditions - Zavři prohlížeč
  Close Browser