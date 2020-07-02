#Deposit_confirm
Check if No data Error   {if $false_data != 1}
Check if Deposit ID Valid   {if $deposit.id > 0}
Display Plan Name {$deposit.name|escape:html}
Display Coin Payment QR code: {$coin_payment_image}
Principal Return: {if $deposit.principal_return}Yes{if $deposit.principal_return_hold_percent > 0}, with {$deposit.principal_return_hold_percent|number_format:2}% fee{/if}{else}No (included in profit){/if}
Deposit Amount: {$currency_sign}{$deposit.user_amount}  
Converted Amount: {$deposit.converted_fiat} Amount:
Deposit Amount: {$deposit.amount}
