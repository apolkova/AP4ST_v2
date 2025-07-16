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

TC010-1 - Vyhledání nesmlyslneho výrazu "asdasd" a "oklsdfhds" a kontrola výsledků
  [Tags]  TS003  TC010-1  FrontEnd
  Searching  ${Hodnota_asdasd}
  Return to MainPage
  Searching  ${Hodnota_oklsdfhds}
  Page Should Contain  ${Hodnota_ZadneVysledky}

Post-conditions - Zavři prohlížeč
  Close Browser
