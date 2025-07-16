*** Settings ***
Library  SeleniumLibrary  run_on_failure=Nothing
Resource  objectRepository/URLs.robot
Resource  objectRepository/Buttons.robot
Resource  objectRepository/Headings.robot
Resource  objectRepository/Keywords.robot

*** Test Cases ***
Pre-conditions - Otevři hlavní stránku města Bzenec
  Open and Verify URL  ${URL_Bzenec_HomePage}  ${Heading_HomePage_MainTitle_XPath}  ${Logo_MestoBzenec}

TC005-2 - Ověření načtení stránky Formuláře ke stažení a jejího nadpisu
  [Tags]  TS002  TC005-2  FrontEnd
  Open and Verify Dropdown menu  ${Button_Menu_ProObcany_XPath}  ${Button_ProObcany_Formulare_XPath}  ${URL_Menu_Formulare}  ${Heading_Formulare_XPath}

Post-conditions - Zavři prohlížeč
  Close Browser
