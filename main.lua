-- made by: zinoxzino
--bug reports,errors should be send to me to fix it. 
-- code Version: # V.0.2 
-- updateLog: 
--fixed loadingScreen
--fixed ui
bit32={};local v0=32;local v1=2^v0 ;bit32.bnot=function(v116) v116=v116%v1 ;return (v1-1) -v116 ;end;bit32.band=function(v117,v118) if (v118==255) then return v117%256 ;end if (v118==65535) then return v117%65536 ;end if (v118==4294967295) then return v117%4294967296 ;end v117,v118=v117%v1 ,v118%v1 ;local v119=0;local v120=1;for v293=1,v0 do local v294,v295=v117%2 ,v118%2 ;v117,v118=math.floor(v117/2 ),math.floor(v118/2 );if ((v294 + v295)==2) then v119=v119 + v120 ;end v120=2 * v120 ;end return v119;end;bit32.bor=function(v121,v122) if (v122==255) then return (v121-(v121%256)) + 255 ;end if (v122==65535) then return (v121-(v121%65536)) + 65535 ;end if (v122==4294967295) then return 4294967295;end v121,v122=v121%v1 ,v122%v1 ;local v123=0;local v124=1;for v296=1,v0 do local v297,v298=v121%2 ,v122%2 ;v121,v122=math.floor(v121/2 ),math.floor(v122/2 );if ((v297 + v298)>=1) then v123=v123 + v124 ;end v124=2 * v124 ;end return v123;end;bit32.bxor=function(v125,v126) v125,v126=v125%v1 ,v126%v1 ;local v127=0;local v128=1;for v299=1,v0 do local v300,v301=v125%2 ,v126%2 ;v125,v126=math.floor(v125/2 ),math.floor(v126/2 );if ((v300 + v301)==1) then v127=v127 + v128 ;end v128=2 * v128 ;end return v127;end;bit32.lshift=function(v129,v130) if (math.abs(v130)>=v0) then return 0;end v129=v129%v1 ;if (v130<0) then return math.floor(v129 * (2^v130) );else return (v129 * (2^v130))%v1 ;end end;bit32.rshift=function(v131,v132) if (math.abs(v132)>=v0) then return 0;end v131=v131%v1 ;if (v132>0) then return math.floor(v131 * (2^ -v132) );else return (v131 * (2^ -v132))%v1 ;end end;bit32.arshift=function(v133,v134) if (math.abs(v134)>=v0) then return 0;end v133=v133%v1 ;if (v134>0) then local v328=0;if (v133>=(v1/2)) then v328=v1-(2^(v0-v134)) ;end return math.floor(v133 * (2^ -v134) ) + v328 ;else return (v133 * (2^ -v134))%v1 ;end end;local v9=string.char;local v10=string.byte;local v11=string.sub;local v12=bit32 or bit ;local v13=v12.bxor;local v14=table.concat;local v15=table.insert;local function v16(v135,v136) local v137={};for v302=1, #v135 do v15(v137,v9(v13(v10(v11(v135,v302,v302 + 1 )),v10(v11(v136,1 + (v302% #v136) ,1 + (v302% #v136) + 1 )))%256 ));end return v14(v137);end local v17=game:GetService(v16("\229\212\222\32\232\136\194\12\199\202\216\32","\126\177\163\187\69\134\219\167"));local v18=game:GetService(v16("\19\193\43\220\249\49\222","\156\67\173\74\165"));local v19=game:GetService(v16("\6\162\71\37\185\52\80\61\180\76","\38\84\215\41\118\220\70"));local v20=game:GetService(v16("\124\31\37\26\234\89\24\37","\158\48\118\66\114"));local v21=game:GetService(v16("\158\55\21\36\90\171\235\190\48\35\51\97\179\242\168\33","\155\203\68\112\86\19\197"));local v22=v18.LocalPlayer;local v23=Instance.new(v16("\100\209\35\238\101\126\227\253\69\201","\152\38\189\86\156\32\24\133"));v23.Size=24;v23.Parent=v20;local v26=v21:GetPlatform();local v27=v21.TouchEnabled;local v28=(v27 and (v16("\209\88\165\79\240\82\231\14","\38\156\55\199")   .. tostring(v26)   .. ")")) or (v16("\152\94\60\96","\35\200\29\28\72\115\20\154")   .. tostring(v26)   .. ")") ;local v29= not v27;print("FiveDuels 👻");print(v16("\61\186\199\214\142\41\116\29\186\197\218\142\56\49\29\229\145","\84\121\223\177\191\237\76")   .. v28 );local v30=v16("\209\101\221\161\40\68\57\207\188\22\218\163\40\89\32\213\209","\161\219\54\169\192\90\48\80");print(v30);local v31=Instance.new(v16("\122\65\18\32\76\76\39\48\64","\69\41\34\96"));v31.Name=v16("\144\204\214\14\11\37\187\240\212\24\7\46\178","\75\220\163\183\106\98");v31.Parent=game.CoreGui;local v35=Instance.new(v16("\36\168\138\58\220","\185\98\218\235\87"));v35.Size=UDim2.new(0,600,0,400);v35.Position=UDim2.new(0.5, -300,0.5, -200);v35.BackgroundColor3=Color3.fromRGB(10,10,10);v35.BorderSizePixel=0;v35.Parent=v31;local v41=Instance.new(v16("\255\57\63\242\242\171\201\57\43","\202\171\92\71\134\190"));v41.Size=UDim2.new(1,0,0.2,0);v41.Position=UDim2.new(0,0,0.05,0);v41.BackgroundTransparency=1;v41.Text=v16("\5\206\45\140\32\207\43\198\103\143","\232\73\161\76");v41.TextColor3=Color3.new(1,1,1);v41.Font=Enum.Font.SourceSansBold;v41.TextScaled=true;v41.Parent=v35;local v51=Instance.new(v16("\143\220\90\73\50\186\219\71\81","\126\219\185\34\61"));v51.Size=UDim2.new(1,0,0.1,0);v51.Position=UDim2.new(0,0,0.8,0);v51.BackgroundTransparency=1;v51.Text=v16("\40\203\72\123\125\114\169\167","\135\108\174\62\18\30\23\147")   .. v28 ;v51.TextColor3=Color3.new(1,1,1);v51.Font=Enum.Font.SourceSansBold;v51.TextScaled=true;v51.Parent=v35;local v60=Instance.new(v16("\130\236\50\223\52\175\49\194\186","\167\214\137\74\171\120\206\83"));v60.Size=UDim2.new(1,0,0.5,0);v60.Position=UDim2.new(0,0,0.3,0);v60.BackgroundTransparency=1;v60.Text=v30;v60.TextColor3=Color3.new(1,1,1);v60.Font=Enum.Font.Code;v60.TextScaled=true;v60.Parent=v35;local v70=Instance.new(v16("\191\245\42\73\212\166\137\245\62","\199\235\144\82\61\152"));v70.Size=UDim2.new(0,50,0,50);v70.Position=UDim2.new(0.45,0,0.8,0);v70.BackgroundTransparency=1;v70.Text="⟳";v70.TextColor3=Color3.new(1,1,1);v70.Font=Enum.Font.SourceSansBold;v70.TextScaled=true;v70.Parent=v35;spawn(function() while v70.Parent do local v303=v17:Create(v70,TweenInfo.new(1,Enum.EasingStyle.Linear),{[v16("\53\25\173\42\19\31\182\37","\75\103\118\217")]=v70.Rotation + 360 });v303:Play();v303.Completed:Wait();v70.Rotation=0;end end);local v79=Instance.new(v16("\225\70\113\25\188","\126\167\52\16\116\217"));v79.Size=UDim2.new(0.8,0,0.05,0);v79.Position=UDim2.new(0.1,0,0.9,0);v79.BackgroundColor3=Color3.fromRGB(50,50,50);v79.BorderSizePixel=0;v79.Parent=v35;local v85=Instance.new(v16("\238\60\33\141\177","\156\168\78\64\224\212\121"));v85.Size=UDim2.new(0,0,1,0);v85.Position=UDim2.new(0,0,0,0);v85.BackgroundColor3=Color3.fromRGB(0,200,0);v85.BorderSizePixel=0;v85.Parent=v79;local v91=v17:Create(v85,TweenInfo.new(5,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut),{[v16("\52\231\191\203","\174\103\142\197")]=UDim2.new(1,0,1,0)});v91:Play();delay(5,function() local v138=v17:Create(v35,TweenInfo.new(0.5,Enum.EasingStyle.Quad),{[v16("\116\41\92\51\34\76\247\67\38\91\12\55\95\246\69\56\94\42\32\80\251\79","\152\54\72\63\88\69\62")]=1});v138:Play();v138.Completed:Connect(function() v31:Destroy();local v305=v17:Create(v23,TweenInfo.new(0.5),{[v16("\231\205\244\89","\60\180\164\142")]=0});v305:Play();v305.Completed:Connect(function() v23:Destroy();end);if (v29 or (4593<=2672)) then createMainUI_PC();else createMainUI_Mobile();end end);end);getgenv().aimbotSettings={[v16("\93\80\4\43\43\232\22","\114\56\62\101\73\71\141")]=false,[v16("\190\230\205\246\185\237\210\209\171","\164\216\137\187")]=50,[v16("\209\243\35\160\163\240\31\230\231\35\181\163\234","\107\178\134\81\210\198\158")]=nil,[v16("\59\7\144\197\166\61\45\141\202\165\42","\202\88\110\226\166")]=Color3.new(1,1,1)};local function v93(v139) local v140=false;local v141,v142,v143;v139.InputBegan:Connect(function(v306) if ((v306.UserInputType==Enum.UserInputType.MouseButton1) or (v306.UserInputType==Enum.UserInputType.Touch) or (1168>3156)) then v140=true;v142=v306.Position;v143=v139.Position;v306.Changed:Connect(function() if ((v306.UserInputState==Enum.UserInputState.End) or (572>4486)) then v140=false;end end);end end);v139.InputChanged:Connect(function(v307) if ((v307.UserInputType==Enum.UserInputType.MouseMovement) or (v307.UserInputType==Enum.UserInputType.Touch)) then v141=v307;end end);v21.InputChanged:Connect(function(v308) if ((v308==v141) and v140) then local v333=v308.Position-v142 ;v139.Position=UDim2.new(v143.X.Scale,v143.X.Offset + v333.X ,v143.Y.Scale,v143.Y.Offset + v333.Y );end end);end local v94=workspace.CurrentCamera;local v95=v19.RenderStepped;local v96=getgenv().aimbotSettings;local v97=Drawing.new(v16("\224\6\144\244\198\198","\170\163\111\226\151"));v97.Visible=true;v97.Color=v96.circleColor;v97.Radius=v96.fovRadius;v97.Thickness=1;v97.Filled=false;local v105=false;local v106={};local v107=true;local v108=1.6;local v109=500;local function v110(v144) if ((1404==1404) and ( not v144 or  not v144.Character)) then return false;end local v145=v144.Character:FindFirstChild(v16("\57\53\179\60","\73\113\80\210\88\46\87"));if  not v145 then return false;end local v146,v147=v94:WorldToViewportPoint(v145.Position);if ( not v147 or (3748<2212)) then return false;end local v148=v94.CFrame.Position;local v149=(v145.Position-v148).Unit * 1000 ;local v150={v22.Character};local v151=workspace:FindPartOnRayWithIgnoreList(Ray.new(v148,v149),v150);return (v151==nil) or v151:IsDescendantOf(v144.Character) ;end local function v111() if ( not v96.enabled or (1180==2180)) then return nil;end local v152=Vector2.new(v94.ViewportSize.X/2 ,v94.ViewportSize.Y/2 );local v153,v154=nil,v96.fovRadius;for v309,v310 in ipairs(v18:GetPlayers()) do if ((4090<4653) and (v310~=v22) and v310.Character) then for v361,v362 in ipairs({v16("\169\41\204\22","\135\225\76\173\114"),v16("\50\248\181\177\162\178\174\30\223\183\191\184\141\166\8\249","\199\122\141\216\208\204\221"),v16("\129\216\22\228\84\243\170","\150\205\189\112\144\24"),v16("\23\141\184\68\16\164\20\23","\112\69\228\223\44\100\232\113"),v16("\248\26\1\199\151\110\139","\230\180\127\103\179\214\28"),v16("\190\12\88\78\240\96\242\129","\128\236\101\63\38\132\33"),v16("\152\166\3\87\185","\175\204\201\113\36\214\139")}) do local v363=v310.Character:FindFirstChild(v362);if (v363 or (2652<196)) then local v367,v368=v94:WorldToViewportPoint(v363.Position);if v368 then local v373=Vector2.new(v367.X,v367.Y);local v374=(v373-v152).Magnitude;if ((v374<v154) and v110(v310)) then v153=v310;v154=v374;end end end end end end v96.currentTarget=v153;return v153;end local function v112() local v156=Drawing.new(v16("\116\221\32\221\22\66","\100\39\172\85\188"));v156.Visible=false;v156.Thickness=v108;v156.Filled=false;return v156;end local function v113() local v160=Drawing.new(v16("\153\125\161\148","\83\205\24\217\224"));v160.Visible=false;v160.Center=true;v160.Outline=true;v160.Color=Color3.new(1,1,1);v160.Size=16;return v160;end local function v114() local v166=Drawing.new(v16("\202\204\195\56","\93\134\165\173"));v166.Visible=false;v166.Thickness=1;v166.Color=Color3.new(0,1,0);return v166;end local function v115(v170) if ((4135<4817) and (v170==v22)) then return;end local v171=v112();local v172=v113();local v173=v114();v106[v170]=v173;v19.RenderStepped:Connect(function() if ( not v107 or  not v170.Character or  not v170.Character:FindFirstChild(v16("\150\231\204\195\52\193\187\122\140\253\206\214\10\207\160\106","\30\222\146\161\162\90\174\210"))) then v171.Visible=false;v172.Visible=false;v173.Visible=false;return;end local v311=v170.Character.HumanoidRootPart;local v312=(v22.Character and v22.Character:FindFirstChild(v16("\205\91\125\11\235\65\121\14\215\65\127\30\213\79\98\30","\106\133\46\16")) and (v22.Character.HumanoidRootPart.Position-v311.Position).Magnitude) or v109 ;if ((272==272) and (v312>v109)) then v171.Visible=false;v172.Visible=false;v173.Visible=false;return;end local v313=v170.Character:FindFirstChild(v16("\112\37\114\248","\32\56\64\19\156\58"));if  not v313 then return;end local v314,v315=v94:WorldToViewportPoint(v313.Position + Vector3.new(0,0.5,0) );local v316,v317=v94:WorldToViewportPoint(v311.Position-Vector3.new(0,3,0) );if (v315 and v317) then local v341=math.abs(v314.Y-v316.Y );local v342=v341 * 0.5 ;local v343=v314.X-(v342/2) ;local v344=v314.Y;local v345=math.clamp(1 -(v312/v109) ,0,1);v171.Color=Color3.new(1 -v345 ,v345,0);v171.Size=Vector2.new(v342,v341);v171.Position=Vector2.new(v343,v344);v171.Visible=true;v172.Text=v170.Name   .. v16("\26\128","\224\58\168\133\54\58\146")   .. math.floor(v312)   .. v16("\84\31","\107\57\54\43\157\21\230\231") ;v172.Position=Vector2.new(v314.X,v314.Y-20 );v172.Visible=true;if ((100<=3123) and v105) then v173.Visible=true;local v365=v22.Character and v22.Character:FindFirstChild(v16("\243\158\28\244\183\211\198\223\185\30\250\173\236\206\201\159","\175\187\235\113\149\217\188")) ;if v365 then local v369=v94:WorldToViewportPoint(v365.Position);v173.From=Vector2.new(v369.X,v369.Y);v173.To=Vector2.new(v314.X,v314.Y);else v173.Visible=false;end else v173.Visible=false;end else v171.Visible=false;v172.Visible=false;v173.Visible=false;end end);end for v175,v176 in pairs(v18:GetPlayers()) do if (v176~=v22) then v115(v176);end end v18.PlayerAdded:Connect(v115);v19.RenderStepped:Connect(function() v97.Position=Vector2.new(v94.ViewportSize.X/2 ,v94.ViewportSize.Y/2 );v97.Radius=v96.fovRadius;v97.Color=v96.circleColor;local v182=v111();if (v182 and v182.Character and v182.Character:FindFirstChild(v16("\20\170\128\72","\24\92\207\225\44\131\25"))) then local v329=v182.Character.Head.Position;v94.CFrame=CFrame.new(v94.CFrame.Position,v329);end end);function createMainUI_PC() local v183=Instance.new(v16("\120\208\170\73\30\115\108\198\177","\29\43\179\216\44\123"));v183.Name=v16("\141\250\31\121\148","\44\221\185\64");v183.Parent=game.CoreGui;local v187=Instance.new(v16("\39\245\73\82\118","\19\97\135\40\63"));v187.Size=UDim2.new(0,300,0,150);v187.Position=UDim2.new(0.5, -150,0.1,0);v187.BackgroundColor3=Color3.fromRGB(35,35,35);v187.BorderSizePixel=0;v187.Parent=v183;v93(v187);local v193=Instance.new(v16("\154\89\43\47\3\48\172\89\63","\81\206\60\83\91\79"));v193.Size=UDim2.new(1,0,0.2,0);v193.Position=UDim2.new(0,0,0,0);v193.BackgroundTransparency=1;v193.Text="FiveDuels 👻\n(Q: Aimbot / Z: ESP)";v193.TextColor3=Color3.new(1,1,1);v193.Font=Enum.Font.SourceSansBold;v193.TextScaled=true;v193.Parent=v187;local v203=Instance.new(v16("\122\174\200\102\13\214\89\176\65\165","\196\46\203\176\18\79\163\45"));v203.Size=UDim2.new(0,140,0,30);v203.Position=UDim2.new(0.05,0,0.4,0);v203.BackgroundColor3=Color3.fromRGB(50,50,50);v203.BorderSizePixel=0;v203.Text=v16("\148\43\112\27\55\161\175\151\4\88","\143\216\66\30\126\68\155");v203.TextColor3=Color3.new(1,1,1);v203.Font=Enum.Font.SourceSansBold;v203.TextScaled=true;v203.Parent=v187;v203.MouseButton1Click:Connect(function() v105= not v105;v203.Text=v16("\134\193\3\206\214\249\151","\129\202\168\109\171\165\195\183")   .. ((v105 and v16("\13\118","\134\66\56\87\184\190\116")) or v16("\19\23\47","\85\92\81\105\219\121\139\65")) ;end);local v213=Instance.new(v16("\201\182\72\81\94\202\233\167\95\75","\191\157\211\48\37\28"));v213.Size=UDim2.new(0,30,0,30);v213.Position=UDim2.new(0,0,0.7,0);v213.BackgroundColor3=Color3.fromRGB(50,50,50);v213.BorderSizePixel=0;v213.Text="-";v213.TextColor3=Color3.new(1,1,1);v213.Font=Enum.Font.SourceSansBold;v213.TextSize=20;v213.Parent=v187;local v223=Instance.new(v16("\235\26\236\8\24\202\11\224\19\52","\90\191\127\148\124"));v223.Size=UDim2.new(0,30,0,30);v223.Position=UDim2.new(0.25,0,0.7,0);v223.BackgroundColor3=Color3.fromRGB(50,50,50);v223.BorderSizePixel=0;v223.Text="+";v223.TextColor3=Color3.new(1,1,1);v223.Font=Enum.Font.SourceSansBold;v223.TextSize=20;v223.Parent=v187;v213.MouseButton1Click:Connect(function() v96.fovRadius=v96.fovRadius-10 ;if ((v96.fovRadius<10) or (1369>4987)) then v96.fovRadius=10;end end);v223.MouseButton1Click:Connect(function() v96.fovRadius=v96.fovRadius + 10 ;if ((v96.fovRadius>300) or (863>=4584)) then v96.fovRadius=300;end end);v21.InputBegan:Connect(function(v321,v322) if v322 then return;end if (v321.KeyCode==Enum.KeyCode.Q) then v96.enabled= not v96.enabled;print(v16("\89\142\35\21\119\147\116\87","\119\24\231\78")   .. ((v96.enabled and v16("\173\3","\113\226\77\197\42\188\32")) or v16("\21\48\210","\213\90\118\148")) );elseif (v321.KeyCode==Enum.KeyCode.Z) then v107= not v107;print(v16("\126\29\132\12\13","\45\59\78\212\54")   .. ((v107 and v16("\63\120","\144\112\54\227\235\230\78\205")) or v16("\156\14\41","\59\211\72\111\156\176")) );end end);end function createMainUI_Mobile() local v233=Instance.new(v16("\125\132\241\40\75\137\196\56\71","\77\46\231\131"));v233.Name=v16("\151\91\180\73\182\81\137\117\147","\32\218\52\214");v233.Parent=game.CoreGui;local v237=Instance.new(v16("\104\5\48\165\244","\58\46\119\81\200\145\208\37"));v237.Size=UDim2.new(0,260,0,120);v237.Position=UDim2.new(0.5, -130,0.1,0);v237.BackgroundColor3=Color3.fromRGB(35,35,35);v237.BorderSizePixel=0;v237.Parent=v233;v93(v237);local v243=Instance.new(v16("\31\137\40\184\133\188\52\46\128","\86\75\236\80\204\201\221"));v243.Size=UDim2.new(1,0,0.3,0);v243.Position=UDim2.new(0,0,0,0);v243.BackgroundTransparency=1;v243.Text="FiveDuels 👻";v243.TextColor3=Color3.new(1,1,1);v243.Font=Enum.Font.SourceSansBold;v243.TextScaled=true;v243.Parent=v237;local v253=Instance.new(v16("\70\68\111\145\220\158\102\85\120\139","\235\18\33\23\229\158"));v253.Size=UDim2.new(0,100,0,30);v253.Position=UDim2.new(0.05,0,0.4,0);v253.BackgroundColor3=Color3.fromRGB(50,50,50);v253.BorderSizePixel=0;v253.Text=v16("\113\179\204\185\95\174\155\251\127\156\231","\219\48\218\161");v253.TextColor3=Color3.new(1,1,1);v253.Font=Enum.Font.SourceSansBold;v253.TextScaled=true;v253.Parent=v237;local v263=Instance.new(v16("\208\116\100\93\249\90\244\240\126\114","\128\132\17\28\41\187\47"));v263.Size=UDim2.new(0,100,0,30);v263.Position=UDim2.new(0.55,0,0.4,0);v263.BackgroundColor3=Color3.fromRGB(50,50,50);v263.BorderSizePixel=0;v263.Text=v16("\45\59\8\63\78\91\114\41\28\123","\61\97\82\102\90");v263.TextColor3=Color3.new(1,1,1);v263.Font=Enum.Font.SourceSansBold;v263.TextScaled=true;v263.Parent=v237;local v273=Instance.new(v16("\152\43\179\95\229\66\10\29\163\32","\105\204\78\203\43\167\55\126"));v273.Size=UDim2.new(0,30,0,30);v273.Position=UDim2.new(0,0,0.7,0);v273.BackgroundColor3=Color3.fromRGB(50,50,50);v273.BorderSizePixel=0;v273.Text="-";v273.TextColor3=Color3.new(1,1,1);v273.Font=Enum.Font.SourceSansBold;v273.TextSize=20;v273.Parent=v237;local v283=Instance.new(v16("\145\175\59\10\49\17\211\69\170\164","\49\197\202\67\126\115\100\167"));v283.Size=UDim2.new(0,30,0,30);v283.Position=UDim2.new(0.25,0,0.7,0);v283.BackgroundColor3=Color3.fromRGB(50,50,50);v283.BorderSizePixel=0;v283.Text="+";v283.TextColor3=Color3.new(1,1,1);v283.Font=Enum.Font.SourceSansBold;v283.TextSize=20;v283.Parent=v237;v253.MouseButton1Click:Connect(function() v96.enabled= not v96.enabled;v253.Text=v16("\22\82\210\43\143\66\4\119","\62\87\59\191\73\224\54")   .. ((v96.enabled and v16("\200\44","\169\135\98\154")) or v16("\228\81\2","\168\171\23\68\52\157\83")) ;end);v263.MouseButton1Click:Connect(function() v105= not v105;v263.Text=v16("\216\120\251\168\54\119\199","\231\148\17\149\205\69\77")   .. ((v105 and v16("\175\137","\159\224\199\167\155\55")) or v16("\216\213\26","\178\151\147\92")) ;end);v273.MouseButton1Click:Connect(function() v96.fovRadius=v96.fovRadius-10 ;if ((v96.fovRadius<10) or (724>=1668)) then v96.fovRadius=10;end end);v283.MouseButton1Click:Connect(function() v96.fovRadius=v96.fovRadius + 10 ;if (v96.fovRadius>300) then v96.fovRadius=300;end end);end
