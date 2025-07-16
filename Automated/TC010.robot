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

TC010 - Vyhledání neplatnych výrazu a kontrola výsledků
  [Tags]  TS003  TC010  FrontEnd
  Searching  ${Hodnota_oklsdfhds}

Post-conditions - Zavři prohlížeč
  Close Browser
