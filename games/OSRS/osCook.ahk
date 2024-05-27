F9::
Toggle := !Toggle
rsClientID := ""

Send, , Started , ,
loop
{
    If not Toggle
        break

    Random, , NewSeed

    ;Send, , Started , ,

    Random, miniR, 420, 1269
    Random, shortR, 3104, 5216
    Random, herbR, 12234, 16430
    Random, longR, 35167, 44892 

    Random, , NewSeed

    sleep %shortR%
    ControlClick, x1338 y337, ahk_id %rsClientID%, , , NA
    sleep %shortR%
    ControlClick, x1338 y337, ahk_id %rsClientID%, , , NA
    sleep %shortR%
    ControlClick, x1500 y130, ahk_id %rsClientID%, , , NA
    sleep %shortR%

    SendInput {Click}
    sleep 150
    MouseMove, 0, 37, 0, R
    sleep %shortR%

    SendInput {Click}
    sleep 150
    MouseMove, 0, 37, 0, R
    sleep %shortR%

    SendInput {Click}
    sleep 150
    MouseMove, 0, 37, 0, R
    sleep %shortR%

    SendInput {Click}
    sleep 150
    MouseMove, 0, 37, 0, R
    sleep %shortR%

    SendInput {Click}
    sleep 150
    MouseMove, 0, 37, 0, R
    sleep %shortR%

    SendInput {Click}
    sleep 150
    MouseMove, 0, 37, 0, R
    sleep %shortR%

    SendInput {Click}
    sleep 150
    MouseMove, 0, 37, 0, R

    SendInput {Click}
}
return
