*** Settings ***
Library  SeleniumLibrary  run_on_failure=Nothing
Resource  objectRepository/URLs.robot
Resource  objectRepository/Buttons.robot
Resource  objectRepository/Values.robot
Resource  objectRepository/Logo.robot
Resource  objectRepository/Headings.robot
Resource  objectRepository/Keywords.robot

*** Test Cases ***
Pre-conditions - Otevři hlavní stránku města Bzenec
  Open and Verify URL  ${URL_Bzenec_HomePage}  ${Heading_HomePage_MainTitle_XPath}  ${Logo_MestoBzenec}

TC003-a - Ověření zobrazení mobilního menu při zmenšení okna
  [Tags]  TS001  TC003-a  FrontEnd
  Set Window Size  @{WindowSize_Mobile_iPhoneXR}
  Wait Until Location Is  ${URL_Bzenec_HomePage}
  Wait Until Element Is Visible  ${Button_MobileMenu_Hamburger_XPath}
  Page Should Contain Element  ${Button_MobileMenu_Hamburger_XPath}  timeout=5s

TC003-b Ověření zobrazení Desktopov0ho menu při zmaximalizovaneho okna
  [Tags]  TS001  TC003-b  FrontEnd
  Maximize Browser Window
  Wait Until Location Is  ${URL_Bzenec_HomePage}
  Wait Until Element Is Visible  ${Logo_MestoBzenec}
  Page Should Contain Element  ${Button_Menu_ProObcany_XPath}
  Page Should Contain Element  ${Button_Menu_Kontakt_XPath}  timeout=5s

TC003-c Ověření zobrazení tabletoveho menu
  [Tags]  TS001  TC003-c  FrontEnd
  Set Window Size  @{WindowSize_Tablet_iPadAir}
  Wait Until Location Is  ${URL_Bzenec_HomePage}
  Wait Until Element Is Visible  ${Button_MobileMenu_Hamburger_XPath}
  Page Should Contain Element  ${Button_MobileMenu_Hamburger_XPath}  timeout=5s

Post-conditions - Zavři prohlížeč
  Close Browser
