; @ ZTripleThief - At END of cycle Consume food --> 5 

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

    Random,miniR, 1040,3269
    Random,shortR, 3104,5216
    Random,thievR, 55207,71348 


    sleep %shortR%
    ; -- it 1
    ;WinActivate, ahk_id %rsClientID%
    ControlSend, , {Space} , ahk_id %rsClientID%
    sleep %shortR%
    ControlSend, , {Space} , ahk_id %Client2ID%
    sleep %shortR%
    ControlSend, , {Space} , ahk_id %ClientID3%
    sleep %thievR%

    ; -- it 2
    ;WinActivate, ahk_id %rsClientID%
    ControlSend, , {Space} , ahk_id %rsClientID%
    sleep %shortR%
    ControlSend, , {Space} , ahk_id %Client2ID%
    sleep %shortR%
    ControlSend, , {Space} , ahk_id %ClientID3%
    sleep %thievR%

    ; -- it 3
    ;WinActivate, ahk_id %rsClientID%
    ControlSend, , {Space} , ahk_id %rsClientID%
    sleep %shortR%
    ControlSend, , {Space} , ahk_id %Client2ID%
    sleep %shortR%
    ControlSend, , {Space} , ahk_id %ClientID3%
    sleep %thievR%

    ; -- it 4
    ;WinActivate, ahk_id %rsClientID%
    ControlSend, , {Space} , ahk_id %rsClientID%
    sleep %shortR%
    ControlSend, , {Space} , ahk_id %Client2ID%
    sleep %shortR%
    ControlSend, , {Space} , ahk_id %ClientID3%
    sleep %thievR%

    ; -- it 5 -- EAT
    ;WinActivate, ahk_id %rsClientID%
    ControlSend, , 5 , ahk_id %rsClientID%
    sleep %shortR%
    ControlSend, , 5 , ahk_id %Client2ID%
    sleep %shortR%
    ControlSend, , 5 , ahk_id %ClientID3%
    sleep %thievR%


} 
return