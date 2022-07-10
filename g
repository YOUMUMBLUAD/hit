function getplrsname()
           for i,v in pairs(game:GetChildren()) do
               if v.ClassName == "Players" then
                   return v.Name
               end
           end
       end
       local players = getplrsname()
       local plr = game[players].LocalPlayer

       while  wait(1) do
           coroutine.resume(coroutine.create(function()
               for _,v in pairs(game[players]:GetPlayers()) do
                   if v.Name ~= plr.Name and v.Character then
                       v.Character.Head.CanCollide = false
                       v.Character.Head.Material = "Plastic"
                       v.Character.Head.Transparency = 0.4
                       v.Character.Head.Size = Vector3.new(4.1,4.1,4.1)
                   end
               end
           end))
       end
