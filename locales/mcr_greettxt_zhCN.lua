-- MCR Greet V 0.93 --
if (GetLocale() == "zhCN") then
	print("McR Greet: 已加载中文问候语。");
	ClientLanguage = "set";

-- Definition of the texts as an array or table
	DayTXT =	{
    			"HI!",
      			"G'day!",
       			"Hello everyone!",
				"Good afternoon!"
            	};  
    
    EveTXT = 	{
              "Good evening",
              "Buenas Noches!",
              "Good evening, everyone"
             	};
    
    MorTXT = 	{
              "GOOD MORNING!",
              "Good morning everyone!",
              "It's clearly too early - good morning"
             	};
    
    NooTXT = 	{
              "Good Afternoon",
              "I hope you have enjoyed you meal, or will..."
             	};
end;