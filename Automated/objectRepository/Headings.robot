*** Variables ***
${Heading_HomePage_MainTitle_XPath}  xpath=//h1[contains(text(), 'Město Bzenec')]

${Heading_HomePage_IntroductionText_XPath}  xpath=//p[contains(text(),'${Heading_HomePage_IntroductionText_Expected}')]
${Heading_HomePage_IntroductionText_Expected}  Bzenec, malebné městečko, které okouzluje svou klidnou atmosférou a bohatou historií. Jeho půvabné uličky zdobí zachované historické budovy, které vyprávějí příběhy minulých dob.

${Heading_MainMenu_XPath}  xpath=//div[@class='mx-auto container flex items-center justify-between js-navbar']


#Heading pro Pro Obcany
${Heading_DulezitaSdeleni_XPath}  xpath=//h1[contains(text(),'Důležitá sdělení')]
${Heading_Formulare_XPath}  xpath=//h1[@class='text-white text-3xl lg:text-6xl font-bold']
${Heading_PotrebujiVyridit_XPath}  xpath=//h1[contains(text(),'Potřebuji vyřídit')]

#Heading pro Zivot ve Meste
${Heading_Kultura_XPath}  xpath=//h2[normalize-space()='Kultura']
${Heading_Sport_XPath}  xpath=//h1[normalize-space()='Sport']
${Heading_BzeneckyZpravodaj_XPath}  xpath=//h1[normalize-space()='Bzenecký zpravodaj']

#Heading pro Turismus
${Heading_ZazijteBzenec_XPath}  xpath=//h2[contains(text(),'Zažijte Bzenec')]
${Heading_InformacniCentrum_XPath}  xpath=//h1[@class='text-white text-3xl lg:text-6xl font-bold']
${Heading_TipyNaVylety_XPath}  xpath=//h1[normalize-space()='Tipy na výlety']

#Heading pro Mesto a Urad
${Heading_Mesto_XPath}  xpath=//h1[contains(text(),'Město')]
${Heading_MestskyUrad_XPath}  xpath=//h1[contains(text(),'Městský úřad')]
${Heading_UredniDeska_XPath}  xpath=//h1[contains(text(),'Úřední deska')]
${Heading_Kontakty_XPath}  xpath=//h1[normalize-space()='Kontakty']

#Heading pro Kontakt
${Heading_Kontakt_XPath}  xpath=//h1[normalize-space()='Kontakt']

#Vyhledavani
${Heading_Vyhledavani_XPath}  xpath=//h1[@class='text-white text-3xl lg:text-6xl font-bold']

#UredniDeska [UD]
${Heading_UD_VyvysenoOd}  xpath=//div[@class='text-secondary-light font-bold']//span[contains(text(),'Vyvěšeno od')]
${Heading_UD_VyvysenoDo}  xpath=//div[@class='text-secondary-light font-bold']//span[contains(text(),'Vyvěšeno do')]
${Heading_UD_Kategorie}  xpath=//span[normalize-space()='Kategorie']
${Heading_UD_Nazev}  xpath=//span[normalize-space()='Název']
${UD_Prvek_Nazev_Oznameni}  xpath=//a[contains(text(),'Finanční úřad pro Jihomoravský kraj')]
${UD_Prvek_Datum_Oznameni}  xpath=//span[normalize-space()='14. 4. 2025']


#TC21
${Heading_Formulare_Main_XPath}  xpath=//h1[contains(text(),'Formuláře ke stažení')]
${Section_Formulare_OdborUzemnihoRozvoje_XPath}  xpath=//h2[contains(text(),'Odbor územního rozvoje')]
${Section_Formulare_ObecniUrad_XPath}  xpath=//h2[contains(text(),'Obecní úřad')]
${Section_Formulare_Majetek_XPath}  xpath=//h2[contains(text(),'Majetek')]


#Fotografie
${Heading_Fotografie}  xpath=//h1[normalize-space()='Fotogalerie']
${Heading_Fotografie_VitaniObcanu}  xpath=//a[@href='/vitani-obcanku']//div[@class='p-4 bg-white gap-2']//h2[@class='text-xl font-bold group-hover:text-secondary transition ease-in-out'][contains(text(),'Vítání občánků')]
${Heading_Fotografie_VitaniObcanu2025}  xpath=//h2[contains(text(),'Vítání občánků - březen 2025')]
${Heading_Fotografie_VitaniObcanu2024}  xpath=//a[3]//div[2]
${Heading_Fotografie_VinobraniSobota2024}  xpath=//h2[normalize-space()='Bzenecké vinobraní - sobota 21.9.2024']
${Heading_Fotografie_VinobraniPatek2024}  xpath=//h2[normalize-space()='Bzenecké vinobraní - pátek 20.9.2024']
${Heading_Fotografie_Kultura}  xpath=//h2[normalize-space()='Kultura - fotogalerie']
${Heading_Fotografie_ZayijteBzenec}  xpath=//h2[contains(text(),'Zažijte Bzenec fotogalerie')]
${Heading_Fotografie_VitaniObcanu2023}  xpath=//h2[contains(text(),'Vítání občánků 2023')]
${Heading_Fotografie_VitaniObcanu2022prosinec}  xpath=//h2[contains(text(),'Vítání občánků 2022 - prosinec')]
${Heading_Fotografie_VitaniObcanu2022duben}  xpath=//h2[contains(text(),'Vítání občánků 2022 duben')]
${Heading_Fotografie_VitaniObcanu2021}  xpath=//h2[contains(text(),'Vítání občánků 2021')]
${Heading_Fotografie_BzeneckyFasank}  xpath=//h2[contains(text(),'Bzenecký fašaňk')]
${Heading_Fotografie_JarniVysatava}  xpath=//h2[normalize-space()='Jarní výstava']
${Heading_Fotografie_PaleniCarodejnic}  xpath=//h2[contains(text(),'Pálení čarodějnic')]
${Heading_Fotografie_BzeneckyGulas}  xpath=//h2[contains(text(),'Bzenecký guláš')]
${Heading_Fotografie_BzeneckaPout}  xpath=//h2[contains(text(),'Bzenecká pouť')]
${Heading_Fotografie_Vinobrani2022}  xpath=//h2[normalize-space()='Vinobraní 2022']
${Heading_Fotografie_VanoceNaZamku}  xpath=//h2[normalize-space()='Vánoce na zámku']
${Heading_Fotografie_BzenecZVysky}  xpath=//h2[contains(text(),'Bzenec z výšky')]
${Heading_Fotografie_MestoVPrubehuRoku}  xpath=//h2[contains(text(),'Město v průběhu roku')]
${Heading_Fotografie_Priorda}  xpath=//h2[contains(text(),'Příroda')]


${Heading_Fotografie_ZazijteBzenec_BzenecZVysky}  xpath=//h1[contains(text(),'Bzenec z výšky')]
${Heading_Fotografie_ZazijteBzenec_PhotoLabel}  xpath=//div[contains(@class, 'lg-sub-html')]


#Videoreportaz
${Heading_Videoreportaze}  xpath=//h1[normalize-space()='Videoreportáže']

${Heading_OdberNovinek}  xpath=//h2[contains(text(),'Odběr novinek')]
${Heading_OdberNovinek_aktivni}  xpath=//h1[contains(text(),'Odběr novinek')]




