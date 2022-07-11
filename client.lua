RegisterNetEvent('notifications')
AddEventHandler('notifications', function(color, title, message)
    SendNUIMessage({
        type = "custom",
        color = color,
		title = title,
        message = message,
    })
    
	PlaySoundFrontend(-1, "ATM_WINDOW", "HUD_FRONTEND_DEFAULT_SOUNDSET", 1)
end)

RegisterCommand("test_notify", function()
    TriggerEvent('notifications', "info", "Awesome title", "Awesome message")
    TriggerEvent('notifications', "orange", "Awesome title", "Awesome message")
    TriggerEvent('notifications', "grey", "Awesome title", "Awesome message")
    TriggerEvent('notifications', "green", "Awesome title", "Awesome message")
end, false)