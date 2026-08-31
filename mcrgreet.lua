-- MCR Greet V 0.94 --
-- das "_" zwischen McR und Greet.lua entfernt. Da das dazu geführt hat, dass das 
-- Addon in einer Baumstruktur angezeigt wird.
-- Umändern des Befehls von /mcrgreet auf /sayhi
-- warum mit /saybye nicht auch eine Verabschiedung nach gleichem Muster realisieren...

local function MCRGREETCMD()
	TIME = date("%H");

	--Merge array (Sources: The localized variant of mcr_greettxt_xxYY.lua and mcr_customtxt.lua (Cust suffix))
	if #DayTXTCust ~= 0 then
		for i = 1, #DayTXTCust do
			table.insert(DayTXT, 1, DayTXTCust[i]);
		end;
	end;
	
	if #MorTXTCust ~= 0 then
		for i = 1, #MorTXTCust do
			table.insert(MorTXT, 1, MorTXTCust[i]);
		end;
	end;
	
	if #EveTXTCust ~= 0 then
		for i = 1, #EveTXTCust do
			table.insert(EveTXT, 1, EveTXTCust[i]);
		end
	end;
	
	if #NooTXTCust ~= 0 then
		for i = 1, #NooTXTCust do
			table.insert(NooTXT, 1, NooTXTCust[i]);
		end;
	end;


	-- Determine time of day
	if	(TIME >= "04" and TIME <  "11") then 			GREETTXT = MorTXT[math.random(#MorTXT)];
	elseif	(TIME >= "11" and TIME <= "13") then 		GREETTXT = NooTXT[math.random(#NooTXT)];
	elseif	(TIME >  "13" and TIME <= "17") then		GREETTXT = DayTXT[math.random(#DayTXT)];
	else												GREETTXT = EveTXT[math.random(#EveTXT)];
	end;

-- Output
	C_ChatInfo.SendChatMessage(GREETTXT, "GUILD");
	

end;

local function MCRSAYHI()
	MCRGREETCMD();
end;

local function MCRSAYBYE()
	print("Bye gesagt");
end;

SLASH_MCRGREET1 = "/mcrgreet"
	SlashCmdList["MCRGREET"] = MCRGREETCMD;

SLASH_SAYHI1 = "/sayhi"
	SlashCmdList["SAYHI"] = MCRSAYHI;

SLASH_SAYBYE1 = "/saybye"
	SlashCmdList["SAYBYE"] = MCRSAYBYE;