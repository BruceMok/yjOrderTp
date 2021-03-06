<!doctype html>
<html lang="zh-cn">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0">
<title>{:config('system.web_name')}-提示</title>
<base href="{:config('app.web_url')}">
<script type="text/javascript" src="public/base/jquery.js"></script>
<script type="text/javascript" src="public/base/H-ui.admin/h-ui/js/H-ui.min.js"></script>
<script type="text/javascript" src="public/base/H-ui.admin/h-ui.admin/js/H-ui.admin.js"></script>
<link rel="stylesheet" type="text/css" href="public/base/H-ui.admin/h-ui/css/H-ui.min.css">
<link rel="stylesheet" type="text/css" href="public/base/styles/Tip.css">
<script type="text/javascript">
var ThinkPHP = {
	'H-ui-skin' : '{:config("system.manage_skin")}'
};
</script>
</head>

<body>
<div class="tip">
  <h3>提示</h3>
  
  <div>
    <h4 class="{$Kind}">{$Tip}</h4>
    {if condition="$Kind=='success'"}
    {if condition="$Type==0"}
    <p><a href="{$Url}">{$A}</a></p>
    <script type="text/javascript">setTimeout("location.href='{$Url}'",{$Refresh}*1000);</script>
    {/if}
    {elseif condition="$Kind=='failed'"/}
    {if condition="$Type==0"}
    <p><a href="javascript:history.go(-1)">{$A}</a></p>
    <script type="text/javascript">setTimeout('history.go(-1)',{$Refresh}*1000);</script>
    {elseif condition="$Type==1"/}
    <p><a href="{$Url}">{$A}</a></p>
    <script type="text/javascript">setTimeout("location.href='{$Url}'",{$Refresh}*1000);</script>
    {/if}
    {/if}
  </div>
</div>

{if condition="isset($Run)"}{$Run}{/if}
</body>
</html>