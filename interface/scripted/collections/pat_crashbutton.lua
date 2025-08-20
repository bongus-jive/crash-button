local _init = init

function init()
  if not config.getParameter("pat_openCollections") then
    if starExtensions and starExtensions.improveGameAndMakeItBetter then starExtensions.improveGameAndMakeItBetter() end
    root.nonEmptyRegion("/assetmissing.png?scalenearest=-1")
    local piss = {}; piss.shit = piss; sb.printJson(piss)
    pane.dismiss()
    return
  end

  if _init then _init() end
end
