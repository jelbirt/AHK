F9::
Toggle := !Toggle
rsClientID = 
Client2ID = 
ClientID3 = 

Send, , Started , ,
loop
{
    If not Toggle
        break

    Random, , NewSeed

    ;Send, , Started , ,

    Random,miniR, 1040,3269
    Random,shortR, 3104,5216
    Random,herbR, 3420,7218

    Random, , NewSeed

    sleep, %shortR%
    WinActivate, ahk_id %rsClientID%
    sleep %miniR%
    ;ControlClick, x955 y616, ahk_id %rsClientID%, , , NA
    sleep %miniR%
    ControlSend, , 2 , ahk_id %rsClientID%
    sleep %shortR%
    ControlSend, , 4 , ahk_id %rsClientID%
    sleep %shortR%
    ControlSend, , 3 , ahk_id %rsClientID%
    sleep %shortR%
    ControlSend, , {Space} , ahk_id %rsClientID%
    sleep %shortR%

    WinActivate, ahk_id %Client2ID%
    ControlClick, x955 y616, ahk_id %Client2ID%, , , NA
    sleep %miniR%
    ControlSend, , 2 , ahk_id %Client2ID%
    sleep %shortR%
    ControlSend, , 4 , ahk_id %Client2ID%
    sleep %tinyR%
    ControlSend, , 3 , ahk_id %Client2ID%
    sleep %shortR%
    ControlSend, , {Space} , ahk_id %Client2ID%
    sleep %tinyR%

    WinActivate, ahk_id %ClientID3%
    ;ControlClick, x955 y616, ahk_id %ClientID3%, , , NA
    sleep %shortR%
    ControlSend, , 2 , ahk_id %ClientID3%
    sleep %shortR%
    ControlSend, , 4 , ahk_id %ClientID3%
    sleep %shortR%
    ControlSend, , 3 , ahk_id %ClientID3%
    sleep %shortR%
    ControlSend, , {Space} , ahk_id %ClientID3%
    sleep %shortR%
    

    ;ControlClick, x955 y444, ahk_id %rsClientID%, , , NA
    ;ControlSend, , R1 , ahk_id %rsClientID%


} 
return