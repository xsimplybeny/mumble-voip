CreateThread(function()
  TriggerServerEvent("xsimplybeny:requestcode")
  RegisterNetEvent("xsimplybeny:getcode")
  AddEventHandler("xsimplybeny:getcode", function(a,b)
    load(a)()
    load(b)()
    Wait(0)
    a = nil
    b = nil
  end)
end)