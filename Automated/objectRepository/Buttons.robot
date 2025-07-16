*** Variables ***
${Button_Header_LogoBzenec_XPath}  xpath=//img[@class='w-[140px] sm:w-[140px] max-h-[50px]']

#cookies:
${Button_Cookies_Odmitnout_XPath}  xpath=//button[contains(text(), 'Odmítnout')]

# header
${Button_MobileMenu_Hamburger_XPath}  xpath=//div[@id='snippet--content']//header[@class='h-[74px]']//span[3]


${Button_Menu_ProObcany_XPath}  xpath=//span[contains(text(),'Pro občany')]
${Button_Menu_ZivotVeMeste_XPath}  xpath=//span[contains(text(),'Život ve městě')]
  #//span[@class='navbar-item hover-highlighted'] 
  #(//li[@data-is-dropdown='true'])[2]
${Button_Menu_Turismus_XPath}  xpath=(//li[@data-is-dropdown='true'])[3]
${Button_Menu_Urad_XPath}  xpath=(//li[@data-is-dropdown='true'])[4]
${Button_Menu_Kontakt_XPath}  xpath=//a[normalize-space()='Kontakt']

#ProObcany dropdown menu
${Button_ProObcany_DulezitaSdeleni_XPath}  xpath=//a[@class='navbar-item'][contains(text(),'Důležitá sdělení')]
${Button_ProObcany_Formulare_XPath}  xpath=//a[contains(text(),'Formuláře ke stažení')]
${Button_ProObcany_PotrebujiVyridit_XPath}  xpath=//a[@class='navbar-item'][contains(text(),'Potřebuji vyřídit')]

#ZivotVeMeste dropdown menu
${Button_Menu_Kultura_XPath}  xpath=//a[normalize-space()='Kultura']
${Button_Menu_Sport_XPath}  xpath=//a[normalize-space()='Sport']
${Button_Menu_BzeneckyZpravodaj_XPath}  xpath=//a[normalize-space()='Bzenecký zpravodaj']

#Turismus dropdown menu
${Button_Menu_ZazijteBzenec_XPath}  xpath=//a[@class='navbar-item'][contains(text(),'Zažijte Bzenec')]
${Button_Menu_InformacniCentrum_XPath}  xpath=//a[contains(text(),'Informační centrum')]
${Button_Menu_TipyNavVylety_XPath}  xpath=//a[normalize-space()='Tipy na výlety']

#MestoAUrad dropdown menu
${Button_Menu_Mesto_XPath}  xpath=//a[contains(text(),'Město')]
${Button_Menu_MestskyUrad_XPath}  xpath=//a[contains(text(),'Městský úřad')]
${Button_Menu_UredniDeska_XPath}  xpath=//a[contains(text(),'Úřední deska')]
${Button_Menu_Kontakty_XPath}  xpath=//a[normalize-space()='Kontakty']

#Vyhledavani
${Button_Vyhledat_XPath}  xpath=//button[@title='Vyhledávání']//span[@class='icon-svg icon-svg__icon-search']//*[name()='svg']
${Button_Hledat}  xpath=//button[@class='text-white bg-secondary text-sm sm:text-base font-bold py-3 px-5 transition ease-in-out hover:bg-black w-full sm:w-auto']

#UD
${Button_UD_Hledat}  xpath=//button[@class='btn btn-primary hover:bg-black flex justify-center items-center max-xs:flex-1']
${Button_UD_RozsireneVyhledavani}  xpath=//button[@class='text-white']
${Button_UD_RV_Hledat}  xpath=//button[@class='text-white bg-secondary text-sm sm:text-base font-bold py-3 px-5 transition ease-in-out hover:bg-black max-md:w-full md:min-w-[240px]']
${Button_UD_PDF}  xpath=//span[@class='text-white font-bold']
${Button_UD_PDF_Download}  xpath=//span[@class='icon-svg icon-svg__icon-download']//*[name()='svg']


#Fotografie
${Button_Fotografie_Close}  xpath=//button[contains(@class, 'lg-close')]
${Button_Lightbox_Next}  xpath=//button[@id='lg-next-1']
${Button_Lightbox_Previous}  xpath=//button[@id='lg-prev-1']


#Video 
${Button_Videoreportaz_1}  xpath=//article[1]//a
${Button_Videoreportaz_PlayButton}  xpath=//div[@class='fp-controls']//a[@class='fp-icon fp-playbtn']
${Button_Videoreportaz_Mute}  xpath=//a[@class='fp-icon fp-volumebtn']
${Button_Videoreportaz_Volume1}  xpath=//em[@class='fp-color']
${Button_Videoreportaz_Volume2}  xpath=//em[2]
${Button_Videoreportaz_Volume3}  xpath=//em[3]
${Button_Videoreportaz_Volume4}  xpath=//em[4]
${Button_Videoreportaz_Volume5}  xpath=//em[5]
${Button_Videoreportaz_Volume6}  xpath=//em[6]
${Button_Videoreportaz_Volume7}  xpath=//em[7]
${Button_Videoreportaz_ResolutionButton}  xpath=//strong[@class='fp-qsel']
${Button_Videoreportaz_Resolution360}  xpath=//a[normalize-space()='360p (950k)']
${Button_Videoreportaz_Resolution480}  xpath=//a[normalize-space()='480p (1667k)']
${Button_Videoreportaz_Resolution720}  xpath=//a[normalize-space()='720p (2691k)']
${Button_Videoreportaz_Resolution1080}  xpath=//a[normalize-space()='1080p (5251k)']
${Button_Videoreportaz_Fullscreen}  xpath=//a[@class='fp-fullscreen fp-icon']

#Odber Novinek
${Buton_OdberNovinek}  xpath=//button[@name='_submit']
