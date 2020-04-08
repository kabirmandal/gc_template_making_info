 ## Display Compound Success
 {if $frm.complete}
 Compounding percent has been successfully changed. <a style="background-color:unset;" href="?a=deposit_list">Go to deposit list</a>
<br><br>
{/if}

# Display compound change option
 <select name='percent' class=inpts>
{foreach from=$compound_percents key=p item=i}
 <option value="{$p}" {if $deposit.compound == $p}selected{/if}>{$p}</option>
{/foreach}
  </select>

