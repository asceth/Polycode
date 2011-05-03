class "TweenManager"







function TweenManager:TweenManager(...)
	for k,v in pairs(arg) do
		if type(v) == "table" then
			if v.__ptr ~= nil then
				arg[k] = v.__ptr
			end
		end
	end
	if self.__ptr == nil and arg[1] ~= "__skip_ptr__" then
		self.__ptr = Polycore.TweenManager(unpack(arg))
	end
end

function TweenManager:addTween(tween)
	local retVal = Polycore.TweenManager_addTween(self.__ptr, tween.__ptr)
end

function TweenManager:Update()
	local retVal =  Polycore.TweenManager_Update(self.__ptr)
end

