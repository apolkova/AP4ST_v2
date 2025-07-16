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

TC013-1 - Ověření funkcnosti a zobrazení filtračního prvku Kategorie na Úřední desce
  [Tags]  TS004  TC013-1  FrontEnd
  UD Vyhledavani podle Kategorie  ${Input_UD_Kategorie_Hospodareni2022_XPath}  Hospodaření 2022
  UD Vyhledavani podle Kategorie  ${Input_UD_Kategorie_Hospodareni2023_XPath}  Hospodaření 2023
  UD Vyhledavani podle Kategorie  ${Input_UD_Kategorie_Hospodareni2022_XPath}  Hospodaření 2022
  UD Vyhledavani podle Kategorie  ${Input_UD_Kategorie_Hospodareni2023_XPath}  Hospodaření 2023
  UD Vyhledavani podle Kategorie  ${Input_UD_Kategorie_Informator_XPath}  Informátor
  UD Vyhledavani podle Kategorie  ${Input_UD_Kategorie_Mikroregion_XPath}  Mikroregion
  UD Vyhledavani podle Kategorie  ${Input_UD_Kategorie_NarizeniMesta_XPath}  Nařízení města
  UD Vyhledavani podle Kategorie  ${Input_UD_Kategorie_Vyhlasky_XPath}  Obecně závazné vyhlášky
  UD Vyhledavani podle Kategorie  ${Input_UD_Kategorie_PostaProObcany_XPath}  Pošta pro občany
  UD Vyhledavani podle Kategorie  ${Input_UD_Kategorie_Rozpocet2023_XPath}  Rozpočet 2023
  UD Vyhledavani podle Kategorie  ${Input_UD_Kategorie_Rozpocet2024_XPath}  Rozpočet 2024
  UD Vyhledavani podle Kategorie  ${Input_UD_Kategorie_Rozpocet2025_XPath}  Rozpočet 2025
  UD Vyhledavani podle Kategorie  ${Input_UD_Kategorie_SocialniOdbor_XPath}  Sociální odbor
  UD Vyhledavani podle Kategorie  ${Input_UD_Kategorie_SpravaMajetku_XPath}  Správa majetku
  UD Vyhledavani podle Kategorie  ${Input_UD_Kategorie_StavebniUrad_XPath}  Stavební úřad
  UD Vyhledavani podle Kategorie  ${Input_UD_Kategorie_Tajemnik_XPath}  Tajemník
  UD Vyhledavani podle Kategorie  ${Input_UD_Kategorie_UsneseniRady_XPath}  Usnesení rady města
  UD Vyhledavani podle Kategorie  ${Input_UD_Kategorie_ZastupovaniStat_XPath}  Úřad pro zastupování státu ve věcech majetkových
  UD Vyhledavani podle Kategorie  ${Input_UD_Kategorie_VerejnopravniSmlouvy_XPath}  Veřejnoprávní smlouvy
  UD Vyhledavani podle Kategorie  ${Input_UD_Kategorie_Volby_XPath}  Volby
  UD Vyhledavani podle Kategorie  ${Input_UD_Kategorie_Vyhlasky_XPath}  Vyhlášky
  UD Vyhledavani podle Kategorie  ${Input_UD_Kategorie_VypisZeZapisu_XPath}  VÝPIS ZE ZÁPISU ZASTUPITELSTVA
  UD Vyhledavani podle Kategorie  ${Input_UD_Kategorie_ZastupitelstvoPozvanky_XPath}  Zastupitelstvo pozvánky na zasedání zastupitelstva a záměry města nakládat s majetkem
  UD Vyhledavani podle Kategorie  ${Input_UD_Kategorie_ZtratyNalezy_XPath}  Ztráty a nálezy
  UD Vyhledavani podle Kategorie  ${Input_UD_Kategorie_ZivotniProstredi_XPath}  Životní prostředí

Post-conditions - Zavři prohlížeč
  Close Browser
