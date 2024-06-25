; @ ZPrayer - At START of cycle, attempt to consume another burial powder (0),
; then press No (2) assuming it was not consumed, and bury 25 times
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


    Random,miniR, 1040,1812
    Random,shortR, 3104,5216
    Random,herbR, 12234,16430
    Random,longR, 25167,39892 


    sleep %shortR%
    ;WinActivate, ahk_id %rsClientID%
    ControlClick, x1111 y1111, ahk_id %rsClientID%, , , NA
    sleep %shortR%
    ControlSend, , 2 , ahk_id %rsClientID%
    sleep %shortR%

    ; Attempt to consume burial powder (0)
    ControlSend, , 0 , ahk_id %rsClientID%
    sleep %miniR%
    ; Press No (2) for consuming extra powder, assuming one was not used 
    ControlSend, , 2 , ahk_id %rsClientID%

    ; Bury 25 times
    ControlSend, , 3 , ahk_id %rsClientID%
    sleep %miniR%
    ControlSend, , 3 , ahk_id %rsClientID%
    sleep %miniR%
    ControlSend, , 3 , ahk_id %rsClientID%
    sleep %miniR%
    ControlSend, , 3 , ahk_id %rsClientID%
    sleep %miniR%
    ControlSend, , 3 , ahk_id %rsClientID%
    sleep %miniR%
    ControlSend, , 3 , ahk_id %rsClientID%
    sleep %miniR%
    ControlSend, , 3 , ahk_id %rsClientID%
    sleep %miniR%
    ControlSend, , 3 , ahk_id %rsClientID%
    sleep %miniR%
    ControlSend, , 3 , ahk_id %rsClientID%
    sleep %miniR%
    ControlSend, , 3 , ahk_id %rsClientID%
    sleep %miniR%
    ControlSend, , 3 , ahk_id %rsClientID%
    sleep %miniR%
    ControlSend, , 3 , ahk_id %rsClientID%
    sleep %miniR%
    ControlSend, , 3 , ahk_id %rsClientID%
    sleep %miniR%
    ControlSend, , 3 , ahk_id %rsClientID%
    sleep %miniR%
    ControlSend, , 3 , ahk_id %rsClientID%
    sleep %miniR%
    ControlSend, , 3 , ahk_id %rsClientID%
    sleep %miniR%
    ControlSend, , 3 , ahk_id %rsClientID%
    sleep %miniR%
    ControlSend, , 3 , ahk_id %rsClientID%
    sleep %miniR%
    ControlSend, , 3 , ahk_id %rsClientID%
    sleep %miniR%
    ControlSend, , 3 , ahk_id %rsClientID%
    sleep %miniR%
    ControlSend, , 3 , ahk_id %rsClientID%
    sleep %miniR%
    ControlSend, , 3 , ahk_id %rsClientID%
    sleep %miniR%
    ControlSend, , 3 , ahk_id %rsClientID%
    sleep %miniR%
    ControlSend, , 3 , ahk_id %rsClientID%
    sleep %miniR%
    ControlSend, , 3 , ahk_id %rsClientID%





} 
return