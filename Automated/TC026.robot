*** Settings ***
Library  SeleniumLibrary  run_on_failure=Nothing
Resource  objectRepository/URLs.robot
Resource  objectRepository/Images.robot
Resource  objectRepository/Headings.robot
Resource  objectRepository/Keywords.robot

*** Test Cases ***
Pre-conditions - Otevři hlavní stránku města Bzenec
  Open and Verify URL  ${URL_Menu_Fotogalerie}  ${Heading_Fotografie}  ${Logo_MestoBzenec}
  Page Should Contain Element  ${Button_Vyhledat_XPath}

TC026 - Ověření zobrazení náhledů ve fotogalerii
    [Tags]  TS009  TC026  FrontEnd
    Page Should Contain Element  ${Heading_Fotografie}
    Stranka Obsahuje Nahled a Nazev  ${Heading_Fotografie_VitaniObcanu}  ${Image_Fotografie_VitaniObcanu}
    Stranka Obsahuje Nahled a Nazev  ${Heading_Fotografie_VitaniObcanu2025}  ${Image_Fotografie_VitaniObcanu2025}
    Stranka Obsahuje Nahled a Nazev  ${Heading_Fotografie_VitaniObcanu2024}  ${Image_Fotografie_VitaniObcanu2024}
    Stranka Obsahuje Nahled a Nazev  ${Heading_Fotografie_VinobraniSobota2024}  ${Image_Fotografie_VinobraniSobota2024}
    Stranka Obsahuje Nahled a Nazev  ${Heading_Fotografie_VinobraniPatek2024}  ${Image_Fotografie_VinobraniPatek2024}
    Stranka Obsahuje Nahled a Nazev  ${Heading_Fotografie_Kultura}  ${Image_Fotografie_Kultura}
    Stranka Obsahuje Nahled a Nazev  ${Heading_Fotografie_ZayijteBzenec}  ${Image_Fotografie_ZayijteBzenec}
    Stranka Obsahuje Nahled a Nazev  ${Heading_Fotografie_VitaniObcanu2023}  ${Image_Fotografie_VitaniObcanu2023}
    Stranka Obsahuje Nahled a Nazev  ${Heading_Fotografie_VitaniObcanu2022prosinec}  ${Image_Fotografie_VitaniObcanu2022prosinec}
    Stranka Obsahuje Nahled a Nazev  ${Heading_Fotografie_VitaniObcanu2022duben}  ${Image_Fotografie_VitaniObcanu2022duben}
    Stranka Obsahuje Nahled a Nazev  ${Heading_Fotografie_VitaniObcanu2021}  ${Image_Fotografie_VitaniObcanu2021}
    Stranka Obsahuje Nahled a Nazev  ${Heading_Fotografie_BzeneckyFasank}  ${Image_Fotografie_BzeneckyFasank}
    Stranka Obsahuje Nahled a Nazev  ${Heading_Fotografie_JarniVysatava}  ${Image_Fotografie_JarniVysatava}
    Stranka Obsahuje Nahled a Nazev  ${Heading_Fotografie_PaleniCarodejnic}  ${Image_Fotografie_PaleniCarodejnic}
    Stranka Obsahuje Nahled a Nazev  ${Heading_Fotografie_BzeneckyGulas}  ${Image_Fotografie_BzeneckyGulas}
    Stranka Obsahuje Nahled a Nazev  ${Heading_Fotografie_BzeneckaPout}  ${Image_Fotografie_BzeneckaPout}
    Stranka Obsahuje Nahled a Nazev  ${Heading_Fotografie_Vinobrani2022}  ${Image_Fotografie_Vinobrani2022} 
    Stranka Obsahuje Nahled a Nazev  ${Heading_Fotografie_VanoceNaZamku}  ${Image_Fotografie_VanoceNaZamku}
    Stranka Obsahuje Nahled a Nazev  ${Heading_Fotografie_BzenecZVysky}  ${Image_Fotografie_BzenecZVysky}
    Stranka Obsahuje Nahled a Nazev  ${Heading_Fotografie_MestoVPrubehuRoku}  ${Image_Fotografie_MestoVPrubehuRoku}
    Stranka Obsahuje Nahled a Nazev  ${Heading_Fotografie_Priorda}  ${Image_Fotografie_Priorda}

Post-conditions - Zavři prohlížeč
  Close Browser  
