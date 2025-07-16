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
Pre-conditions - Otevři stránku Úřední deska
  Open and Verify URL  ${URL_Menu_UredniDeska}  ${Heading_UredniDeska_XPath}  ${Logo_MestoBzenec}

TC013 - Ověření zobrazení filtračních prvků na Úřední desce
  [Tags]  TS004  TC013  FrontEnd
  Page Should Contain Element  ${Input_UD_vyhledavani}
  Page Should Contain Element  ${Button_UD_Hledat}
  Page Should Contain Element  ${Button_UD_RozsireneVyhledavani}

  Page Should Not Contain Element  ${Input_UD_Kategorie_Hospodareni2022_XPath}
  Page Should Not Contain Element  ${Input_UD_Kategorie_Hospodareni2023_XPath}
  Page Should Not Contain Element  ${Input_UD_Kategorie_Informator_XPath}
  Page Should Not Contain Element  ${Input_UD_Kategorie_Mikroregion_XPath}
  Page Should Not Contain Element  ${Input_UD_Kategorie_NarizeniMesta_XPath}
  Page Should Not Contain Element  ${Input_UD_Kategorie_Vyhlasky_XPath}
  Page Should Not Contain Element  ${Input_UD_Kategorie_PostaProObcany_XPath}
  Page Should Not Contain Element  ${Input_UD_Kategorie_Rozpocet2023_XPath}
  Page Should Not Contain Element  ${Input_UD_Kategorie_Rozpocet2024_XPath}
  Page Should Not Contain Element  ${Input_UD_Kategorie_Rozpocet2025_XPath}
  Page Should Not Contain Element  ${Input_UD_Kategorie_SocialniOdbor_XPath}
  Page Should Not Contain Element  ${Input_UD_Kategorie_SpravaMajetku_XPath}
  Page Should Not Contain Element  ${Input_UD_Kategorie_StavebniUrad_XPath}
  Page Should Not Contain Element  ${Input_UD_Kategorie_Tajemnik_XPath}
  Page Should Not Contain Element  ${Input_UD_Kategorie_UsneseniRady_XPath}
  Page Should Not Contain Element  ${Input_UD_Kategorie_ZastupovaniStat_XPath}
  Page Should Not Contain Element  ${Input_UD_Kategorie_VerejnopravniSmlouvy_XPath}
  Page Should Not Contain Element  ${Input_UD_Kategorie_Volby_XPath}
  Page Should Not Contain Element  ${Input_UD_Kategorie_Vyhlasky_XPath}
  Page Should Not Contain Element  ${Input_UD_Kategorie_VypisZeZapisu_XPath}
  Page Should Not Contain Element  ${Input_UD_Kategorie_ZastupitelstvoPozvanky_XPath}
  Page Should Not Contain Element  ${Input_UD_Kategorie_ZtratyNalezy_XPath}
  Page Should Not Contain Element  ${Input_UD_Kategorie_ZivotniProstredi_XPath}

  Element Should Not Be Visible  ${Input_UD_Kategorie_Vyber_XPath}
  Click Element  ${Button_UD_RozsireneVyhledavani}
  Wait Until Element Is Visible  ${Input_UD_Kategorie_Vyber_XPath}

  Page Should Not Contain Element  ${Input_UD_Kategorie_Hospodareni2022_XPath}
  Page Should Not Contain Element  ${Input_UD_Kategorie_Hospodareni2023_XPath}
  Page Should Not Contain Element  ${Input_UD_Kategorie_Informator_XPath}
  Page Should Not Contain Element  ${Input_UD_Kategorie_Mikroregion_XPath}
  Page Should Not Contain Element  ${Input_UD_Kategorie_NarizeniMesta_XPath}
  Page Should Not Contain Element  ${Input_UD_Kategorie_Vyhlasky_XPath}
  Page Should Not Contain Element  ${Input_UD_Kategorie_PostaProObcany_XPath}
  Page Should Not Contain Element  ${Input_UD_Kategorie_Rozpocet2023_XPath}
  Page Should Not Contain Element  ${Input_UD_Kategorie_Rozpocet2024_XPath}
  Page Should Not Contain Element  ${Input_UD_Kategorie_Rozpocet2025_XPath}
  Page Should Not Contain Element  ${Input_UD_Kategorie_SocialniOdbor_XPath}
  Page Should Not Contain Element  ${Input_UD_Kategorie_SpravaMajetku_XPath}
  Page Should Not Contain Element  ${Input_UD_Kategorie_StavebniUrad_XPath}
  Page Should Not Contain Element  ${Input_UD_Kategorie_Tajemnik_XPath}
  Page Should Not Contain Element  ${Input_UD_Kategorie_UsneseniRady_XPath}
  Page Should Not Contain Element  ${Input_UD_Kategorie_ZastupovaniStat_XPath}
  Page Should Not Contain Element  ${Input_UD_Kategorie_VerejnopravniSmlouvy_XPath}
  Page Should Not Contain Element  ${Input_UD_Kategorie_Volby_XPath}
  Page Should Not Contain Element  ${Input_UD_Kategorie_Vyhlasky_XPath}
  Page Should Not Contain Element  ${Input_UD_Kategorie_VypisZeZapisu_XPath}
  Page Should Not Contain Element  ${Input_UD_Kategorie_ZastupitelstvoPozvanky_XPath}
  Page Should Not Contain Element  ${Input_UD_Kategorie_ZtratyNalezy_XPath}
  Page Should Not Contain Element  ${Input_UD_Kategorie_ZivotniProstredi_XPath}

  Click Element  ${Input_UD_Kategorie_Vyber_XPath}
  Wait Until Element Is Visible  ${Input_UD_Kategorie_Hospodareni2022_XPath}

  Page Should Contain Element  ${Input_UD_Kategorie_Hospodareni2022_XPath}
  Page Should Contain Element  ${Input_UD_Kategorie_Hospodareni2023_XPath}
  Page Should Contain Element  ${Input_UD_Kategorie_Informator_XPath}
  Page Should Contain Element  ${Input_UD_Kategorie_Mikroregion_XPath}
  Page Should Contain Element  ${Input_UD_Kategorie_NarizeniMesta_XPath}
  Page Should Contain Element  ${Input_UD_Kategorie_Vyhlasky_XPath}
  Page Should Contain Element  ${Input_UD_Kategorie_PostaProObcany_XPath}
  Page Should Contain Element  ${Input_UD_Kategorie_Rozpocet2023_XPath}
  Page Should Contain Element  ${Input_UD_Kategorie_Rozpocet2024_XPath}
  Page Should Contain Element  ${Input_UD_Kategorie_Rozpocet2025_XPath}
  Page Should Contain Element  ${Input_UD_Kategorie_SocialniOdbor_XPath}
  Page Should Contain Element  ${Input_UD_Kategorie_SpravaMajetku_XPath}
  Page Should Contain Element  ${Input_UD_Kategorie_StavebniUrad_XPath}
  Page Should Contain Element  ${Input_UD_Kategorie_Tajemnik_XPath}
  Page Should Contain Element  ${Input_UD_Kategorie_UsneseniRady_XPath}
  Page Should Contain Element  ${Input_UD_Kategorie_ZastupovaniStat_XPath}
  Page Should Contain Element  ${Input_UD_Kategorie_VerejnopravniSmlouvy_XPath}
  Page Should Contain Element  ${Input_UD_Kategorie_Volby_XPath}
  Page Should Contain Element  ${Input_UD_Kategorie_Vyhlasky_XPath}
  Page Should Contain Element  ${Input_UD_Kategorie_VypisZeZapisu_XPath}
  Page Should Contain Element  ${Input_UD_Kategorie_ZastupitelstvoPozvanky_XPath}
  Page Should Contain Element  ${Input_UD_Kategorie_ZtratyNalezy_XPath}
  Page Should Contain Element  ${Input_UD_Kategorie_ZivotniProstredi_XPath}

  Page Should Contain Element  ${Input_UD_Typ_XPath}
  Element Should Not Be Visible  ${Input_UD_Typ_Aktualni_XPath}
  Element Should Not Be Visible  ${Input_UD_Typ_Archivovane_XPath}
  #Element Should Not Be Visible  ${Input_UD_Typ_Vsechny_XPath}

  Click Element  ${Input_UD_Typ_XPath}
  Wait Until Element Is Visible  ${Input_UD_Typ_Aktualni_XPath}
  Page Should Contain Element  ${Input_UD_Typ_Aktualni_XPath}
  Page Should Contain Element  ${Input_UD_Typ_Archivovane_XPath}
  Page Should Contain Element  ${Input_UD_Typ_Vsechny_XPath}

Post-conditions - Zavři prohlížeč
  Close Browser
