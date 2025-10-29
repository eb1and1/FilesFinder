$DossierSource = "C:\Users\$env:username\Desktop\CyberMonth\Scripts"

$FichierSortie = "C:\Users\$env:username\ListeFichiers.txt"

# Récupérer tous les fichiers du dossier (et sous-dossiers si désiré)
# Enlever -Recurse si vous ne voulez que les fichiers du dossier principal
$ListeFichiers = Get-ChildItem -Path $DossierSource -File -Recurse

# Extraire uniquement les noms complets des fichiers
$ListeNoms = $ListeFichiers.FullName

# Écrire la liste dans le fichier texte
$ListeNoms | Out-File -FilePath $FichierSortie -Encoding UTF8

notepad "C:\Users\$env:username\ListeFichiers.txt"