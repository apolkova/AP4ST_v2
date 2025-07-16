*** Settings ***
Library  SeleniumLibrary  run_on_failure=Nothing
Resource  objectRepository/Browsers.robot
Resource  objectRepository/URLs.robot
Resource  objectRepository/Buttons.robot
Resource  objectRepository/Headings.robot
Resource  objectRepository/Keywords.robot

*** Test Cases ***
Pre-conditions - Otevři hlavní stránku města Bzenec
  Open and Verify URL  ${URL_Bzenec_HomePage}  ${Heading_HomePage_MainTitle_XPath}  ${Logo_MestoBzenec}

TC007 - Ověření rozbalení a přítomnosti podmenu Turismu
  [Tags]  TS002  TC007  FrontEnd
  Open and Verify Dropdown Menu  ${Button_Menu_Turismus_XPath}  ${Button_Menu_ZazijteBzenec_XPath}  ${URL_Menu_ZazijteBzenec}  ${Heading_ZazijteBzenec_XPath}
  Return to MainPage
  Open and Verify Dropdown Menu  ${Button_Menu_Turismus_XPath}  ${Button_Menu_InformacniCentrum_XPath}  ${URL_Menu_InformacniCentrum}  ${Heading_InformacniCentrum_XPath}
  Return to MainPage
  Open and Verify Dropdown Menu  ${Button_Menu_Turismus_XPath}  ${Button_Menu_TipyNavVylety_XPath}  ${URL_Menu_TipyNaVylety}  ${Heading_TipyNaVylety_XPath}
  Return to MainPage

Post-conditions - Zavři prohlížeč
  Close Browser
