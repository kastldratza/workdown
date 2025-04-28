# Get the current date and add 8 hours
$CurrentDate = Get-Date
$CountdownDate = $CurrentDate.AddHours(8).ToString("yyyy-MM-ddTHH:mm:ss")

# Path to the HTML file
$HtmlFile = "countdown.html"

# Load the HTML content
$htmlContent = Get-Content $HtmlFile

# Replace the existing countdownDate variable in JavaScript
$htmlContent = $htmlContent -replace 'const countdownDate = new Date\("[^"]*"\)\.getTime\(\);', 'const countdownDate = new Date("' + $CountdownDate + '").getTime();'

# Save the updated HTML file
Set-Content $HtmlFile $htmlContent

Write-Host "HTML file updated with countdown date: $CountdownDate"

