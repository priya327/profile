$path = 'C:\Users\PRIYA.P\OneDrive\Desktop\portfolio\index.html'
$content = Get-Content $path -Encoding UTF8
$kept = $content[0..885] + $content[1636..($content.Length - 1)]
$kept | Set-Content $path -Encoding UTF8
Write-Host "Done. Lines remaining: $($kept.Count)"
