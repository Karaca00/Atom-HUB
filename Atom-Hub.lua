if game.PlaceId==16732694052 then if getgenv().Key=="Q1E67C3W26940X52"then local a=loadstring(game:HttpGet("https://raw.githubusercontent.com/Karaca00/Atom-HUb/refs/heads/main/Fluent%20UI%20Library.lua"))()local b=loadstring(game:HttpGet("https://raw.githubusercontent.com/Karaca00/Atom-HUb/refs/heads/main/InterfaceManager.lua"))()local c=game.Players.LocalPlayer.Character;local d=a:CreateWindow({Title="Atom-Hub",SubTitle="Fisch",TabWidth=160,Size=UDim2.fromOffset(550,320),Acrylic=false,Theme="Darker",MinimizeKey=Enum.KeyCode.LeftControl})do Config={}_G.Config=Config;AllFuncs={}Threads=getgenv().Threads;Players=game.Players;LocalPlayer=game.Players.LocalPlayer;Client=game.Players.LocalPlayer;ReplicatedStorage=game:GetService('ReplicatedStorage')RunService=game:GetService("RunService")VirtualInputManager=game:GetService('VirtualInputManager')CollectionService=game:GetService("CollectionService")CoreGui=game:GetService("CoreGui")HttpService=game:GetService("HttpService")TeleportService=game:GetService("TeleportService")VirtualUser=game:GetService("VirtualUser")VirtualInputManager=game:GetService("VirtualInputManager")UserInputService=game:GetService("UserInputService")PlayerGui=LocalPlayer.PlayerGui;Backpack=LocalPlayer.Backpack;request=(syn and syn.request)or(http and http.request)or http_request or(fluxus and fluxus.request)or request;Char=Client.Character;Character=Client.Character;if not Threads then getgenv().Threads={}end;repeat LocalPlayer=Players.LocalPlayer;wait()until LocalPlayer end;function Notify(b,c,d)a:Notify({Title=d or"Atom Hub",Content=b,Duration=c or 3})end;_G['Atom Hub Table']={isWindows=UserInputService:GetPlatform()==Enum.Platform.Windows,TypeOs=(table.find({Enum.Platform.Windows},game:GetService('UserInputService'):GetPlatform())~=nil and'Pc')or'Mb',SizeUi=(not isWindows and UDim2.fromOffset(600,300))or UDim2.fromOffset(560,600),AutoSize=true,TweenUiSize=true,SpeedTweenUi=0.25,StyleTweenUi=Enum.EasingStyle.Quad,Mutiply=1.80,SizeX=550,SafePercent=20,AnimationUiToggle=true}_G['Atom Hub Table'].SizeUi=(not _G['Atom Hub Table'].isWindows and UDim2.fromOffset(600,300))or UDim2.fromOffset(560,600)if not _G['Atom Hub Table'].isWindows then if game.CoreGui:FindFirstChild('UIBUTTON')then game.CoreGui:FindFirstChild('UIBUTTON'):Destroy()end;local a=game:GetService("TweenService")local a=game:GetService("UserInputService")local a=Instance.new("ScreenGui")local b=Instance.new("Frame")local c=Instance.new("ImageButton")local d=Instance.new("UICorner")local e=Instance.new("UICorner")a.Name="UIBUTTON"a.Parent=game.CoreGui;a.ZIndexBehavior=Enum.ZIndexBehavior.Sibling;b.Parent=a;b.BackgroundColor3=Color3.fromRGB(15,15,15)b.BorderColor3=Color3.fromRGB(0,0,0)b.BorderSizePixel=0;b.Transparency=1;b.Position=UDim2.new(0.157012194,0,0.164366379,0)b.Size=UDim2.new(0,115,0,49)c.Parent=b;c.BorderSizePixel=0;c.Active=true;c.Draggable=true;c.Position=UDim2.new(0.218742043,0,-0.155235752,0)c.Size=UDim2.new(0,40,0,40)c.Image="rbxassetid://100359220012650"c.MouseButton1Click:Connect(function()local a=game:GetService("VirtualInputManager")a:SendKeyEvent(true,"RightControl",false,game)a:SendKeyEvent(false,"RightControl",false,game)a:SendKeyEvent(true,"LeftControl",false,game)a:SendKeyEvent(false,"LeftControl",false,game)end)d.CornerRadius=UDim.new(0,100)d.Parent=c;e.CornerRadius=UDim.new(0,10)e.Parent=b;local a=game:GetService('UserInputService')local c=b;local d=nil;local e=0.25;local e=nil;local f=nil;c.InputBegan:Connect(function(a)if(a.UserInputType==Enum.UserInputType.MouseButton1 or a.UserInputType==Enum.UserInputType.Touch)then d=true;e=a.Position;f=c.Position;a.Changed:Connect(function()if a.UserInputState==Enum.UserInputState.End then d=false end end)end end)a.InputChanged:Connect(function(a)if a.UserInputType==Enum.UserInputType.MouseMovement or a.UserInputType==Enum.UserInputType.Touch then if d then b.Transparency=1;updateInput(a)else b.Transparency=1 end end end)end;local e={General=d:AddTab({Title="Main",Icon="box"}),Player=d:AddTab({Title="Player",Icon="user"}),Shop=d:AddTab({Title="Shop",Icon="shopping-bag"}),Teleport=d:AddTab({Title="Teleport",Icon="map"}),Settings=d:AddTab({Title="Settings",Icon="settings"})}Toggle=function(a,b,c,d,e,...)local f={...}d=d or b;local f=Config[d]or false;local a=a:AddToggle((b or b.."-toggle"),{Title=b or"null",Default=f,Description=c or""})a:OnChanged(function(a)Config[d]=a;if e then e(a)else if AllFuncs[d]then local b=task.spawn(AllFuncs[d])if not a and b then task.cancel(b)end end end end)return a end;Slider=function(a,b,c,d,e,...)local f,g=...if not g and type(f)=="function"then g=f end;if not f then f=b end;local g=Config[f]local a=a:AddSlider((b or b.."-slider"),{Title=b or"null",Min=c or 0,Max=d or 1,Default=(Config[f]or g)or c,Rounding=(e==true and 1)or 0})a:OnChanged(function(a)Config[f]=a end)task.wait()return a end;TextBox=function(a,b,c,d,e,...)local f,g=...if not g and type(f)=="function"then g=f end;if not f then f=b end;local a=a:AddInput((b or b.."-input"),{Title=b or"Null",Placeholder=d or"Put text here!",Numeric=e or false,Finished=true,Description=c or"",Default=Config[f]})a:OnChanged(function(a)Config[f]=a end)task.wait()return a end;Dropdown=function(a,b,c,d,e,...)local f,g=...if not g and type(f)=="function"then g=f end;f=f or b;if e then c=(c or Config[f])or{}if type(Config[f])=="string"then Config[f]={Config[f]}end else c=(c or Config[f])or""end;local a=a:AddDropdown((b or b.."-dropdown"),{Title=b or"Null",Values=d or{"None"},Multi=e or false,Default=c})a:OnChanged(function(a)if e and type(a)=='table'then Config[f]={}for a,a in pairs(a)do table.insert(Config[f],a)end else Config[f]=a end;if g then g(a)end end)return a end;AllFuncs['Farm Fish']=function()local a=ReplicatedStorage.playerstats[LocalPlayer.Name].Stats.rod.Value;while Config['Farm Fish']and task.wait()do if Backpack:FindFirstChild(a)then LocalPlayer.Character.Humanoid:EquipTool(Backpack:FindFirstChild(a))end;if LocalPlayer.Character:FindFirstChild(a)and LocalPlayer.Character:FindFirstChild(a):FindFirstChild("bobber")then local b=game:GetService("ReplicatedStorage").resources.items.items.GPS.GPS.gpsMain.xyz:Clone()b.Parent=game.Players.LocalPlayer.PlayerGui:WaitForChild("hud"):WaitForChild("safezone"):WaitForChild("backpack")b.Name="Lure"b.Text="<font color='#ff4949'>Lure </font>: 0%"repeat pcall(function()PlayerGui:FindFirstChild("shakeui").safezone:FindFirstChild("button").Size=UDim2.new(1001,0,1001,0)game:GetService("VirtualUser"):Button1Down(Vector2.new(1,1))game:GetService("VirtualUser"):Button1Up(Vector2.new(1,1))end)b.Text="<font color='#ff4949'>Lure </font>: "..tostring(ExportValue(tostring(LocalPlayer.Character:FindFirstChild(a).values.lure.Value),2)).."%"RunService.Heartbeat:Wait()until not LocalPlayer.Character:FindFirstChild(a)or LocalPlayer.Character:FindFirstChild(a).values.bite.Value or not Config['Farm Fish']b.Text="<font color='#ff4949'>FISHING!</font>"delay(1.5,function()b:Destroy()end)repeat ReplicatedStorage.events.reelfinished:FireServer(1000000000000000000000000,true)task.wait(.5)until not LocalPlayer.Character:FindFirstChild(a)or not LocalPlayer.Character:FindFirstChild(a).values.bite.Value or not Config['Farm Fish']else LocalPlayer.Character:FindFirstChild(a).events.cast:FireServer(1000000000000000000000000)task.wait(2)end end end;AllFuncs['To Pos Stand']=function()while Config['To Pos Stand']and task.wait()do if not Config['SelectPositionStand']then Config['To Pos Stand']=false;return end;pcall(function()LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame=Config['SelectPositionStand']end)end end;AllFuncs['Toggle Walk Speed']=function()while Config['Toggle Walk Speed']and task.wait()do pcall(function()LocalPlayer.Character:FindFirstChild("Humanoid").WalkSpeed=Config['Set Walk Speed']end)end;if not Config['Toggle Walk Speed']then pcall(function()LocalPlayer.Character:FindFirstChild("Humanoid").WalkSpeed=16 end)end end;AllFuncs['Toggle Jump Power']=function()while Config['Toggle Jump Power']and task.wait()do pcall(function()LocalPlayer.Character:FindFirstChild("Humanoid").JumpPower=Config['Set Jump Power']end)end;if not Config['Toggle Jump Power']then pcall(function()LocalPlayer.Character:FindFirstChild("Humanoid").JumpPower=50 end)end end;AllFuncs['Toggle Noclip']=function()while Config['Toggle Noclip']and task.wait()do local a=LocalPlayer.Character:GetDescendants()for a,a in pairs(a)do if a:IsA("BasePart")and LocalPlayer.Character then if a.CanCollide then a.CanCollide=false end end end end;if not Config['Toggle Noclip']then local a=LocalPlayer.Character:GetDescendants()for a,a in pairs(a)do if a:IsA("BasePart")and LocalPlayer.Character then a.CanCollide=true end end end end;GetPlayerProfile=function()local a=game:HttpGet("https://thumbnails.roblox.com/v1/users/avatar-bust?userIds="..LocalPlayer.UserId.."&size=420x420&format=Png&isCircular=false")return HttpService:JSONDecode(a)['data'][1]['imageUrl']end;comma_value=function(a)local a=a;while true do local b,c=string.gsub(a,"^(-?%d+)(%d%d%d)","%1,%2")a=b;if c==0 then break end end;return a end;function GetPosition()if not game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")then return{Vector3.new(0,0,0),Vector3.new(0,0,0),Vector3.new(0,0,0)}end;return{game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position.X,game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position.Y,game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position.Z}end;function ExportValue(a,b)return tonumber(string.format("%."..(b or 1)..'f',a))end;Main=e.General:AddSection('Farming')do SelectPosition=Main:AddParagraph({Title="Position : N/A"})Toggle(Main,"Auto Farm Fish","","Farm Fish")Toggle(Main,"Teleport To Save Position","","To Pos Stand")Main:AddButton({Title="Save Position",Callback=function()Config['SelectPositionStand']=LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame;SelectPosition:SetTitle("Position : "..tostring(math.floor(LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position.X)).." X "..tostring(math.floor(LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position.Y)).." Y "..tostring(math.floor(LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position.Z)).." Z")end})end;local f=e.General:AddSection("Seller")local g=f:AddToggle("Toggle",{Title="Return To Original Position",Default=true})local h=true;g:OnChanged(function(a)h=a end)f:AddButton({Title="Sell",Description="Sell In Hand",Callback=function()local a=game.Players.LocalPlayer;local a=a.Character or a.CharacterAdded:Wait()local b=a.HumanoidRootPart.Position;local c=Vector3.new(466,153,228)a:SetPrimaryPartCFrame(CFrame.new(c))local c=workspace:WaitForChild("world"):WaitForChild("npcs"):WaitForChild("Marc Merchant"):WaitForChild("merchant"):WaitForChild("sell")c:InvokeServer()wait(0)if h==true then a:SetPrimaryPartCFrame(CFrame.new(b))end end})f:AddButton({Title="Sell All",Description="Sell In Your Backpack",Callback=function()local a=game.Players.LocalPlayer;local a=a.Character or a.CharacterAdded:Wait()local b=a.HumanoidRootPart.Position;local c=Vector3.new(466,153,228)a:SetPrimaryPartCFrame(CFrame.new(c))local c=workspace:WaitForChild("world"):WaitForChild("npcs"):WaitForChild("Marc Merchant"):WaitForChild("merchant"):WaitForChild("sellall")c:InvokeServer()wait(0)if h==true then a:SetPrimaryPartCFrame(CFrame.new(b))end end})Modify=e.Player:AddSection('Player Modify')do Slider(Modify,"Walk Speed",16,500,false,"Set Walk Speed")Slider(Modify,"Jump Power",50,500,false,"Set Jump Power")Toggle(Modify,"Walk Speed","","Toggle Walk Speed")Toggle(Modify,"Jump Power","","Toggle Jump Power")end;Modify:AddButton({Title="Reset Character",Description="Click To Die",Callback=function()c:WaitForChild("Humanoid").Health=0 end})MiscPlayer=e.Player:AddSection('Misc')do DayOnlyLoop=nil;BypassGpsLoop=nil;Toggle(MiscPlayer,"Bypass Radar","","Bypass Radar",function(a)for b,b in pairs(game:GetService("CollectionService"):GetTagged("radarTag"))do if b:IsA("BillboardGui")or b:IsA("SurfaceGui")then b.Enabled=a end end end)Toggle(MiscPlayer,"Bypass Gps","","Bypass Gps",function(a)if a then local a=game:GetService("ReplicatedStorage").resources.items.items.GPS.GPS.gpsMain.xyz:Clone()a.Parent=game.Players.LocalPlayer.PlayerGui:WaitForChild("hud"):WaitForChild("safezone"):WaitForChild("backpack")local b=GetPosition()local b=string.format("%s,%s,%s",ExportValue(b[1]),ExportValue(b[2]),ExportValue(b[3]))a.Text="<font color='#ff4949'>X</font><font color = '#a3ff81'>Y</font><font color = '#626aff'>Z</font>: "..b;BypassGpsLoop=game:GetService("RunService").Heartbeat:Connect(function()local c=GetPosition()b=string.format("%s,%s,%s",ExportValue(c[1]),ExportValue(c[2]),ExportValue(c[3]))a.Text="<font color='#ff4949'>X</font><font color = '#a3ff81'>Y</font><font color = '#626aff'>Z</font>: "..b end)else if PlayerGui.hud.safezone.backpack:FindFirstChild("xyz")then PlayerGui.hud.safezone.backpack:FindFirstChild("xyz"):Destroy()end;if BypassGpsLoop then BypassGpsLoop:Disconnect()BypassGpsLoop=nil end end end)Toggle(MiscPlayer,"Infinite Oxygen","","Infinite Oxygen",function(a)LocalPlayer.Character.client.oxygen.Disabled=a end)Toggle(MiscPlayer,"Weather Clear","","Weather Clear",function(a)local b=ReplicatedStorage.world.weather.Value;if a then ReplicatedStorage.world.weather.Value='Clear'else ReplicatedStorage.world.weather.Value=b end end)Toggle(MiscPlayer,"Noclip","","Toggle Noclip")Toggle(MiscPlayer,"Walk On Water","","Toggle Walk On Water",function(a)for b,b in pairs(workspace.zones.fishing:GetChildren())do if b.Name=="Ocean"then b.CanCollide=a end end end)Toggle(MiscPlayer,"Remove Fog","","Remove Fog",function(a)if a then if game:GetService("Lighting"):FindFirstChild("Sky")then game:GetService("Lighting"):FindFirstChild("Sky").Parent=game:GetService("Lighting").bloom end else if game:GetService("Lighting").bloom:FindFirstChild("Sky")then game:GetService("Lighting").bloom:FindFirstChild("Sky").Parent=game:GetService("Lighting")end end end)Toggle(MiscPlayer,"Day Only","","Day Only",function(a)if a then DayOnlyLoop=RunService.Heartbeat:Connect(function()game:GetService("Lighting").TimeOfDay="12:00:00"end)else if DayOnlyLoop then DayOnlyLoop:Disconnect()DayOnlyLoop=nil end end end)MiscPlayer:AddButton({Title="Rejoin Server",Description="",Callback=function()TeleportService:TeleportToPlaceInstance(game.placeId,game.jobId,game.Players.LocalPlayer)end})end;Shopit=e.Shop:AddSection("Items Shop")local f=Shopit:AddToggle("Toggle",{Title="Return To Original Position",Default=true})local g=true;f:OnChanged(function(a)g=a end)Shopit:AddButton({Title="Buy Enchant Relic",Description="View [11,000C$]",Callback=function()local a=game.Players.LocalPlayer;local a=a.Character or a.CharacterAdded:Wait()local b=a.HumanoidRootPart.Position;local c=Vector3.new(-931,225,-987)a:SetPrimaryPartCFrame(CFrame.new(c))local c=workspace:WaitForChild("world"):WaitForChild("npcs"):WaitForChild("Merlin"):WaitForChild("Merlin"):WaitForChild("power")c:InvokeServer()wait(0)if g==true then a:SetPrimaryPartCFrame(CFrame.new(b))end end})Shopit:AddButton({Title="Buy Lucky",Description="View [5,000C$]",Callback=function()local a=game.Players.LocalPlayer;local a=a.Character or a.CharacterAdded:Wait()local b=a.HumanoidRootPart.Position;local c=Vector3.new(-931,225,-987)a:SetPrimaryPartCFrame(CFrame.new(c))local c=workspace:WaitForChild("world"):WaitForChild("npcs"):WaitForChild("Merlin"):WaitForChild("Merlin"):WaitForChild("luck")c:InvokeServer()wait(0)if g==true then a:SetPrimaryPartCFrame(CFrame.new(b))end end})Shopit:AddButton({Title="Appraiser Enchant Relic",Description="View [450C$]",Callback=function()local a=game.Players.LocalPlayer;local a=a.Character or a.CharacterAdded:Wait()local b=a.HumanoidRootPart.Position;local c=Vector3.new(441,153,210)a:SetPrimaryPartCFrame(CFrame.new(c))local c=workspace:WaitForChild("world"):WaitForChild("npcs"):WaitForChild("Appraiser"):WaitForChild("appraiser"):WaitForChild("appraise")c:InvokeServer()wait(0)if g==true then a:SetPrimaryPartCFrame(CFrame.new(b))end end})local f=e.Shop:AddSection("Rods Shop")local g=nil;local h=f:AddDropdown("Rods",{Title="Select A Rods",Values={"Flimsy Rod","Buddy Bond Rod","Training Rod","Plastic Rod","Carbon Rod","Long Rod","Fast Rod","Lucky Rod","Steady Rod","Fortune Rod","Rapid Rod","Magma Rod","Fungal Rod","Nocturnal Rod","Aurora Rod","Rod of the Depths","Magnet Rod","Kings Rod","Destiny Rod","Reinforced Rod","Trident Rod","Scurvy Rod"},Multi=false,default=1})h:OnChanged(function(a)g=a end)f:AddButton({Title="Click To Teleport",Description="Teleport To A Rod",Callback=function()if g=="Flimsy Rod"then c.HumanoidRootPart.CFrame=CFrame.new(470.3,150.6,231.5)return end;if g=="Buddy Bond Rod"then c.HumanoidRootPart.CFrame=CFrame.new(413.6,146.5,261.7)return end;if g=="Training Rod"then c.HumanoidRootPart.CFrame=CFrame.new(457.3,150.5,232)return end;if g=="Plastic Rod"then c.HumanoidRootPart.CFrame=CFrame.new(453.5,150.5,231.1)return end;if g=="Carbon Rod"then c.HumanoidRootPart.CFrame=CFrame.new(454.3,153.5,225.1)return end;if g=="Long Rod"then c.HumanoidRootPart.CFrame=CFrame.new(482.9,174.5,147.5)return end;if g=="Fast Rod"then c.HumanoidRootPart.CFrame=CFrame.new(448.3,150.5,220.7)return end;if g=="Lucky Rod"then c.HumanoidRootPart.CFrame=CFrame.new(445.8,150.5,223.4)return end;if g=="Steady Rod"then c.HumanoidRootPart.CFrame=CFrame.new(-1511.4,141.9,761)return end;if g=="Fortune Rod"then c.HumanoidRootPart.CFrame=CFrame.new(-1521.7,144.2,772.2)return end;if g=="Rapid Rod"then c.HumanoidRootPart.CFrame=CFrame.new(-1509.4,141.9,761.9)return end;if g=="Magma Rod"then c.HumanoidRootPart.CFrame=CFrame.new(-1848.8,165.7,162.6)return end;if g=="Fungal Rod"then c.HumanoidRootPart.CFrame=CFrame.new(2599.3,132.4,-728.1)return end;if g=="Nocturnal Rod"then c.HumanoidRootPart.CFrame=CFrame.new(-145.2,-512.2,1137.1)return end;if g=="Aurora Rod"then c.HumanoidRootPart.CFrame=CFrame.new(-144.6,-515.2,1131.9)return end;if g=="Rod of the Depths"then c.HumanoidRootPart.CFrame=CFrame.new(1705.7,-902.5,1444.7)return end;if g=="Magnet Rod"then c.HumanoidRootPart.CFrame=CFrame.new(-196.3,132.5,1931)return end;if g=="Kings Rod"then c.HumanoidRootPart.CFrame=CFrame.new(1375.9,-807.1,-304.6)return end;if g=="Destiny Rod"then c.HumanoidRootPart.CFrame=CFrame.new(978.7,131.3,-1232.3)return end;if g=="Reinforced Rod"then c.HumanoidRootPart.CFrame=CFrame.new(-989.4,-244.4,-2695.5)return end;if g=="Trident Rod"then c.HumanoidRootPart.CFrame=CFrame.new(-1484.1,-226,-2199.2)return end;if g=="Scurvy Rod"then c.HumanoidRootPart.CFrame=CFrame.new(-2825.5,214.7,1512.3)return end end})local f={}GetCount=function(a)local b=0;for c,c in pairs(PlayerGui.hud.safezone.backpack.hotbar:GetChildren())do if c:FindFirstChild("tool")and tostring(c.tool.value)==a then b+=1 end end;for c,c in pairs(PlayerGui.hud.safezone.backpack.inventory.scroll.safezone:GetChildren())do if c.Name==a then b+=1 end end;return b end;local f=e.Teleport:AddSection('Teleport To Island')local g=nil;local h=f:AddDropdown("TelePort",{Title="Select The Island",Values={"Moosewood","Forsaken Shores","Mushgrove Swamp","Roslit Bay","Roslit Volcano","Roslit Hamlet","Snowcap Island","Srarue Of Soverrignty","Sunstone Island","Terrapin Island","Vertigo","Brine Pool","Trident Entrance","Desolate Pocket","Keepers Altar","Birch Cay","The Arch","Earmark Island","Harvesters Spike","Buoy","Haddock Rock","The Depths","Archeologicall Site"},Multi=false,default=1})h:OnChanged(function(a)g=a end)f:AddButton({Title="Click To Teleport",Description="Teleport To Island",Callback=function()if g=="Moosewood"then c.HumanoidRootPart.CFrame=CFrame.new(385,134,245)return end;if g=="Forsaken Shores"then c.HumanoidRootPart.CFrame=CFrame.new(-2495,133,1550)return end;if g=="Mushgrove Swamp"then c.HumanoidRootPart.CFrame=CFrame.new(2510,131,-775)return end;if g=="Roslit Bay"then c.HumanoidRootPart.CFrame=CFrame.new(-1470,132,710)return end;if g=="Roslit Volcano"then c.HumanoidRootPart.CFrame=CFrame.new(-1960,192,275)return end;if g=="Roslit Hamlet"then c.HumanoidRootPart.CFrame=CFrame.new(-1470,132,710)return end;if g=="Snowcap Island"then c.HumanoidRootPart.CFrame=CFrame.new(2610,135,2435)return end;if g=="Srarue Of Soverrignty"then c.HumanoidRootPart.CFrame=CFrame.new(20,159,-1040)return end;if g=="Sunstone Island"then c.HumanoidRootPart.CFrame=CFrame.new(-915,138,-1135)return end;if g=="Terrapin Island"then c.HumanoidRootPart.CFrame=CFrame.new(-160,145,1940)return end;if g=="Vertigo"then c.HumanoidRootPart.CFrame=CFrame.new(-110,-515,1040)return end;if g=="Brine Pool"then c.HumanoidRootPart.CFrame=CFrame.new(-1796,-142,-3410)return end;if g=="Trident Entrance"then c.HumanoidRootPart.CFrame=CFrame.new(-1480,-225,-2300)return end;if g=="Desolate Pocket"then c.HumanoidRootPart.CFrame=CFrame.new(-1660,-214,-2850)return end;if g=="Keepers Altar"then c.HumanoidRootPart.CFrame=CFrame.new(1310,-805,-160)return end;if g=="Birch Cay"then c.HumanoidRootPart.CFrame=CFrame.new(1740,141,-2502)return end;if g=="The Arch"then c.HumanoidRootPart.CFrame=CFrame.new(960,263,-1250)return end;if g=="Earmark Island"then c.HumanoidRootPart.CFrame=CFrame.new(1240,147,510)return end;if g=="Harvesters Spike"then c.HumanoidRootPart.CFrame=CFrame.new(-1270,171,1565)return end;if g=="Buoy"then c.HumanoidRootPart.CFrame=CFrame.new(-790,143,-3100)return end;if g=="Haddock Rock"then c.HumanoidRootPart.CFrame=CFrame.new(-480,161,-460)return end;if g=="The Depths"then c.HumanoidRootPart.CFrame=CFrame.new(950,-737,1360)return end;if g=="Archeologicall Site"then c.HumanoidRootPart.CFrame=CFrame.new(4025,185,25)return end end})local f=e.Teleport:AddSection("Best Spot")f:AddButton({Title="Click to Teleport",Description="Teleport To Best Spot",Callback=function()local a=Instance.new("Part")a.Size=Vector3.new(10,1,10)a.Position=Vector3.new(1447.8507080078125,131.49998474121094,-7649.64501953125)a.Anchored=true;a.BrickColor=BrickColor.new("White")a.Material=Enum.Material.SmoothPlastic;a.Parent=game.Workspace;local b=Instance.new("ForceField")b.Parent=a;wait()game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(1447.8507080078125,133.49998474121094,-7649.64501953125)end})local f=e.Teleport:AddSection("Teleport To Event")local g=nil;local h=f:AddDropdown("Event",{Title="Select The Event",Values={"Isonade"},Multi=false,default=1})h:OnChanged(function(a)g=a end)f:AddButton({Title="Click To Teleport",Description="Teleport To Event",Callback=function()if g=="Isonade"then if game.workspace.zones.fishing:FindFirstChild("Isonade")then c.HumanoidRootPart.CFrame=game.workspace.zones.fishing:FindFirstChild("Isonade").CFrame+Vector3.new(40,115,0)return end end end})local f=e.Teleport:AddSection("Teleport To Positions")local f=nil;local g=nil;local h=nil;local i=e.Teleport:AddInput("Input",{Title="Position-X",Default="",Placeholder="X",Numeric=false,Finished=false,Callback=function(a)f=a end})local i=e.Teleport:AddInput("Input",{Title="Position-Y",Default="",Placeholder="Y",Numeric=false,Finished=false,Callback=function(a)g=a end})local i=e.Teleport:AddInput("Input",{Title="Position-Z",Default="",Placeholder="Z",Numeric=false,Finished=false,Callback=function(a)h=a end})local c=e.Teleport:AddButton({Title="Click To Teleport",Description="Teleport To Position",Callback=function()c.HumanoidRootPart.CFrame=CFrame.new(f,g,h)return end})local c=os.time()task.spawn(function(a)warn("ANTI AFK STARTING")pcall(function()for a,a in pairs(getconnections(Client.Idled))do a:Disable()end;Client.Idled:connect(function()game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)wait(1)game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)end)while wait(300)do game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)wait(1)game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)end end)end)do Settings_M=e.Settings:AddSection("Misc")do Timeing=Settings_M:AddParagraph({Title="Timeing Server"})Toggle(Settings_M,"Auto Loading Configs","","AutoLoadingConfigs",function(a)writefile(tostring(LocalPlayer.UserId).."ALC.txt",tostring(a))end)end;RunService.Heartbeat:Connect(function()local a=os.time()-c;local b=tostring(math.floor(a/3600))local c=tostring(math.floor((a%3600)/60))local a=tostring(a%60)Timeing:SetTitle("Server Joined "..b.." H "..c.." M "..a.." S ")end)b:SetLibrary(a)b:BuildInterfaceSection(e.Settings)d:SelectTab(1)a:SetTheme("Darker")setfpscap(120)while true do if(game:GetService("Workspace").DistributedGameTime%1*60)>30 then setfpscap(120)end;wait(0)end end else game.Players.LocalPlayer:kick("Key Not Found")end else game.Players.LocalPlayer:kick("Map Not Support")end
