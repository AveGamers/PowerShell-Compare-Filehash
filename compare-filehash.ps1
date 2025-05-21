function compare-filehash($File, $Hash, $Type) {
    $TypeFiles = "Files"
    $TypeHash = "Hash"

    if ($Type -match $TypeFiles) {
        Write-Host "Comparing 2 Files Hashes!"
        $File1_Hash = (Get-FileHash $File).Hash
        $File2_Hash = (Get-FileHash $Hash).Hash
        if ($File1_Hash -match $File2_Hash) {
            Write-Host "####################################"
            Write-Host "#        The Hashes Match!         #"
            Write-Host "####################################"
            Write-Host "File1 -> $File1_Hash"
            Write-Host "File2 -> $File2_Hash"
        } else {
            Write-Host "####################################"
            Write-Host "#     The Hashes DONT Match!       #"
            Write-Host "####################################"
            Write-Warning "File1 -> $File1_Hash"
            Write-Warning "File2 -> $File2_Hash"
        }
    } elseif ($Type -match $TypeHash) {
        Write-Host "Compare a File with a known Hash-Sum"
        $File1_Hash = (Get-FileHash $File).Hash
        if ($File1_Hash -match $Hash) {
            Write-Host "####################################"
            Write-Host "#        The Hashes Match!         #"
            Write-Host "####################################"
            Write-Host "File1 -> $File1_Hash"
            Write-Host "Hash  -> $Hash"
        } else {
            Write-Host "####################################"
            Write-Host "#     The Hashes DONT Match!       #"
            Write-Host "####################################"
            Write-Host "File1 -> $File1_Hash"
            Write-Host "Hash  -> $Hash"
        } 
    } else {
        Write-Host "Wrong Syntax!"
        Write-Host "Correct Syntax => compare-filehash <File> <Hash or File2> <Type: Files, Hash>"
        Write-Host "Example: compare-filehash C:\temp\file1.txt C:\temp\file2.txt Files"
        Write-Host "Example: compare-filehash C:\temp\file1.txt 1234567890abcdef1234567890abcdef Hash"
    }
}

Write-Host "   _____                                            ______ _ _      _               _      "
Write-Host "  / ____|                                          |  ____(_) |    | |             | |     "
Write-Host " | |     ___  _ __ ___  _ __   __ _ _ __ ___ ______| |__   _| | ___| |__   __ _ ___| |__   "
Write-Host " | |    / _ \| '_ ` _ \| '_ \ / _` | '__/ _ \______|  __| | | |/ _ \ '_ \ / _` / __| '_ \  "
Write-Host " | |___| (_) | | | | | | |_) | (_| | | |  __/      | |    | | |  __/ | | | (_| \__ \ | | | "
Write-Host "  \_____\___/|_| |_| |_| .__/ \__,_|_|  \___|      |_|    |_|_|\___|_| |_|\__,_|___/_| |_| "
Write-Host "                       | |                                                                 "
Write-Host "                       |_|                                                                 "
Write-Host " => A PowerShell function to compare file hashes - Written by @avegamers / Jonas Techand <="
Write-Host ""
Write-Host "Correct Syntax => compare-filehash <File> <Hash or File2> <Type: Files, Hash>"
Write-Host "Example: compare-filehash C:\temp\file1.txt C:\temp\file2.txt Files"
Write-Host "Example: compare-filehash C:\temp\file1.txt 1234567890abcdef1234567890abcdef Hash"