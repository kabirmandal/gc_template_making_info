<h3>sign up</h3>
<form method=post onsubmit="return checkform()" name="regform">
<input type=hidden name=a value="signup">
<input type=hidden name=action value="signup">
<input type=text name=fullname value="{$frm.fullname|escape:"quotes"}" class=inpts size=30  placeholder="fullname">  <br>
<input type=text name=username value="{$frm.username|escape:"quotes"}" class=inpts size=30 placeholder="username"> <br>
<input type=password name=password value="{$frm.password|escape:"quotes"}" class=inpts size=30 placeholder="password"> <br>
<input type=password name=password2 value="{$frm.password2|escape:"quotes"}" class=inpts size=30 placeholder="password"> <br>
<input type=text name=email value="{$frm.email|escape:"quotes"}" class=inpts size=30 placeholder="email"> <br>
<input type=text name=email1 value="{$frm.email1|escape:"quotes"}" class=inpts size=30 placeholder="email2"> <br>

{if $referer}
<tr>
 <td>Your Upline:</td>
 <td>{*<a href="mailto:{$referer.email}">*}{$referer.name}{*</a>*} ({$referer.username})</td>
</tr>
{/if}

<input type=checkbox name=agree value=1>
<input type=submit value="Register" class=sbmt>
</form>


Note:
=========
Delete these 2 line from sign up form area
<input type="hidden" name="form_id" value="15937474957084">
<input type="hidden" name="form_token" value="95cef1535a245ae2eea37bb84a879668">
