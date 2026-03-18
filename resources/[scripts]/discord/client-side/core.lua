-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP:ACTIVE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("vRP:Active")
AddEventHandler("vRP:Active",function(Passport,Name)
	SetDiscordAppId(1324886951727464448)
	SetDiscordRichPresenceAsset("dayligy")
    SetRichPresence("#"..Passport.." "..Name)
    SetDiscordRichPresenceAssetText("Olavo Network")
    SetDiscordRichPresenceAssetSmall("dayligy")
    SetDiscordRichPresenceAssetSmallText("Olavo Network")
    SetDiscordRichPresenceAction(0, "Discord", "https://discord.gg/headnanB2D")
end)