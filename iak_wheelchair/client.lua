RegisterCommand('wheelchair', function()
    local ped = PlayerPedId()
    local pedCoords = GetEntityCoords(ped)
    local model = -1963629913

    RequestModel(model)
    
    while not HasModelLoaded(model) do
        Citizen.Wait(0)
    end

    local wheelchair = CreateVehicle(model, pedCoords.x, pedCoords.y, pedCoords.z, 100.0, true, false)
    SetVehicleStrong(wheelchair, true)
     -- your own vehicle lock system may over-ride this (read README for more info)
	SetVehicleDoorsLocked(wheelchair, 0)
    SetModelAsNoLongerNeeded(model)
end, false)
