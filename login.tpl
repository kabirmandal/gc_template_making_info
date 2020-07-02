<h3>Login</h3>
<form method=post>
<input type=hidden name=a value='do_login'>
<input type="text" name="username" placeholder="username"> <br>
<input type="password" name="password" placeholder="password">
<input type="submit">
</form>

Display Login Error
----------------------
{if $frm.say eq 'invalid_login'}
<h3>Login error:</h3><br><br>

Your login or password or turing image code is wrong. Please check this information.
{/if}
