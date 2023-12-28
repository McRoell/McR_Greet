-- MCR Greet V 0.92 --
if (GetLocale() == "deDE") then
	print("McR Greet: Grüße auf Deutsch geladen.");
	
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
