*** Settings ***
Library  SeleniumLibrary  run_on_failure=Nothing
Resource  objectRepository/URLs.robot
Resource  objectRepository/Browsers.robot
Resource  objectRepository/Buttons.robot
Resource  objectRepository/Headings.robot
Resource  objectRepository/Inputs.robot
Resource  objectRepository/Logo.robot
Resource  objectRepository/Keywords.robot

*** Test Cases ***
Pre-conditions - Otevři stránku Úřední deska a rozšířit vyhledávání
  Open and Verify URL  ${URL_Menu_UredniDeska}  ${Heading_UredniDeska_XPath}  ${Logo_MestoBzenec}
  Click Element  ${Button_UD_RozsireneVyhledavani}

*** Test Cases ***
TC013-2 - Ověření filtrování podle Typu 
    [Tags]  TS004  TC013-2  FrontEnd
    UD Vyhledavani podle Typu  ${Input_UD_Typ_Aktualni_XPath}     Aktuální záznamy
    UD Vyhledavani podle Typu  ${Input_UD_Typ_Archivovane_XPath}  Archivované záznamy
    UD Vyhledavani podle Typu  ${Input_UD_Typ_Vsechny_XPath}      Všechny záznamy

Post-conditions - Zavři prohlížeč
  Close Browser
