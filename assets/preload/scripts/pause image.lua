function onCreate()
makeLuaSprite('pause', 'pause/box', 1115, 0)
scaleObject('pause', 0.3, 0.3)
setObjectCamera('pause', 'other')
addLuaSprite('pause')

makeLuaText('Text', 'enter', 0, 1160, 60)
setTextColor('Text', 'FFFFFF')
setTextFont('Text', 'vcr.ttf')
setTextSize('Text', 30)
setObjectCamera('Text', 'other')
setTextAlignment('Text', "RIGHT")
setTextBorder('Text', 1, '444444')
addLuaText('Text', true)
	
end

--[[function onUpdatePost()
	setProperty('dad.color', '000000')	setProperty('iconP2.color', '000000')
end--]]
