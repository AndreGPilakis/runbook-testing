$uri = "https://503e943e-7bf8-4bad-b634-ffadc61bf96e.webhook.eus.azure-automation.net/webhooks?token=%2blCkVfMBH0OdRx%2frFOAV7PXrSm749BTPFb%2b04eYFxnY%3d"

$people  = @(
            @{ FirstName="Jane"; LastName="Doe"},
            @{ FirstName="Satoshi"; LastName="Nakamoto"}
        )
$body = ConvertTo-Json -InputObject $people
$header = @{ message="StartedbyContoso"}
$response = Invoke-WebRequest -Method Post -Uri $uri -Body $body -Headers $header
$jobid = (ConvertFrom-Json ($response.Content)).jobids[0]