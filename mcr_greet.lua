--local frame = CreateFrame("Frame")
--frame:RegisterEvent("ADDON_LOADED")
--frame:RegisterEvent("PLAYER_LOGOUT")

--frame:SetScript("OnEvent", function(self, event, arg1)
--	if event == "ADDON_LOADED" and arg1 == "McGreet" then
--		print("Variablen geladen")
--	end

	local function MCRGREETCMD()
		TIME = date("%H");

--Merge array (Sources: The localized variant of mcr_greettxt_xxYY.lua and mcr_customtxt.lua (Cust suffix))
		if table.getn(DayTXTCust) ~= 0 then
			for i = 1, table.getn(DayTXTCust) do
				table.insert(DayTXT, 1, DayTXTCust[i]);
			end;
		end;

		if not table.getn(MorTXTCust) ~= 0 then
			for i = 1, table.getn(MorTXTCust) do
				table.insert(MorTXT, 1, MorTXTCust[i]);
			end;
		end;

		if not table.getn(EveTXTCust) ~= 0 then
			for i = 1, table.getn(EveTXTCust) do
				table.insert(EveTXT, 1, EveTXTCust[i]);
			end
		end;

		if not table.getn(NooTXTCust) ~= 0 then
			for i = 1, table.getn(NooTXTCust) do
				table.insert(NooTXT, 1, NooTXTCust[i]);
			end;
		end;

-- Determine time of day
		if			(TIME >= "04" and TIME <  "11") then GREETTXT = MorTXT[math.random(table.getn(MorTXT))];
		elseif	(TIME >= "11" and TIME <= "13") then GREETTXT = NooTXT[math.random(table.getn(NooTXT))];
		elseif	(TIME >  "13" and TIME <= "17") then GREETTXT = DayTXT[math.random(table.getn(DayTXT))];
		else																				 GREETTXT = EveTXT[math.random(table.getn(EveTXT))];
		end;

		-- Output
		SendChatMessage(GREETTXT, "GUILD", nil , "");


end
--)

SLASH_MCRGREET1 = "/mcrgreet"
SlashCmdList["MCRGREET"] = MCRGREETCMD;

--function SlashCmdList.MCGREET(msg)
--	SendChatMessage(GREETTXT, "GUILD", nil , "")
--end