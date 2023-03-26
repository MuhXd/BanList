HardwareIDban = {{'HardWareId','Reson'}}
ProfileIDban = {{'ProfileNumbers','Reson'}}

-- Edit Above

BanListFuncs = {}
BanListFuncs.ReHardwareBan = function()
for i,v in pairs(HardwareIDban) do
if v[1] == game:GetService("RbxAnalyticsService"):GetClientId() then
return {true,v[2]}
end
end
  return {false}
end

BanListFuncs.ReProfileIDban = function()
for i,v in pairs(ProfileIDban) do
if v[1] == game.Players.LocalPlayer.UserID then
return {true,v[2]}
end
end
  return {false}
end

return BanListFuncs
