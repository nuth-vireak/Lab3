# AUTHOR: NUTH VIREAK

function money_exchange {

    param(
        [int]$amount,
        [string]$currency_from,
        [string]$currency_to
    )

    # if the currency_from is "Riel" and currency_to is "Dollar"
    if ($currency_from -eq "Riel" -and $currency_to -eq "Dollar") {
        # return the amount divided by 4100
        return $amount / 4100
    }

    # if the currency_from is "Dollar" and currency_to is "Riel"
    if ($currency_from -eq "Dollar" -and $currency_to -eq "Riel") {
        # return the amount multiplied by 4100
        return $amount * 4100
    }

    # if the currency_from is "Riel" and currency_to is "Baht"
    if ($currency_from -eq "Riel" -and $currency_to -eq "Baht") {
        # return the amount divided by 100
        return $amount / 100
    }

    # if the currency_from is "Baht" and currency_to is "Riel"
    if ($currency_from -eq "Baht" -and $currency_to -eq "Riel") {
        # return the amount multiplied by 100
        return $amount * 100
    }

    # if the currency_from is "Riel" and currency_to is "Euro"
    if ($currency_from -eq "Riel" -and $currency_to -eq "Euro") {
        # return the amount divided by 5000
        return $amount / 5000
    }

    # if the currency_from is "Euro" and currency_to is "Riel"
    if ($currency_from -eq "Euro" -and $currency_to -eq "Riel") {
        # return the amount multiplied by 5000
        return $amount * 5000
    }

    # if the currency_from is "Riel" and currency_to is "Franc"
    if ($currency_from -eq "Riel" -and $currency_to -eq "Franc") {
        # return the amount divided by 4500
        return $amount / 4500
    }

    # if the currency_from is "Franc" and currency_to is "Riel"
    if ($currency_from -eq "Franc" -and $currency_to -eq "Riel") {
        # return the amount multiplied by 4500
        return $amount * 4500
    }
}

# Input Amount from user
$amount = Read-Host "Enter Amount: "

# Input Currency From
$currency_from = Read-Host "Enter Currency From: "

# Input Currency To
$currency_to = Read-Host "Enter Currency To: "

# call the function "money_exchange" with the amount, currency_from and currency_to and store the result in a variable "result"
$result = money_exchange -amount $amount -currency_from $currency_from -currency_to $currency_to

# display the result of the calculation and print the result to the console
Write-Host "--------------------------------"
Write-Host "Amount : [$amount]"
Write-Host "Currency From : [$currency_from]"
Write-Host "Currency To : [$currency_to]"
Write-Host "-------------Result-------------"
Write-Host "Amount received:" $result.ToString("N2")
Write-Host "--------------------------------"