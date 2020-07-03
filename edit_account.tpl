#Edit_Account

Full Name: {$userinfo.name|escape:"quotes"}

{foreach item=ps from=$pay_accounts}
                              <tr>
                               <td>Your {$ps.name} acc no:</td>
                               <td>{if $settings.usercanchangeegoldacc == 0 && $ps.account != ''}{$ps.account|escape:html}{else}<input type=text class=inpts size=30 name="pay_account[{$ps.id}]" value="{$frm.pay_account[$ps.id]|default:$ps.account|escape:html}" data-validate="{$ps.validate.func}" data-validate-{$ps.validate.func}="{$ps.validate[$ps.validate.func]}" data-validate-notice="{$ps.validate.notification|escape:html}">{/if}</td>
                              </tr>
                              {/foreach}
                              {foreach item=p from=$mpay_accounts}
                              {foreach item=ps from=$p.accounts}
                              <tr>
                               <td>Your {$p.name} {$ps.name}:</td>
                               <td>{if $settings.usercanchangeegoldacc == 0 && $ps.value != ''}{$ps.value|escape:html}{else}<input type=text class=inpts size=30 name="pay_account[{$p.id}][{$ps.name|escape:html}]" value="{$frm.pay_account[$p.id][$ps.name]|default:$ps.value|escape:html}">{/if}</td>
                              </tr>
                              {/foreach}
                              {/foreach}
