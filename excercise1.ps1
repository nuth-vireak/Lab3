# Create a Window Powershell script that can do the following:
# 1. Create a function named "money_exchange" with three parameters: amount, from, and to. 
# Function money_exchange will convert the currency type in the variable "from" to the currency type in the variable "to".
# Example: After calling the function money_exchange if the variable "from" = "dollars" and the variable "to" = "riel".
# it mean that the function will convert the currency type from dollars to riel, then will return the amount received.
# The exchange rates are as follows:
# Riel to Dollar or Dollar to Riel Exchange rate 1 $ = 4100R
# Riel to Baht or Baht to Riel Exchange rate 1 baht = 100 R
# Riel to Euro or Euro to Riel Exchange rate 1 Euro = R5,000
# Riel to franc or fran to riel exchange rate 1 franc = R500

# In the above script, write a script that allows the user to enter the values ​​amount,
# from, and to and call the function money_exchange and throw the three parameters as parameters of the money_exchange function.
# Displays the value returned from the money exchange function.

# 1. Create a function named "money_exchange" with three parameters: amount, from, and to.
function money_exchange {

    param(
        [int]$amount,
        [string]$from,
        [string]$to
    )

    # convert the currency type in the variable "from" to the currency type in the variable "to".
    switch ($from) {
        "dollars" {
            switch ($to) {
                "riel" {
                    $amount = $amount * 4100
                }
                "baht" {
                    $amount = $amount * 4100 / 100
                }
                "euro" {
                    $amount = $amount * 4100 / 5000
                }
                "franc" {
                    $amount = $amount * 4100 / 500
                }
            }
        }
        "riel" {
            switch ($to) {
                "dollars" {
                    $amount = $amount / 4100
                }
                "baht" {
                    $amount = $amount / 100
                }
                "euro" {
                    $amount = $amount / 5000
                }
                "franc" {
                    $amount = $amount / 500
                }
            }
        }
        "baht" {
            switch ($to) {
                "dollars" {
                    $amount = $amount * 100 / 4100
                }
                "riel" {
                    $amount = $amount * 100
                }
                "euro" {
                    $amount = $amount * 100 / 5000
                }
                "franc" {
                    $amount = $amount * 100 / 500
                }
            }
        }
        "euro" {
            switch ($to) {
                "dollars" {
                    $amount = $amount * 5000 / 4100
                }
                "riel" {
                    $amount = $amount * 5000
                }
                "baht" {
                    $amount = $amount * 5000 / 100
                }
                "franc" {
                    $amount = $amount * 5000 / 500
                }
            }
        }
        "franc" {
            switch ($to) {
                "dollars" {
                    $amount = $amount * 500 / 4100
                }
                "riel" {
                    $amount = $amount * 500
                }
                "baht" {
                    $amount = $amount * 500 / 100
                }
                "euro" {
                    $amount = $amount * 500 / 5000
                }
            }
        }
    }
}

# In the above script, write a script that allows the user to enter the values ​​amount,
# from, and to and call the function money_exchange and throw the three parameters as parameters of the money_exchange function.
# Displays the value returned from the money exchange function.
Write-Host "Enter the amount: "
$amount = Read-Host
Write-Host "Enter the currency type: "
$from = Read-Host
Write-Host "Enter the currency type to convert: "
$to = Read-Host

# call the function money_exchange and throw the three parameters as parameters of the money_exchange function.
money_exchange $amount $from $to

# Displays the value returned from the money exchange function.
Write-Host "The amount is: $amount"