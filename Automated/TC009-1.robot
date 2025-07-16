*** Settings ***
Library  SeleniumLibrary  run_on_failure=Nothing
Library  String
Resource  objectRepository/Browsers.robot
Resource  objectRepository/URLs.robot
Resource  objectRepository/Buttons.robot
Resource  objectRepository/Headings.robot
Resource  objectRepository/Keywords.robot
Resource  objectRepository/Values.robot

*** Test Cases ***
Pre-conditions - Otevři hlavní stránku města Bzenec
  Open and Verify URL  ${URL_Bzenec_HomePage}  ${Heading_HomePage_MainTitle_XPath}  ${Logo_MestoBzenec}
  Page Should Contain Element  ${Button_Vyhledat_XPath}

TC009-1 - Vyhledání výrazu "formulář" a kontrola výsledků
  [Tags]  TS003  TC009-1  FrontEnd
  Searching  ${Hodnota_Formular}

Post-conditions - Zavři prohlížeč
  Close Browser
