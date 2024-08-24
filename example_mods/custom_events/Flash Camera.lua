function onCreate()
	if getPropertyFromClass('states.PlayState','chartingMode') == false then
		makeLuaSprite('flash', '', 0, 0);
		makeGraphic('flash',1920,1080,'FFFFFF')
		addLuaSprite('flash', false);
		setLuaSpriteScrollFactor('flash',0,0)
		setProperty('flash.scale.x',2)
		setProperty('flash.scale.y',2)
		setObjectCamera('flash', 'HUD')
		setProperty('flash.alpha',0);
	end
end
function onEvent(event,value1,value2)
	if event == 'Flash Camera' and getPropertyFromClass('states.PlayState','chartingMode') == false then
		makeLuaSprite('flash', '', 0, 0);
		if value2 == '' then
			setProperty('flash.alpha',1);
		else
			setProperty('flash.alpha',value2);
		end
		makeGraphic('flash',1920,1080,'FFFFFF')
		addLuaSprite('flash', true);
		setLuaSpriteScrollFactor('flash',0,0)
		setProperty('flash.scale.x',2)
		setProperty('flash.scale.y',2)
		setObjectCamera('flash', 'HUD')
		setProperty('flash.alpha',1);
		screenCenter('flash');
		doTweenAlpha('flTw','flash',0,value1,'linear')
	end
end