; @ ZOvl with Overload on 'u' key, sipped every 6 minutes
; TODO: Possibility to add features for lantadyme sticks and adjust to 8 minute sips 
; Based on ZFisher

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
    Random,ovlR, 99387,119042 


    sleep %shortR%
    ; -- it 1 --> sip
    ;WinActivate, ahk_id %rsClientID%
    ControlSend, , u , ahk_id %rsClientID%
    sleep %shortR%
    ControlSend, , {Space} , ahk_id %rsClientID%
    sleep %ovlR%

    sleep %shortR%
    ; -- it 2
    ;WinActivate, ahk_id %rsClientID%
    ControlSend, , {Space} , ahk_id %rsClientID%
    sleep %ovlR%
    
    sleep %shortR%
    ; -- it 3 --> reset loop
    ;WinActivate, ahk_id %rsClientID%
    ControlSend, , {Space} , ahk_id %rsClientID%
    sleep %ovlR%


} 
return