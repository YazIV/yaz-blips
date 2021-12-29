local blips = {
    -- Example {title="", colour=, id=, x=, y=, z=},
	{title="Pharmacy", colour=5, id=403, x=-174.26, y=6386.2, z=31.5, scale= 0.9},
	{title="Pharmacy", colour=5, id=403, x=377.8, y=-828.67, z=29.29, scale= 0.9},
	{title="Paleto's Mechanic Shop", colour=0, id=446, x=76.35, y=6524.18, z=31.25, scale= 0.8},
	{title="Court", colour=66, id=537, x=-549.91, y=-195.73, z=38.22, scale= 0.5},
	{title="Sandy Hospital", colour=17, id=622, x=1825.84, y=3672.31, z=35.27, scale= 0.7},
	{title="Sandy Sheriff Department", colour=51, id=60, x=1854.09, y=3686.56, z=34.27, scale= 0.7},
	{title="Gem Pawnbrokers", colour=5, id=490, x=-1459.46, y=-413.61, z=35.75, scale= 0.8},
	{title="Smelting", colour=70, id=436, x=1088.01, y=-2001.87, z=30.88, scale= 0.5},
  }
vector3(-1459.46, -413.61, 35.75)
Citizen.CreateThread(function()

    for _, info in pairs(blips) do
      info.blip = AddBlipForCoord(info.x, info.y, info.z)
      SetBlipSprite(info.blip, info.id)
      SetBlipDisplay(info.blip, 4)
      SetBlipScale(info.blip, info.scale)
      SetBlipColour(info.blip, info.colour)
      SetBlipAsShortRange(info.blip, true)
	  BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
    end
end)
