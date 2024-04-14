--[[  
WiP - still working for the time beeing
Saved varaibles has no use yet.
Custom Text's ha to be stored as a 2 Dimansional List like
SMARTBUFF_Options = {
	["DayTXTCust"] = {
		"Blafasel",
		"irgenwas",
		"dings"
	},
	["MorTXTCust"] = {
		"Blafasel",
		"irgenwas",
		"dings"
	},
	etc.
]]--

local McGFrame = CreateFrame("Frame")
McGFrame:RegisterEvent("ADDON_LOADED")
McGFrame:RegisterEvent("PLAYER_LOGOUT")

McGFrame:SetScript("OnEvent",	function(self, event, arg1)
		if event == "ADDON_LOADED" and arg1 == "McR_Greet" then

		--local function MCRGREETCMD()
			TIME = date("%H");

	--Merge array (Sources: The localized variant of mcr_greettxt_xxYY.lua and mcr_customtxt.lua
	--Variables have Suffix "Cust"
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
			if		(TIME >= "04" and TIME <  "11") then GREETTXT = MorTXT[math.random(table.getn(MorTXT))];
			elseif	(TIME >= "11" and TIME <= "13") then GREETTXT = NooTXT[math.random(table.getn(NooTXT))];
			elseif	(TIME >  "13" and TIME <= "17") then GREETTXT = DayTXT[math.random(table.getn(DayTXT))];
			else										 GREETTXT = EveTXT[math.random(table.getn(EveTXT))];
			end;

			-- Output
			--SendChatMessage(GREETTXT, "GUILD", nil , "");


	end
end)

SLASH_MCRGREET1 = "/mcrgreet"
--SlashCmdList["MCRGREET"] = MCRGREETCMD;

function SlashCmdList.MCRGREET(msg)
	--GREETTXT = McGreetVars
	SendChatMessage(GREETTXT, "GUILD", nil , "")
	print("Dinge passieren!")
	--McGreetVars=GREETTXT
end