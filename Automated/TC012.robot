*** Settings ***
Library  SeleniumLibrary  run_on_failure=Nothing
Library  String
Library  OperatingSystem
Resource  objectRepository/URLs.robot
Resource  objectRepository/Buttons.robot
Resource  objectRepository/Headings.robot
Resource  objectRepository/Keywords.robot
Resource  objectRepository/Values.robot
Resource  objectRepository/Inputs.robot

*** Test Cases ***
Pre-conditions - Otevři stránku Úřední deska
  Open and Verify URL  ${URL_Menu_UredniDeska}  ${Heading_UredniDeska_XPath}  ${Logo_MestoBzenec}

TC012 - Ověření zobrazení oznámení na Úřední desce
  [Tags]  TS004  TC012  FrontEnd
  Stranka Obsahuje  ${Heading_UredniDeska_XPath}
  Stranka Obsahuje  ${Heading_UD_VyvysenoOd}
  Stranka Obsahuje  ${Heading_UD_VyvysenoDo}
  Stranka Obsahuje  ${Heading_UD_Kategorie}
  Stranka Obsahuje  ${Heading_UD_Nazev}
  Stranka Obsahuje  ${Input_UD_vyhledavani}
  Stranka Obsahuje  ${Button_UD_Hledat}
  Stranka Obsahuje  ${Button_UD_RozsireneVyhledavani}

Post-conditions - Zavři prohlížeč
  Close Browser
