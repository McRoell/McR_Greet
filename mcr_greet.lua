-- MCR Greet V 0.9 --

local function MCRGREETCMD()
	ZEIT = date("%H");

	--Array zusammenführen (Quellen: mcr_greettxts.lua und mcr_customtxt.lua (C))
	--Varaible ISTIMPORT wird gesetzt, wenn die Arrays zusammengeführt wurden
	if ISTIMPORT == NIL then
		ISTIMPORT = 1;
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
	end;

	-- Tageszeit ermitteln
	if 	   (ZEIT >= "04" and ZEIT <  "11") then GREETTXT = GREETMO[math.random(table.getn(GREETMO))];
	elseif (ZEIT >= "11" and ZEIT <= "14") then GREETTXT = GREETMIT[math.random(table.getn(GREETMIT))];
	elseif (ZEIT >  "14" and ZEIT <= "18") then GREETTXT = GREETTA[math.random(table.getn(GREETTA))];
	else										GREETTXT = GREETAB[math.random(table.getn(GREETAB))];
    end;

-- Ausgabe
	SendChatMessage(GREETTXT, "GUILD", "", "");
-- print(GREETTXT);

end;

SLASH_MCRGREET1 = "/mcrgreet"
SlashCmdList["MCRGREET"] = MCRGREETCMD;
