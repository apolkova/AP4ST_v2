*** Variables ***

${Video_Kontejner}  xpath=//iframe[@class='News-video']
${Video_Play_Button}  xpath=//div[@class='fp-ui']//div[@class='fp-play']
${Video_Tag}  xpath=//div[contains(@class, 'fp-player')]//video
${Video_IsPlaying}  xpath=//div[@id='player'][contains(@class, 'is-playing')]
${Video_IsPaused}  xpath=//div[@id='player'][contains(@class, 'is-paused')]


