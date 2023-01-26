function wd(r, qp)
    if qp == nil then
        qp = "%s";
    end
    local t={};
    for rt in string.gmatch(r, "([^"..qp.."]+)") do
    table.insert(t, rt);
    end
    return t;
end

windowOGPosition = {--mdmdmdmdmdmdmdmdmdmdmdmdÕâÍæÓ¦ÊÖ»úÓÃ²»ÁËÒ¯¸øÄãÃÇÐ´¸öHUDÒÆ¶¯
315,
180
} --ï¿½ï¿½ï¿½ï¿½Îªï¿½ï¿½ï¿½ï¿½Ä¬ï¿½Ï´ï¿½ï¿½ï¿½Î»ï¿½ï¿½
--ï¿½ï¿½Ò»ï¿½ï¿½315Îªx
--ï¿½Ú¶ï¿½ï¿½ï¿½180Îªy

--event value12Ê¾ï¿½ï¿½
--[[

value1ï¿½ï¿½xï¿½ï¿½Îªxï¿½Ä±ï¿½ yï¿½ï¿½Îªy

value2ï¿½ï¿½Ò»ï¿½ï¿½ï¿½ï¿½Î»ï¿½ï¿½ ï¿½Ú¶ï¿½ï¿½ï¿½ï¿½ï¿½Ê±ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½î²¹ï¿½ä·½Ê½

ï¿½ï¿½ï¿½ï¿½

value1:x

value2:315,3,"quadInOut"

ï¿½ò´°¿Ú»ï¿½ï¿½ï¿½3ï¿½ï¿½ï¿½ï¿½ï¿½quadInOutï¿½Ä²ï¿½ï¿½ä·½Ê½ï¿½Æ¶ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½315

                                                        --Niko_matthew
                                                                                                      
]]
function onCreate()
time = 0
makeLuaSprite('windowPosition','',windowOGPosition[1],windowOGPosition[2])
end

function onEvent(name, value1, value2)
if name == 'window xy' then
  if value1 == 'x' then
    time = time + 1
    i = wd(value2,",");  
    doTweenX('XXX'..time,'windowPosition',i[1],i[2],'cubeOut')
  elseif value1 == 'y' then
    time = time + 1
    i = wd(value2,",");  
    doTweenY('YYY'..time,'windowPosition',i[1],i[2],'cubeOut')
        end
    end
end

function onUpdate()
setPropertyFromClass('openfl.Lib','application.window.x', getProperty('windowPosition.x'))
setPropertyFromClass('openfl.Lib','application.window.y', getProperty('windowPosition.y'))
end
