local HudPieces = {''}
local index = 1
function onCreatePost()

	

------------------------------------------------------------------------
	--THE TOP BAR--
	makeLuaSprite('UpperBar', 'blank', -110, -360)
	makeGraphic('UpperBar', 1500, 350, '000000')
	setObjectCamera('UpperBar', 'HUD')
	addLuaSprite('UpperBar', false)


	--THE BOTTOM BAR--
	makeLuaSprite('LowerBar', 'blank', -110, 730)
	makeGraphic('LowerBar', 1500, 350, '000000')
	setObjectCamera('LowerBar', 'HUD')
	addLuaSprite('LowerBar', false)
	
------------------------------------------------------------------------

	UpperBar = getProperty('UpperBar.y')
	LowerBar = getProperty('LowerBar.y')
end



--FOR UPSCROLL ENTRANCE--
------------------------------------------------------------------------
function onEvent(name, value1, value2)
	if name == 'Better Cinematics' then
	
	Speed = tonumber(value1)
	Distance = tonumber(value2)
	
	
	
	end

	if Speed > 0 then	

	doTweenY('Cinematics1', 'UpperBar', UpperBar + Distance, Speed, 'QuadOut')
	doTweenY('Cinematics2', 'LowerBar', LowerBar - Distance, Speed, 'QuadOut')

		for Alphas = 1,8 do
		doTweenAlpha('Alpha'..Alphas, HudPieces[index], 0, Speed - 0.1)
		index = index + 1
    				
			if index > #HudPieces then
			index = 1
				
			end
		end
	end


--FOR DOWNSCROLL ENTRANCE--
------------------------------------------------------------------------
	if downscroll and Speed > 0 then	

	doTweenY('Cinematics1', 'UpperBar', UpperBar + Distance, Speed, 'QuadOut')
	doTweenY('Cinematics2', 'LowerBar', LowerBar - Distance, Speed, 'QuadOut')

		for Alphas = 1,8 do
		doTweenAlpha('Alpha'..Alphas, HudPieces[index], 0, Speed - 0.1)
		index = index + 1
    				
			if index > #HudPieces then
			index = 1
				
			end
		end
	end
	
	if Distance <= 0 then
		for Alphas = 1,8 do
		doTweenAlpha('Alpha'..Alphas, HudPieces[index], 1, Speed - 0.1)
		index = index + 1
    				
			if index > #HudPieces then
			index = 1
				
			end
		end
	end
end

