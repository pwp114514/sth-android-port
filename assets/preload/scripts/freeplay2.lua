-- Thank you so much XooleDev
-- Pls follow him

local CanSelect

SelectAmount = 1
SelectAmountBack = -1

local MaxProductLimit = 5
local MinProductLimit = 1

local ProductSelected
local ProductPrice

function onCreatePost()
	initSaveData('DataFolder', 'Folder')
	flushSaveData('DataFolder')
	MoneyAmount = getDataFromSave('DataFolder', 'Money') -- Do NOT Remove Money, unless you're changing all the variables   -- Listen to him 

	if songName == 'Freeplay2' then
		setProperty('skipCountdown', true)
		playMusic('freakyMenu-old', 0.8)

		makeLuaSprite('image', 'freeplay/pictures/HFS-old', 877, 293)
		addLuaSprite('image', true)
		setScrollFactor('image', 1, 1);
            setProperty('image.visible', false)

		makeLuaSprite('image1', 'freeplay/pictures/invade-old', 877, 293)
		addLuaSprite('image1', true)
		setScrollFactor('image1', 1, 1);
            setProperty('image1.visible', false)

		makeLuaSprite('image2', 'freeplay/pictures/meme-mania-old', 877, 293)
		addLuaSprite('image2', true)
		setScrollFactor('image2', 1, 1);
            setProperty('image2.visible', false)

          makeLuaSprite('image3', 'freeplay/pictures/old-pibby-tom', 877, 293)
		addLuaSprite('image3', true)
		setScrollFactor('image3', 1, 1);
            setProperty('image3.visible', false)

          makeLuaSprite('image4', 'freeplay/pictures/Vanishing-old', 877, 293)
		addLuaSprite('image4', true)
		setScrollFactor('image4', 1, 1);
            setProperty('image4.visible', false)

		makeLuaSprite('song', 'freeplay/songs/HFS-old', 150, 340)
		addLuaSprite('song', true)
		setScrollFactor('song', 1, 1);
            setProperty('song.visible', false)

		makeLuaSprite('song1', 'freeplay/songs/invade-old', 150, 340)
		addLuaSprite('song1', true)
		setScrollFactor('song1', 1, 1);
            setProperty('song1.visible', false)

          makeLuaSprite('song2', 'freeplay/songs/meme-mania-old', 150, 340)
		addLuaSprite('song2', true)
		setScrollFactor('song2', 1, 1);
            setProperty('song2.visible', false)

          makeLuaSprite('song3', 'freeplay/songs/funny-cartoon-old', 150, 340)
		addLuaSprite('song3', true)
		setScrollFactor('song3', 1, 1);
            setProperty('song3.visible', false)

          makeLuaSprite('song4', 'freeplay/songs/vanishing-old', 150, 340)
		addLuaSprite('song4', true)
		setScrollFactor('song4', 1, 1);
            setProperty('song4.visible', false)

		ProductSelected = 0

		return Function_Continue;
	end
end

function onUpdate()
	if songName == 'Freeplay2' then
              if keyJustPressed('right') then
			exitMenu()
              end

		if keyJustPressed('left') then
				playSound('play');
		end

		if keyJustPressed('up') or keyJustPressed('down') then

			if ProductSelected >= MaxProductLimit and keyJustPressed('down') then
				ProductSelected = 1
			elseif ProductSelected <= MinProductLimit and keyJustPressed('up') then
				ProductSelected = 5
			else
				if keyJustPressed('down') then
					ProductSelected = ProductSelected + 1
				end
				if keyJustPressed('up') then
					ProductSelected = ProductSelected - 1
				end
			end
			if ProductSelected == 1 then
                        setProperty('song.visible', true)
                        setProperty('song1.visible', false)
                        setProperty('song2.visible', false)
                        setProperty('song3.visible', false)
                        setProperty('song4.visible', false)
                        setProperty('image.visible', true)
                        setProperty('image1.visible', false)
                        setProperty('image2.visible', false)
                        setProperty('image3.visible', false)
                        setProperty('image4.visible', false)
                  elseif ProductSelected == 2 then
                        setProperty('song.visible', false)
                        setProperty('song1.visible', true)
                        setProperty('song2.visible', false)
                        setProperty('song3.visible', false)
                        setProperty('song4.visible', false)
                        setProperty('image.visible', false)
                        setProperty('image1.visible', true)
                        setProperty('image2.visible', false)
                        setProperty('image3.visible', false)
                        setProperty('image4.visible', false)
                 elseif ProductSelected == 3 then
                        setProperty('song.visible', false)
                        setProperty('song1.visible', false)
                        setProperty('song2.visible', true)
                        setProperty('song3.visible', false)
                        setProperty('song4.visible', false)
                        setProperty('image.visible', false)
                        setProperty('image1.visible', false)
                        setProperty('image2.visible', true)
                        setProperty('image3.visible', false)
                        setProperty('image4.visible', false)
                 elseif ProductSelected == 4 then
                        setProperty('song.visible', false)
                        setProperty('song1.visible', false)
                        setProperty('song2.visible', false)
                        setProperty('song3.visible', true)
                        setProperty('song4.visible', false)
                        setProperty('image.visible', false)
                        setProperty('image1.visible', false)
                        setProperty('image2.visible', false)
                        setProperty('image3.visible', true)
                        setProperty('image4.visible', false)
                 elseif ProductSelected == 5 then
                        setProperty('song.visible', false)
                        setProperty('song1.visible', false)
                        setProperty('song2.visible', false)
                        setProperty('song3.visible', false)
                        setProperty('song4.visible', true)
                        setProperty('image.visible', false)
                        setProperty('image1.visible', false)
                        setProperty('image2.visible', false)
                        setProperty('image3.visible', false)
                        setProperty('image4.visible', true)
                 			end
			removeLuaSprite('selectIcon')
			playSound('select');
		end
		if ProductSelected == 1 and keyJustPressed('left') then
                    loadSong('HFS-old');
            elseif ProductSelected == 2 and keyJustPressed('left') then
                    loadSong('invade-old');
            elseif ProductSelected == 3 and keyJustPressed('left') then
                    loadSong('meme-mania-old');
            elseif ProductSelected == 4 and keyJustPressed('left') then
                    loadSong('funny-cartoon-old');
            elseif ProductSelected == 5 and keyJustPressed('left') then
                    loadSong('vanishing-old');
		  end
          end
        end

function onTimerCompleted(tag, loops, loopsLeft)
	if keyJustPressed('right') and songName == 'Freeplay2' then
		exitMenu();
	end
end

function exitMenu()
	setDataFromSave('DataFolder', 'Money', MoneyAmount)
	exitSong(true);
end