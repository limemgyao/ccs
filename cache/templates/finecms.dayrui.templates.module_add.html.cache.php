<script type="text/javascript">
$(function() { //防止回车提交表单
	document.onkeydown = function(e){ 
		var ev = document.all ? window.event : e;
		if (ev.keyCode==13) $("#mark").val("1"); // 标识不能提交表单
	}
	$(".table_form th").last().css('border','none');
	$(".table_form td").last().css('border','none');
});
function dr_form_check() {
	if ($("#mark").val() == 0) { 
		return true;
	} else {
		return false;
	}
}
</script>
<div class="table-list" style="width:420px;">
<form action="" method="post" id="myform" name="myform" onsubmit="return dr_form_check()">
<input name="mark" id="mark" type="hidden" value="0">
<table width="100%" class="table_form">
<tr>
    <th width="100"><font color="red">*</font>&nbsp;<?php echo fc_lang('名称'); ?>： </th>
    <td><input class="input-text" type="text" name="data[name]" size="20" /></td>
</tr>
<tr>
    <th><font color="red">*</font>&nbsp;<?php echo fc_lang('表名'); ?>： </th>
    <td><input class="input-text" type="text" name="data[dirname]" size="20" /></td>
</tr>

</table>
</form>
</div>