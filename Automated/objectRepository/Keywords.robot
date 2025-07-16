*** Settings ***
Library  SeleniumLibrary  run_on_failure=Nothing
Library  String
Library  XML
Library  OperatingSystem
Resource  Browsers.robot
Resource  URLs.robot
Resource  Headings.robot
Resource  Logo.robot
Resource  Buttons.robot
Resource  Values.robot
Resource  Inputs.robot
Resource  Location.robot
Resource  Images.robot
Resource  Notifikace.robot
Resource  Path.robot

*** Keywords ***
Open and Verify URL
    [Documentation]  Otevře zadanou stránku a ověří načtení přes viditelnost hlavního nadpisu.
    [Arguments]  ${URL}  ${main_title_xpath}  ${Logo}
    Open Browser  ${URL}  ${Browser_Chrome}
    Maximize Browser Window
    Wait Until Location Is  ${URL}
    Wait Until Element Is Visible  ${main_title_xpath}
    Page Should Contain Element  ${Logo}

Located on MainPage
    [Documentation]  Overi, ze se nachazime na hlavni strance = TC001
    Page Should Contain Element  ${Heading_HomePage_MainTitle_XPath}
    Element Should Be Visible  ${Heading_HomePage_MainTitle_XPath}
    Page Should Contain Element  ${Logo_MestoBzenec} 
    Element Should Be Visible  ${Logo_MestoBzenec}
    Element Text Should Be  ${Heading_HomePage_IntroductionText_XPath}  ${Heading_HomePage_IntroductionText_Expected}

Return to MainPage
    Click Element  ${Logo_MestoBzenec}
    Wait Until Location Is  ${URL_Bzenec_HomePage}
    Page Should Contain Element  ${Heading_HomePage_MainTitle_XPath}

Open and Verify Dropdown Menu
    [Arguments]  ${Button_Menu_Item}  ${Button_Item_Submenu}  ${URL_Submenu}  ${Heading_Submenu}
    Page Should Contain Element  ${Button_Menu_Item}
    Element Should Be Visible  ${Button_Menu_Item}
    Mouse Over  ${Button_Menu_Item}
    Wait Until Element Is Visible  ${Button_Menu_Item}
    Mouse Over  ${Button_Item_Submenu}
    Click Element  ${Button_Item_Submenu}
    Wait Until Location Is  ${URL_Submenu}
    Page Should Contain Element  ${Heading_Submenu}

Searching
    [Arguments]  ${Hodnota}
    Click Element  ${Button_Vyhledat_XPath}
    Input Text  ${Input_Vyhledat_XPath}  ${Hodnota}
    Press Key  ${Input_Vyhledat_XPath}  ${Hodnota_Enter}
    Wait Until Element Is Visible  ${Heading_Vyhledavani_XPath}
    Page Should Contain  ${Hodnota}

Stranka Obsahuje
    [Arguments]  ${Heading}
    Page Should Contain Element  ${Heading}
    Element Should Be Visible  ${Heading}

UD Oznameni Obsahuje Nazev a Datum
    [Arguments]  ${index}
    Element Should Be Visible  xpath=//body/div/main/section/div/div/div/div[${index}]
    Element Should Be Visible  xpath=//*[@id="snippet--content"]/main/section[2]/div/div/div[1]/div[${index}]/div[1]/span[2]
    Element Should Be Visible  xpath=//*[@id="snippet--content"]/main/section[2]/div/div/div[1]/div[${index}]/div[4]/a

UD Overeni Priloh u Oznameni xxxxxxxxxxxxxxxxxxxxxxxxxx
    ${Oznameni}  Get WebElements  xpath=//div[contains(@class,'c-list-item')]
    Log  Nalezeno oznámení: ${len(${Oznameni})}
    
    FOR  ${item}  IN  @{Oznameni}
        ${existuje}  Run Keyword And Return Status  Element Should Be Visible  xpath=.//div[contains(@class, 'c-attachment-counter')]//*[name()='svg']
        Run Keyword If  '${existuje}'=='True'   Log  Oznameni obsahuje přílohu
        Run Keyword If  '${existuje}'=='False'  Log  Oznameni nemá přílohu
    END

