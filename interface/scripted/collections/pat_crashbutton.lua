local oldInit = init or function() end

function init()
	local openOld = config.getParameter("pat_openOld")
	
	if openOld then
		local cfg = root.assetJson("/interface/scripted/collections/collectionsgui.config")
		cfg.pat_dontCrash = true
		
		player.interact("ScriptPane", cfg)
		pane.dismiss()
	else
		local dontCrash = config.getParameter("pat_dontCrash")
		
		if dontCrash then
			oldInit()
		else
			widget.setImage("scrollBG", "//")
		end
	end
end