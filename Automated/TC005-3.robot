*** Settings ***
Library  SeleniumLibrary  run_on_failure=Nothing
Resource  objectRepository/URLs.robot
Resource  objectRepository/Buttons.robot
Resource  objectRepository/Headings.robot
Resource  objectRepository/Keywords.robot

*** Test Cases ***
Pre-conditions - Otevři Otevři hlavní stránku města Bzenec
  Open and Verify URL  ${URL_Bzenec_HomePage}  ${Heading_HomePage_MainTitle_XPath}  ${Logo_MestoBzenec}
  
TC005-3 - Ověření načtení stránky Potřebuji vyřídit a jejího nadpisu
  [Tags]  TS002  TC005-3  FrontEnd
  Open and Verify Dropdown menu  ${Button_Menu_ProObcany_XPath}  ${Button_ProObcany_PotrebujiVyridit_XPath}  ${URL_Menu_PotrebujiVyridit}  ${Heading_PotrebujiVyridit_XPath}

Post-conditions - Zavři prohlížeč
  Close Browser