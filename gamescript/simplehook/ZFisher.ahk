; @ ZFisher with Sp. Att. sip on "5" --> approx. every 15 minutes

F9::
Toggle := !Toggle
rsClientID = 

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
    Random,fishR, 175438,192402 

    Random, , NewSeed

    sleep %shortR%
    ; -- it 1
    ;WinActivate, ahk_id %rsClientID%
    ControlClick, x1111 y1111, ahk_id %rsClientID%, , , NA
    sleep %shortR%
    ControlSend, , {Space} , ahk_id %rsClientID%
    sleep %fishR%

    sleep %shortR%
    ; -- it 2
    ;WinActivate, ahk_id %rsClientID%
    ControlClick, x1111 y1111, ahk_id %rsClientID%, , , NA
    sleep %shortR%
    ControlSend, , {Space} , ahk_id %rsClientID%
    sleep %fishR%
    
    sleep %shortR%
    ; -- it 3
    ;WinActivate, ahk_id %rsClientID%
    ControlClick, x1111 y1111, ahk_id %rsClientID%, , , NA
    sleep %shortR%
    ControlSend, , {Space} , ahk_id %rsClientID%
    sleep %fishR%

    sleep %shortR%
    ; -- it 4
    ;WinActivate, ahk_id %rsClientID%
    ControlClick, x1111 y1111, ahk_id %rsClientID%, , , NA
    sleep %shortR%
    ControlSend, , {Space} , ahk_id %rsClientID%
    sleep %fishR%

    sleep %shortR%
    ; -- it 5
    ;WinActivate, ahk_id %rsClientID%
    ControlClick, x1111 y1111, ahk_id %rsClientID%, , , NA
    sleep %shortR%
    ControlSend, , {Space} , ahk_id %rsClientID%
    sleep %fishR%

    sleep %shortR%
    ; -- it 6 -- sip
    ;WinActivate, ahk_id %rsClientID%
    ControlClick, x1111 y1111, ahk_id %rsClientID%, , , NA
    sleep %shortR%
    ControlSend, , {Space} , ahk_id %rsClientID%
    sleep %shortR%
    ControlSend, , 5 , ahk_id %rsClientID%
    sleep %fishR%


} 
return