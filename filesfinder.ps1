$DossierSource = "C:\Users\$env:username\Desktop\CyberMonth\Scripts"

$FichierSortie = "C:\Users\$env:username\ListeFichiers.txt"

$ListeFichiers = Get-ChildItem -Path $DossierSource -File -Recurse

$ListeNoms = $ListeFichiers.FullName

$ListeNoms | Out-File -FilePath $FichierSortie -Encoding UTF8

notepad "C:\Users\$env:username\ListeFichiers.txt"