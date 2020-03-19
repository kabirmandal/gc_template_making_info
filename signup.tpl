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
<input type=checkbox name=agree value=1>
<input type=submit value="Register" class=sbmt>
</form>