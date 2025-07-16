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

TC008 - Ověření rozbalení a přítomnosti podmenu Mesto a Urad
  [Tags]  TS002  TC008  FrontEnd
  Open and Verify Dropdown Menu  ${Button_Menu_Urad_XPath}  ${Button_Menu_Mesto_XPath}  ${URL_Menu_Mesto}  ${Heading_Mesto_XPath}
  Return to MainPage
  Open and Verify Dropdown Menu  ${Button_Menu_Urad_XPath}  ${Button_Menu_MestskyUrad_XPath}  ${URL_Menu_MestskyUrad}  ${Heading_MestskyUrad_XPath}
  Return to MainPage
  Open and Verify Dropdown Menu  ${Button_Menu_Urad_XPath}  ${Button_Menu_UredniDeska_XPath}  ${URL_Menu_UredniDeska}  ${Heading_UredniDeska_XPath}
  Return to MainPage
  Open and Verify Dropdown Menu  ${Button_Menu_Urad_XPath}  ${Button_Menu_Kontakty_XPath}  ${URL_Menu_Kontakty}  ${Heading_Kontakty_XPath}
  Return to MainPage

Post-conditions - Zavři prohlížeč
  Close Browser
