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

TC006 - Ověření rozbalení a přítomnosti podmenu Život ve městě
  [Tags]  TS002  TC006  FrontEnd
  Open and Verify Dropdown Menu  ${Button_Menu_ZivotVeMeste_XPath}  ${Button_Menu_Kultura_XPath}  ${URL_Menu_Kultura}  ${Heading_Kultura_XPath}
  Return to MainPage
  Open and Verify Dropdown Menu  ${Button_Menu_ZivotVeMeste_XPath}  ${Button_Menu_Sport_XPath}  ${URL_Menu_Sport}  ${Heading_Sport_XPath}
  Return to MainPage
  Open and Verify Dropdown Menu  ${Button_Menu_ZivotVeMeste_XPath}  ${Button_Menu_BzeneckyZpravodaj_XPath}  ${URL_Menu_BzeneckyZpravodaj}  ${Heading_BzeneckyZpravodaj_XPath}
  Return to MainPage

Post-conditions - Zavři prohlížeč
  Close Browser
