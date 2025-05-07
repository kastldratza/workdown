$CurrentDate = Get-Date
$CountdownDate = $CurrentDate.AddHours(8).ToString("yyyy-MM-ddTHH:mm:ss")
$HtmlFile = "countdown.html"
$htmlContent = Get-Content $HtmlFile
$htmlContent = $htmlContent -replace 'const countdownDate = new Date\("[^"]*"\)\.getTime\(\);', "const countdownDate = new Date(`"$CountdownDate`").getTime();"
Set-Content $HtmlFile $htmlContent
Write-Host "HTML file updated with countdown date: $CountdownDate"