UD Overeni Oznameni 
    [Arguments]  ${index}
    Wait Until Element Is Visible  xpath=//*[@id="snippet--content"]/main/section[2]/div/div/div[1]/div[${index}]/div[4]/a
    Click Element  xpath=//*[@id="snippet--content"]/main/section[2]/div/div/div[1]/div[${index}]/div[4]/a
    Wait Until Element Is Not Visible  xpath=//*[@id="snippet--content"]/main/section[2]/div/div/div[1]/div[${index}]/div[4]/a
    Page Should Contain Element  xpath=//h1
    Run Keyword And Ignore Error  Element Should Be Visible  xpath=/html[1]/body[1]/div[1]/main[1]/section[3]/div[1]/div[1]/div[1]/div[1]/a[1]/span[1]/span[1]/*[name()='svg'][1]/*[name()='use'][1]
    Go Back

UD Vyhledavani podle Kategorie
    [Arguments]  ${Input}  ${NazevKategorie}
    Click Element  ${Input_UD_Kategorie_Vyber_XPath}
    Wait Until Element Is Visible  ${Input_UD_Kategorie_Hospodareni2022_XPath}
    Click Element  ${Input}
    Wait Until Element Is Visible  ${Button_UD_RV_Hledat}
    Click Element  ${Button_UD_RV_Hledat}
    Wait Until Location Is Not  ${URL_Menu_UredniDeska}
    Page Should Contain  ${NazevKategorie}
    Go Back
    Wait Until Location Is  ${URL_Menu_UredniDeska}
    Reload Page
    Wait Until Element Is Visible  ${Heading_UredniDeska_XPath}
    Wait Until Element Is Visible  ${Button_UD_RozsireneVyhledavani}
    Click Element  ${Button_UD_RozsireneVyhledavani}
    Wait Until Element Is Visible  ${Input_UD_Kategorie_Vyber_XPath}

UD Vyhledavani podle Typu
    [Arguments]  ${Input}  ${NazevStavu}
    Click Element  ${Input_UD_Typ_XPath}
    Wait Until Element Is Visible  ${Input}
    Click Element  ${Input}
    Wait Until Element Is Visible  ${Button_UD_RV_Hledat}
    Click Element  ${Button_UD_RV_Hledat}
    Wait Until Location Is Not  ${URL_Menu_UredniDeska}
    Page Should Contain  ${NazevStavu}
    Go Back
    Wait Until Location Is  ${URL_Menu_UredniDeska}
    Reload Page
    Wait Until Element Is Visible  ${Heading_UredniDeska_XPath}
    Wait Until Element Is Visible  ${Button_UD_RozsireneVyhledavani}
    Click Element  ${Button_UD_RozsireneVyhledavani}
    Wait Until Element Is Visible  ${Input_UD_Typ_XPath}

Stahnout a otevrit PDF
    [Arguments]  ${URL}  ${NamePDF}
    Go To  ${URL}
    Wait Until Location Is  ${URL}  timeout=${Hodnota_Timeout_5s}
    Wait Until Page Contains Element  ${Button_UD_PDF}
    Page Should Contain Element  ${Button_UD_PDF}
    Click Element  ${Button_UD_PDF_Download}
    File Should Exist  ${Path_Downlaod}${NamePDF}${Hondota_PDF_ending}
    Go Back


Stranka Obsahuje Nahled a Nazev
    [Arguments]  ${Image}  ${Heading}
    Wait Until Element Is Visible  ${Image}  timeout=${Hodnota_Timeout_5s}
    Page Should Contain Element  ${Image}
    Page Should Contain Element  ${Heading}

Rozkliknout a zavrit obrazek
    [Arguments]  ${Image}
    Wait Until Element Is Not Visible  ${Image_Lightbox_ZvetsenyObrazek}
    Element Should Not Be Visible  ${Image_Lightbox_ZvetsenyObrazek} 
    Page Should Not Contain Element  ${Image_Lightbox_ZvetsenyObrazek}
    Element Should Not Be Visible  ${Heading_Fotografie_ZazijteBzenec_PhotoLabel}
    Click Element  ${Image}
    Wait Until Element Is Visible  ${Image_Lightbox_ZvetsenyObrazek}
    Element Should Be Visible  ${Image_Lightbox_ZvetsenyObrazek}
    Page Should Contain Element  ${Heading_Fotografie_ZazijteBzenec_PhotoLabel}
    Click Element  ${Button_Fotografie_Close}
    Wait Until Element Is Not Visible  ${Heading_Fotografie_ZazijteBzenec_PhotoLabel}
    Element Should Not Be Visible  ${Heading_Fotografie_ZazijteBzenec_PhotoLabel}
    Wait Until Element Is Visible  ${Heading_Fotografie_ZazijteBzenec_BzenecZVysky}

Posouvani obrazku with arrows
    Set Selenium Speed   ${Hodnota_Selenium_Speed_0.2s}
    Wait Until Element Is Visible  ${Image_Fotografie_BzenecZVysky_CurrentImage}  timeout=${Hodnota_Timeout_5s}
    Press Keys  ${Hodnota_None}  ${Hodnota_doPrava}
    Wait Until Element Is Visible  ${Image_Fotografie_BzenecZVysky_CurrentImage}  timeout=${Hodnota_Timeout_5s}
    Press Keys  ${Hodnota_None}  ${Hodnota_doPrava}
    Wait Until Element Is Visible  ${Image_Fotografie_BzenecZVysky_CurrentImage}  timeout=${Hodnota_Timeout_5s}
    Press Keys  ${Hodnota_None}  ${Hodnota_doPrava}
    Wait Until Element Is Visible  ${Image_Fotografie_BzenecZVysky_CurrentImage}  timeout=${Hodnota_Timeout_5s}
    Press Keys  ${Hodnota_None}  ${Hodnota_doPrava}
    Wait Until Element Is Visible  ${Image_Fotografie_BzenecZVysky_CurrentImage}  timeout=${Hodnota_Timeout_5s}
    Press Keys  ${Hodnota_None}  ${Hodnota_doPrava}
    Wait Until Element Is Visible  ${Image_Fotografie_BzenecZVysky_CurrentImage}  timeout=${Hodnota_Timeout_5s}
    Press Keys  ${Hodnota_None}  ${Hodnota_doPrava}
    Wait Until Element Is Visible  ${Image_Fotografie_BzenecZVysky_CurrentImage}  timeout=${Hodnota_Timeout_5s}
    Press Keys  ${Hodnota_None}  ${Hodnota_doPrava}
    Wait Until Element Is Visible  ${Image_Fotografie_BzenecZVysky_CurrentImage}  timeout=${Hodnota_Timeout_5s}
    Press Keys  ${Hodnota_None}  ${Hodnota_doPrava}
    Wait Until Element Is Visible  ${Image_Fotografie_BzenecZVysky_CurrentImage}  timeout=${Hodnota_Timeout_5s}
    Press Keys  ${Hodnota_None}  ${Hodnota_doLeva}
    Wait Until Element Is Visible  ${Image_Fotografie_BzenecZVysky_CurrentImage}  timeout=${Hodnota_Timeout_5s}
    Press Keys  ${Hodnota_None}  ${Hodnota_doLeva}
    Wait Until Element Is Visible  ${Image_Fotografie_BzenecZVysky_CurrentImage}  timeout=${Hodnota_Timeout_5s}
    Press Keys  ${Hodnota_None}  ${Hodnota_doLeva}
    Wait Until Element Is Visible  ${Image_Fotografie_BzenecZVysky_CurrentImage}  timeout=${Hodnota_Timeout_5s}
    Press Keys  ${Hodnota_None}  ${Hodnota_doLeva}
    Wait Until Element Is Visible  ${Image_Fotografie_BzenecZVysky_CurrentImage}  timeout=${Hodnota_Timeout_5s}
    Press Keys  ${Hodnota_None}  ${Hodnota_doLeva}
    Wait Until Element Is Visible  ${Image_Fotografie_BzenecZVysky_CurrentImage}  timeout=${Hodnota_Timeout_5s}
    Press Keys  ${Hodnota_None}  ${Hodnota_doLeva}
    Wait Until Element Is Visible  ${Image_Fotografie_BzenecZVysky_CurrentImage}  timeout=${Hodnota_Timeout_5s}
    Press Keys  ${Hodnota_None}  ${Hodnota_doLeva}
    Wait Until Element Is Visible  ${Image_Fotografie_BzenecZVysky_CurrentImage}  timeout=${Hodnota_Timeout_5s}
    Press Keys  ${Hodnota_None}  ${Hodnota_doLeva}
    
Posouvani obrayku with buttons  
    Set Selenium Speed   ${Hodnota_Selenium_Speed_0.2s} 
    Wait Until Element Is Visible  ${Image_Fotografie_BzenecZVysky_CurrentImage}  timeout=${Hodnota_Timeout_5s}
    Click Element  ${Button_Lightbox_Next}
    Wait Until Element Is Visible  ${Image_Fotografie_BzenecZVysky_CurrentImage}  timeout=${Hodnota_Timeout_5s}
    Click Element  ${Button_Lightbox_Next}
    Wait Until Element Is Visible  ${Image_Fotografie_BzenecZVysky_CurrentImage}  timeout=${Hodnota_Timeout_5s}
    Click Element  ${Button_Lightbox_Next}
    Wait Until Element Is Visible  ${Image_Fotografie_BzenecZVysky_CurrentImage}  timeout=${Hodnota_Timeout_5s}
    Click Element  ${Button_Lightbox_Next}
    Wait Until Element Is Visible  ${Image_Fotografie_BzenecZVysky_CurrentImage}  timeout=${Hodnota_Timeout_5s}
    Click Element  ${Button_Lightbox_Next}
    Wait Until Element Is Visible  ${Image_Fotografie_BzenecZVysky_CurrentImage}  timeout=${Hodnota_Timeout_5s}
    Click Element  ${Button_Lightbox_Next}
    Wait Until Element Is Visible  ${Image_Fotografie_BzenecZVysky_CurrentImage}  timeout=${Hodnota_Timeout_5s}
    Click Element  ${Button_Lightbox_Next}
    Wait Until Element Is Visible  ${Image_Fotografie_BzenecZVysky_CurrentImage}  timeout=${Hodnota_Timeout_5s}
    Click Element  ${Button_Lightbox_Next}
    Wait Until Element Is Visible  ${Image_Fotografie_BzenecZVysky_CurrentImage}  timeout=${Hodnota_Timeout_5s}
    Click Element  ${Button_Lightbox_Previous}
    Wait Until Element Is Visible  ${Image_Fotografie_BzenecZVysky_CurrentImage}  timeout=${Hodnota_Timeout_5s}
    Click Element  ${Button_Lightbox_Previous}
    Wait Until Element Is Visible  ${Image_Fotografie_BzenecZVysky_CurrentImage}  timeout=${Hodnota_Timeout_5s}
    Click Element  ${Button_Lightbox_Previous}
    Wait Until Element Is Visible  ${Image_Fotografie_BzenecZVysky_CurrentImage}  timeout=${Hodnota_Timeout_5s}
    Click Element  ${Button_Lightbox_Previous}
    Wait Until Element Is Visible  ${Image_Fotografie_BzenecZVysky_CurrentImage}  timeout=${Hodnota_Timeout_5s}
    Click Element  ${Button_Lightbox_Previous}
    Wait Until Element Is Visible  ${Image_Fotografie_BzenecZVysky_CurrentImage}  timeout=${Hodnota_Timeout_5s}
    Click Element  ${Button_Lightbox_Previous}
    Wait Until Element Is Visible  ${Image_Fotografie_BzenecZVysky_CurrentImage}  timeout=${Hodnota_Timeout_5s}
    Click Element  ${Button_Lightbox_Previous}
    Wait Until Element Is Visible  ${Image_Fotografie_BzenecZVysky_CurrentImage}  timeout=${Hodnota_Timeout_5s}
    Click Element  ${Button_Lightbox_Previous}

Testing Ressolution
    [Arguments]  ${Resolution}
    Click Element  ${Button_Videoreportaz_ResolutionButton}
    Wait Until Element Is Visible  ${Button_Videoreportaz_Resolution360}
    Click Element  ${Resolution}


Testovani Neplatneho Email
    [Arguments]  ${Email}
    Input Text  ${Input_OdberNovinek}  ${Hodnota_OdberNovinek_neplatny1}
    Mouse Over  ${Buton_OdberNovinek}
    Wait Until Element Is Enabled  ${Buton_OdberNovinek}
    Click Element  ${Buton_OdberNovinek}
    Location Should Be  ${URL_Bzenec_HomePage}
    Element Should Not Be Visible  ${Heading_OdberNovinek_aktivni}  timeout=${Hodnota_Timeout_5s}
    Element Should Not Be Visible  ${Notifikace_OdberNovinek}  timeout=${Hodnota_Timeout_5s}







