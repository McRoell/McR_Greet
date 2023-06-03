-- MCR Greet V 0.91 --

local function MCRGREETCMD()
	TIME = date("%H");

	--Merge array (sources: mcr_greettxt.lua (or the localized variant) and mcr_customtxt.lua (C suffix))
	if table.getn(GREETTAC) ~= 0 then
		for i = 1, table.getn(GREETTAC) do
			table.insert(GREETTA, 1, GREETTAC[i]);
		end;
	end;
		if not table.getn(GREETMOC) ~= 0 then
		for i = 1, table.getn(GREETMOC) do
			table.insert(GREETMO, 1, GREETMOC[i]);
		end;
	end;
	if not table.getn(GREETABC) ~= 0 then
		for i = 1, table.getn(GREETABC) do
			table.insert(GREETAB, 1, GREETABC[i]);
		end
	end;
	if not table.getn(GREETMITC) ~= 0 then
		for i = 1, table.getn(GREETMITC) do
			table.insert(GREETMIT, 1, GREETMITC[i]);
		end;
	end;


	-- Determine time of day
	if 	   (TIME >= "04" and TIME <  "11") then	GREETTXT = GREETMO[math.random(table.getn(GREETMO))];
	elseif (TIME >= "11" and TIME <= "14") then 	GREETTXT = GREETMIT[math.random(table.getn(GREETMIT))];
	elseif (TIME >  "14" and TIME <= "18") then 	GREETTXT = GREETTA[math.random(table.getn(GREETTA))];
	else						GREETTXT = GREETAB[math.random(table.getn(GREETAB))];
    end;

-- Output
	SendChatMessage(GREETTXT, "GUILD", "", "");

end;

SLASH_MCRGREET1 = "/mcrgreet"
SlashCmdList["MCRGREET"] = MCRGREETCMD;
}
