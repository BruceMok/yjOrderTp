﻿$(function(){
	$('.all').click(function(){
		$('input[type=checkbox]').each(function(){
			$(this).iCheck('check');
		});
	});
	$('.no').click(function(){
		$('input[type=checkbox]').each(function(){
			$(this).iCheck('uncheck');
		});
	});
	$('.selected').click(function(){
		$('input[type=checkbox]').each(function(){
			$(this).iCheck('uncheck');
		});
		$('label.red').each(function(){
			$(this).find('input').iCheck('check');
		});
	});
});