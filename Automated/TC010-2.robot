*** Settings ***
Library  SeleniumLibrary  run_on_failure=Nothing
Library  String
Resource  objectRepository/Browsers.robot
Resource  objectRepository/URLs.robot
Resource  objectRepository/Buttons.robot
Resource  objectRepository/Headings.robot
Resource  objectRepository/Keywords.robot
Resource  objectRepository/Values.robot
Resource  objectRepository/Inputs.robot

*** Test Cases ***
Pre-conditions - Otevři hlavní stránku města Bzenec
  Open and Verify URL  ${URL_Bzenec_HomePage}  ${Heading_HomePage_MainTitle_XPath}  ${Logo_MestoBzenec}
  Page Should Contain Element  ${Button_Vyhledat_XPath}

TC010-2 - Vyhledání prazdneho výrazu a kontrola výsledků
  [Tags]  TS003  TC010-2  FrontEnd
  Click Element  ${Button_Vyhledat_XPath}
  Input Text  ${Input_Vyhledat_XPath}  ${Hodnota_Empty}
  Press Key  ${Input_Vyhledat_XPath}  ${Hodnota_Enter}
  Wait Until Element Is Visible  ${Heading_Vyhledavani_XPath}

Post-conditions - Zavři prohlížeč
  Close Browser
