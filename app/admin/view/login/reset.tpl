<!doctype html>
<html lang="zh-cn">
<head>
<meta charset="utf-8">
<title>{:config('system.web_name')}-重置密码</title>
<base href="{:config('app.web_url')}">
<script type="text/javascript" src="public/base/jquery.js"></script>
<script type="text/javascript" src="public/base/H-ui.admin/h-ui/js/H-ui.min.js"></script>
<script type="text/javascript" src="public/admin/js/{:request()->controller()}.js"></script>
<link rel="stylesheet" type="text/css" href="public/base/H-ui.admin/h-ui/css/H-ui.min.css">
<link rel="stylesheet" type="text/css" href="public/base/styles/Basic.css">
<link rel="stylesheet" type="text/css" href="public/admin/styles/{:request()->controller()}.css">
</head>

<body>
<form method="post" action="" class="form">
  <table>
    <tr><td colspan="2" class="left">此功能仅供系统创始人使用，如果您非系统创始人，请联系管理员登录后台为您重置密码</td></tr>
    <tr><td>密码重置密钥：</td><td><input type="text" name="reset_pass_key" class="input-text"></td></tr>
    <tr><td>设置新密码：</td><td><input type="password" name="pass" class="input-text"></td></tr>
    <tr><td>重复新密码：</td><td><input type="password" name="repass" class="input-text"></td></tr>
    <tr><td colspan="2" style="text-align:center;"><input type="submit" value="确认重置" class="btn btn-primary radius"></td></tr>
  </table>
</form>
</body>
</html>