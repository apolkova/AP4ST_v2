*** Settings ***
Library  SeleniumLibrary  run_on_failure=Nothing
Resource  objectRepository/URLs.robot
Resource  objectRepository/Buttons.robot
Resource  objectRepository/Headings.robot
Resource  objectRepository/Keywords.robot

*** Test Cases ***
Pre-conditions - Otevři hlavní stránku města Bzenec
  Open and Verify URL  ${URL_Bzenec_HomePage}  ${Heading_HomePage_MainTitle_XPath}  ${Logo_MestoBzenec}

TC005 - Ověření rozbalení a přítomnosti podmenu Pro občany
  [Tags]  TS002  TC005  FrontEnd
    Open and Verify Dropdown menu  ${Button_Menu_ProObcany_XPath}  ${Button_ProObcany_DulezitaSdeleni_XPath}  ${URL_Menu_DulezitaSdeleni}  ${Heading_DulezitaSdeleni_XPath}
    Return to MainPage
    Open and Verify Dropdown menu  ${Button_Menu_ProObcany_XPath}  ${Button_ProObcany_Formulare_XPath}  ${URL_Menu_Formulare}  ${Heading_Formulare_XPath}
    Return to MainPage
    Open and Verify Dropdown menu  ${Button_Menu_ProObcany_XPath}  ${Button_ProObcany_PotrebujiVyridit_XPath}  ${URL_Menu_PotrebujiVyridit}  ${Heading_PotrebujiVyridit_XPath}
    Return to MainPage

Post-conditions - Zavři prohlížeč
  Close Browser
