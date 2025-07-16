*** Variables ***
#Searchbar/icon
${Input_Vyhledat_XPath}  xpath=//input[@id='vyhledavani']
${Input_OtevritVyhledavani_XPath}  xpath=//button[contains(@class, 'search')]
${Input_ZadejKlicovyVyraz}  xpath=//input[@placeholder='Zadejte klíčový výraz']

#UD
${Input_UD_vyhledavani}  xpath=//form[@class='flex flex-wrap gap-3 xs:flex-nowrap js-classic-search mt-5 md:mt-6']//input[@id='vyhledavani']
#UD_Kategorie
${Input_UD_Kategorie_Vyber_XPath}  xpath=//div[@class='c-custom-select__selected'][contains(text(),'-- Vše --')]
${Input_UD_Kategorie_Hospodareni2022_XPath}  xpath=//div[@class='c-custom-select opened']//div[@class='c-custom-select__items']//div[2]
${Input_UD_Kategorie_Hospodareni2023_XPath}  xpath=//div[@class='c-custom-select opened']//div[3]



${Input_UD_Kategorie_Informator_XPath}  xpath=//div[@class='c-custom-select opened']//div[4]
${Input_UD_Kategorie_Mikroregion_XPath}   xpath=//div[@class='c-custom-select opened']//div[5]
${Input_UD_Kategorie_NarizeniMesta_XPath}  xpath=//div[@class='c-custom-select opened']//div[6]
${Input_UD_Kategorie_Vyhlasky_XPath}  xpath=//div[@class='c-custom-select opened']//div[7]
${Input_UD_Kategorie_PostaProObcany_XPath}  xpath=//div[@class='c-custom-select opened']//div[8]
${Input_UD_Kategorie_Rozpocet2023_XPath}  xpath=//div[@class='c-custom-select opened']//div[9]
${Input_UD_Kategorie_Rozpocet2024_XPath}  xpath=//div[@class='c-custom-select opened']//div[10]
${Input_UD_Kategorie_Rozpocet2025_XPath}  xpath=//div[@class='c-custom-select opened']//div[11]
${Input_UD_Kategorie_SocialniOdbor_XPath}  xpath=//div[@class='c-custom-select opened']//div[12]
${Input_UD_Kategorie_SpravaMajetku_XPath}  xpath=//div[@class='c-custom-select opened']//div[13]
${Input_UD_Kategorie_StavebniUrad_XPath}  xpath=//div[@class='c-custom-select opened']//div[14]
${Input_UD_Kategorie_Tajemnik_XPath}  xpath=//div[@class='c-custom-select opened']//div[15]
${Input_UD_Kategorie_UsneseniRady_XPath}  xpath=//div[@class='c-custom-select opened']//div[16]
${Input_UD_Kategorie_ZastupovaniStat_XPath}  xpath=//div[@class='c-custom-select opened']//div[17]
${Input_UD_Kategorie_VerejnopravniSmlouvy_XPath}  xpath=//div[@class='c-custom-select opened']//div[18]
${Input_UD_Kategorie_Volby_XPath}  xpath=//div[@class='c-custom-select opened']//div[19]
${Input_UD_Kategorie_Vyhlasky_XPath}  xpath=//div[@class='c-custom-select opened']//div[20]
${Input_UD_Kategorie_VypisZeZapisu_XPath}  xpath=//div[@class='c-custom-select opened']//div[21]
${Input_UD_Kategorie_ZastupitelstvoPozvanky_XPath}  xpath=//div[@class='c-custom-select opened']//div[22]
${Input_UD_Kategorie_ZtratyNalezy_XPath}  xpath=//div[@class='c-custom-select opened']//div[23]
${Input_UD_Kategorie_ZivotniProstredi_XPath}  xpath=//div[@class='c-custom-select opened']//div[24]
#UD_Typ
${Input_UD_Typ_XPath}  xpath=//div[@class='c-custom-select__selected'][normalize-space()='Aktuální záznamy']
${Input_UD_Typ_Aktualni_XPath}  xpath=//div[@class='c-custom-select__items-item'][normalize-space()='Aktuální záznamy']
${Input_UD_Typ_Archivovane_XPath}  xpath=//div[normalize-space()='Archivované záznamy']
${Input_UD_Typ_Vsechny_XPath}  xpath=//div[@class='c-custom-select opened']//div[3]

#Odber Novinek
${Input_OdberNovinek}  xpath=//input[@id='frm-modules-footer-module4-form-email']

