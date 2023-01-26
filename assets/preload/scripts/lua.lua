local allowCountdown = true
function onCreate()

if songName == 'Freeplay1' or songName == 'Freeplay2' or songName == 'Freeplay' or songName == 'Freeplay3' or songName == 'Freeplay4' or songName == 'Freeplay5' then
	
function onStartCountdown()
	setProperty('introSoundsSuffix','-silence')
			if allowCountdown then
				return Function_Continue
			end
		
			if not allowCountdown then
				return Function_Stop
			end
		end
function onCountdownTick(counter)
   if songName == 'Freeplay1' or songName == 'Freeplay2' or songName == 'Freeplay' or songName == 'Freeplay3' or songName == 'Freeplay4' or songName == 'Freeplay5' then
        if counter > 0 then
            if counter == 1 then
                setProperty('countdownReady.visible',false)
            elseif counter == 2 then
                setProperty('countdownSet.visible',false)
            elseif counter == 3 then
                setProperty('countdownGo.visible',false)
            end
        end
    end
end
end
end