#Deposit_confirm
Check if No data Error   {if $false_data != 1}
Check if Deposit ID Valid   {if $deposit.id > 0}
Display Plan Name {$deposit.name|escape:html}
Display Coin Payment QR code: {$coin_payment_image}
  
