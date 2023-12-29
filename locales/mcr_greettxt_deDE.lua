-- MCR Greet V 0.93 --
if (GetLocale() == "deDE") then
	print("McR Greet: Grüße auf Deutsch geladen.");
	ClientLanguage = "set";
	
-- Definition der Texte als Array, bzw. Table (LUA halt)
	DayTXT =	{
				"MOIN!",
        		"Moinsen",
        		"Halli Hallo",
        		"HiHo",
				"Hallo Allerseits!"
			  	};

	EveTXT = 	{
				"Nabend!",
				"Buenas Noches!",
				"Guten Abend Allerseits!"
			 	 };

	MorTXT =  	{
				"Guten Morgen!",
				"Es ist eindeutig zu früh - Moin!"
			   	};

	NooTXT = 	{
				"Mahlzeit!",
				"Einen Wunderguten"
			  	};
end;
