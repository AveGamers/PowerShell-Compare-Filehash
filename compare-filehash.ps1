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
            Write-Host "File1     -> $File1_Hash"
            Write-Host "ang. Hash -> $Hash"
        } else {
            Write-Host "####################################"
            Write-Host "#     The Hashes DONT Match!       #"
            Write-Host "####################################"
            Write-Host "File1     -> $File1_Hash"
            Write-Host "ang. Hash -> $Hash"
        } 
    } else {
        Write-Host "Wrong Syntax => compare-filehash <File> <Hash or File2> <Type: Files, Hash>"
    }
}
