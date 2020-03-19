{section name=plans loop=$plans}
{if $qplans > 1}
	<input type=radio name=h_id value='{$plans[plans].id}' {if (($smarty.section.plans.first == 1) && ($frm.h_id eq '')) || ($frm.h_id == $plans[plans].id)} checked {/if} onclick="updateCompound()"> 
{else}
	<input type=hidden name=h_id value='{$plans[plans].id}'>
{/if}

<b>{$plans[plans].name}</b></td>
</tr><tr>
 <td class=inheader>Plan</td>
 <td class=inheader width=200>Spent Amount ({$currency_sign})</td>
 <td class=inheader width=100 nowrap><nobr>{$plans[plans].period} Profit (%)</nobr></td>
</tr>
{section name=options loop=$plans[plans].plans}
<tr>
 <td class=item>{$plans[plans].plans[options].name|escape:html}</td>
 <td class=item align=right>{$plans[plans].plans[options].deposit}</td>
 <td class=item align=right>{$plans[plans].plans[options].percent}</td>
</tr>
{/section}

{section name=p loop=$ps}
   {if $ps[p].balance > 0 and $ps[p].status == 1}
    <tr>
     <td><input type=radio name=type value="account_{$ps[p].id}"></td>
     <td>Spend funds from the Account Balance {$ps[p].name}</td>
    </tr>
   {/if}
{/section}
{section name=p loop=$ps}
   {if $ps[p].status}
    <tr>
     <td><input type=radio name=type value="process_{$ps[p].id}" {if $smarty.section.p.index == 0}checked{/if}></td>
     <td>Spend funds from {$ps[p].name}</td>
    </tr>
   {/if}
{/section}

<input type=submit value="Spend" class=sbmt>