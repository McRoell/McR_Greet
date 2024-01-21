-- MCR Greet V 0.93 --
if (GetLocale() == "frFR") then
	print("McR Greet: Salutations chargées en français.");
	ClientLanguage = "set";

-- Definition of the texts as an array or table
	DayTXT =	{
						"Bonjour",
						"Salut",
						"Coucou",
						"Comment ça va",
						"Quoi de neu",
						"Enchanté"
            	};  
    
    EveTXT = 	{
              "Bonsoir",
							"Comment ça va",
							"Quoi de neu",
							"Bonne soirée"
             	};
    
    MorTXT = 	{
              "Bonjour ",
              "Bonne matiné"
             	};
    
    NooTXT = 	{
              "Bon après-midi"
             	};
end;