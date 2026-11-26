-- MCR Greet V 0.93 --

-- This localization is currently incomplete.
-- English phrases are used as placeholders where no verified translation exists.
--
-- If you are a native speaker and would like to help improve this localization,
-- your contributions are greatly appreciated.

if (GetLocale() == "koKR") then
	print("McR Greet: 한국어 기본 인사말이 로드되었습니다.");
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