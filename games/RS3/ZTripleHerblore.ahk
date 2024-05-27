; @ ZTripleHerb - Commented code for 2 additional clients to cycle

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
    Random,herbR, 12234,16430
    Random,longR, 25167,39892 

    Random, , NewSeed

    sleep %shortR%
    ;WinActivate, ahk_id %rsClientID%
    ControlClick, x1111 y1111, ahk_id %rsClientID%, , , NA
    sleep %shortR%
    ControlSend, , 2 , ahk_id %rsClientID%
    sleep %shortR%
    ControlSend, , 4 , ahk_id %rsClientID%
    sleep %miniR%
    ControlSend, , 3 , ahk_id %rsClientID%
    sleep %shortR%
    ControlSend, , {Space} , ahk_id %rsClientID%
    sleep %herbR%
    ;sleep %longR%

    ;ControlClick, x1111 y1111, ahk_id %Client2ID%, , , NA
    ;sleep %shortR%
    ;ControlSend, , 2 , ahk_id %Client2ID%
    ;sleep %shortR%
    ;ControlSend, , 3 , ahk_id %Client2ID%
    ;sleep %shortR%
    ;ControlSend, , {Space} , ahk_id %Client2ID%
    ;sleep %herbR%
    
    ;Random, , NewSeed

    ;sleep, %shortR%5
    ;WinActivate, ahk_id %rsClientID%
    ;ControlSend, , 5 , ahk_id %rsClientID%
    ;sleep %tinyR%
    ;WinActivate, ahk_id %Client2ID%
    ;ControlSend, , 5 , ahk_id %Client2ID%
    ;sleep %tinyR%
    ;WinActivate, ahk_id %ClientID3%
    ;ControlSend, , 5 , ahk_id %ClientID3%
    ;sleep %tinyR%
    ;WinActivate, ahk_id %rsClientID%
    ;sleep %longR%

    ;ControlClick, x1111 y1111, ahk_id %rsClientID%, , , NA
    ;ControlSend, , R1 , ahk_id %rsClientID%


} 
return