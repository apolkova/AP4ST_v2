*** Settings ***
Library  SeleniumLibrary  run_on_failure=Nothing
Resource  objectRepository/URLs.robot
Resource  objectRepository/Buttons.robot
Resource  objectRepository/Headings.robot
Resource  objectRepository/Keywords.robot

*** Test Cases ***
Pre-conditions - Otevři hlavní stránku města Bzenec
    Open and Verify URL  ${URL_Bzenec_HomePage}  ${Heading_HomePage_MainTitle_XPath}  ${Logo_MestoBzenec}

TC004 - Ověření přítomnosti hlavního menu a položek
  [Tags]  TS002  TC004  FrontEnd
  Page Should Contain Element  ${Heading_MainMenu_XPath}
  Element Should Be Visible  ${Heading_MainMenu_XPath}

  #Pro Obcany
  Open and Verify Dropdown menu  ${Button_Menu_ProObcany_XPath}  ${Button_ProObcany_DulezitaSdeleni_XPath}  ${URL_Menu_DulezitaSdeleni}  ${Heading_DulezitaSdeleni_XPath}
  Return to MainPage
  Open and Verify Dropdown menu  ${Button_Menu_ProObcany_XPath}  ${Button_ProObcany_Formulare_XPath}  ${URL_Menu_Formulare}  ${Heading_Formulare_XPath}
  Return to MainPage
  Open and Verify Dropdown menu  ${Button_Menu_ProObcany_XPath}  ${Button_ProObcany_PotrebujiVyridit_XPath}  ${URL_Menu_PotrebujiVyridit}  ${Heading_PotrebujiVyridit_XPath}
  Return to MainPage

  #ZviotVeMeste
  Open and Verify Dropdown Menu  ${Button_Menu_ZivotVeMeste_XPath}  ${Button_Menu_Kultura_XPath}  ${URL_Menu_Kultura}  ${Heading_Kultura_XPath}
  Return to MainPage
  Open and Verify Dropdown Menu  ${Button_Menu_ZivotVeMeste_XPath}  ${Button_Menu_Sport_XPath}  ${URL_Menu_Sport}  ${Heading_Sport_XPath}
  Return to MainPage
  Open and Verify Dropdown Menu  ${Button_Menu_ZivotVeMeste_XPath}  ${Button_Menu_BzeneckyZpravodaj_XPath}  ${URL_Menu_BzeneckyZpravodaj}  ${Heading_BzeneckyZpravodaj_XPath}
  Return to MainPage

  #Turismus
  Open and Verify Dropdown Menu  ${Button_Menu_Turismus_XPath}  ${Button_Menu_ZazijteBzenec_XPath}  ${URL_Menu_ZazijteBzenec}  ${Heading_ZazijteBzenec_XPath}
  Return to MainPage
  Open and Verify Dropdown Menu  ${Button_Menu_Turismus_XPath}  ${Button_Menu_InformacniCentrum_XPath}  ${URL_Menu_InformacniCentrum}  ${Heading_InformacniCentrum_XPath}
  Return to MainPage
  Open and Verify Dropdown Menu  ${Button_Menu_Turismus_XPath}  ${Button_Menu_TipyNavVylety_XPath}  ${URL_Menu_TipyNaVylety}  ${Heading_TipyNaVylety_XPath}
  Return to MainPage

  #MestoAUrad
  Open and Verify Dropdown Menu  ${Button_Menu_Urad_XPath}  ${Button_Menu_Mesto_XPath}  ${URL_Menu_Mesto}  ${Heading_Mesto_XPath}
  Return to MainPage
  Open and Verify Dropdown Menu  ${Button_Menu_Urad_XPath}  ${Button_Menu_MestskyUrad_XPath}  ${URL_Menu_MestskyUrad}  ${Heading_MestskyUrad_XPath}
  Return to MainPage
  Open and Verify Dropdown Menu  ${Button_Menu_Urad_XPath}  ${Button_Menu_UredniDeska_XPath}  ${URL_Menu_UredniDeska}  ${Heading_UredniDeska_XPath}
  Return to MainPage
  Open and Verify Dropdown Menu  ${Button_Menu_Urad_XPath}  ${Button_Menu_Kontakty_XPath}  ${URL_Menu_Kontakty}  ${Heading_Kontakty_XPath}
  Return to MainPage

  #Kontakt
  Open and Verify Dropdown Menu  ${Button_Menu_Kontakt_XPath}  ${Button_Menu_Kontakt_XPath}  ${URL_Menu_Kontakt}  ${Heading_Kontakt_XPath}
  Return to MainPage

Post-conditions - Zavři prohlížeč
  Close Browser
