Your Name:
{if $userinfo.logged}
{$userinfo.name}
{else}
<input type="text" name="name" value="{$frm.name|escape:htmlall}">
{/if}

Your Email:
{if $userinfo.logged}
 {$userinfo.email}
{else}
<input type="text" name="email" value="{$frm.email|escape:htmlall}" size=30 class=inpts></td>
{/if}

Message: <textarea name=message >{$frm.message|escape:htmlall}</textarea>
<input type=submit value="Send" class=sbmt>
