; @ ZDiss - Disassemble on 3, must click inside inv

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
    Random,invR, 44792,59186

    Random, , NewSeed

    sleep %shortR%
    ;WinActivate, ahk_id %rsClientID%
    ControlSend, , 3 , ahk_id %rsClientID%
    sleep %shortR%
    ControlClick, x1111 y1111, ahk_id %rsClientID%, , , NA
    sleep %shortR%
    ControlSend, , {Space} , ahk_id %rsClientID%
    sleep %invR%

} 
return