; @ ZProtean with Power-Up (5), activating ON START
; TODO x/y coordinates need to be set

F9::
Toggle := !Toggle
rsClientID = 

Send, , Started , ,
loop
{
    If not Toggle
        break

    Random, , NewSeed

    Random,miniR, 1040,3269
    Random,shortR, 3104,5216
    Random,proteanR, 165239,192063 
    

    sleep %shortR%
    ; -- it 1
    ;Consume Protean Power-Up (5)
    ControlSend, , 5 , ahk_id %rsClientID%
    sleep %shortR%
    ControlClick, x1111 y1111, ahk_id %rsClientID%, , , NA
    sleep %shortR%
    ControlSend, , {Space} , ahk_id %rsClientID%
    sleep %proteanR%

    sleep %shortR%
    ; -- it 2
    ;WinActivate, ahk_id %rsClientID%
    ControlClick, x1111 y1111, ahk_id %rsClientID%, , , NA
    sleep %shortR%
    ControlSend, , {Space} , ahk_id %rsClientID%
    sleep %proteanR%

} 
return