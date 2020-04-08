
## Compund ##
Show compound
{if $deposit.compound != -1}
 Compound: {$deposit.compound|number_format}%

{/if}
in form add this code <input type=hidden name=compound value={$deposit.compound}>
