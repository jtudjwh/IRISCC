<% include file="cpanel/func_header.inc.tpl" %>
<script language="javascript">
	$().ready(function() {
		$("#display_advance").click(function(){
			if ($('#advance').is(':visible') == false)
			{
				$('#advance').show();
				$('#advance').focus();
			} else {
				$('#advance').hide();
			}
		});
	});
</script>
	<h4>创建IAX2分机</h4>

<form name="do_exten_add_iax2" method="POST" action="?action=do_exten_add_iax2" target="takefire">
	<table border="0" cellspacing="0" style="margin: 20px">
		<tr>
			<td height="30" align="left"><img src="../images/icon/24.png">&nbsp;第二步 用户信息</td>
		</tr>
		<tr>
			<td height="30" align="center" width="100%" colspan="2"><hr size="1"></td>
		</tr>
		<tr>
			<td height="30" align="left" style="padding-left: 10px;padding-right: 40px">分机号码</td>
			<td height="30"><input type="text" id="iptext1" name="accountcode" size="8" value="" class="tipmsg" title="必填,3位以上数字"></td>
		</tr>
		<tr>
			<td height="30" align="left" style="padding-left: 10px;padding-right: 40px"><font color="#ACA8A1">用户姓名</font></td>
			<td height="30"><input type="text" id="iptext1" name="info_name" size="20" value=""></td>
		</tr>
		<tr>
			<td height="30" align="left" style="padding-left: 10px;padding-right: 40px"><font color="#ACA8A1">电子邮箱</td>
			<td height="30"><input type="text" id="iptext1" name="info_email" size="20" value=""></td>
		</tr>
		<tr>
			<td height="30" align="left" style="padding-left: 10px;padding-right: 40px">数字密码</td>
			<td height="30"><input type="text" id="iptext1" name="password" size="8" value="" class="tipmsg" title="必填,纯数字填写"></td>
		</tr>
		<tr>
			<td height="30" align="left" style="padding-left: 10px;padding-right: 40px">再次输入密码</td>
			<td height="30"><input type="text" id="iptext1" name="repassword" size="8" value="" class="tipmsg" title="必填,纯数字填写"></td>
		</tr>
		<tr>
			<td height="30" align="left" style="padding-left: 10px;padding-right: 40px"><font color="#ACA8A1">详细资料</td>
			<td height="30"><input type="text" id="iptext1" name="info_detail" size="30" value=""></td>
		</tr>
		<tr>
			<td height="30" align="left" style="padding-left: 10px;padding-right: 40px"><font color="#ACA8A1">用户分组</td>
			<td height="30"><input type="text" id="iptext1" name="extengroup" size="30" value="" class="tipmsg" title="填写用户要分配的分组名称以逗号或空格区分两个分组"></td>
		</tr>
	</table>
	<table border="0" cellspacing="0" style="margin: 20px;margin-top: 5px">
		<tr>
			<td height="30" align="left">&nbsp;&nbsp;<img src="../images/icon/83.png" border="0"><a href="###" id='display_advance'>&nbsp;点击显示高级选项&nbsp;</span></a></td>
		</tr>
		<tr>
			<td colspan="3">
				<table border="0" cellspacing="0" id='advance' style='display:none'>
					<tr>
						<td height="30" align="left"><img src="../images/icon/24.png">&nbsp;协议参数</td>
					</tr>
					<tr>
						<td height="30" align="center" width="100%" colspan="2"><hr size="1"></td>
					</tr>
					<tr>
						<td height="30" align="left" style="padding-left: 10px;padding-right: 40px">主机地址</td>
						<td height="30"><input type="text" id="iptext1" name="host" size="16" value="dynamic"></td>
					</tr>
					<tr>
						<td height="30" align="left" style="padding-left: 10px;padding-right: 40px">端口</td>
						<td height="30"><input type="text" id="iptext1" name="port" size="6" value="4569"></td>
					</tr>
					<tr>
						<td height="30" valign='top' style="padding-left: 10px;padding-right: 40px"><span class="tipmsg" title="分机的IP地址,如果分机是固定IP请填写地址,否则请保持dynamic." style="color: #0C8AD6;text-decoration: none;font-size: 12px"><img src="../images/icon/19.png"><b>关于地址和端口 !</b></span></td>
					</tr>
					<tr>
						<td height="60" align="left" style="padding-left: 10px;padding-right: 40px">转发参数</td>
						<td height="60"><input type="radio" value="yes" name="transfer">Yes <input type="radio" value="no" checked name="transfer">No <input type="radio" value="mediaonly" name="transfer">Mediaonly</td>
					</tr>
					<tr>
						<td height="30" align="left" style="padding-left: 10px;padding-right: 40px">自定义变量</td>
						<td height="30"><input type="text" id="iptext1" name="setvar" size="20" value=""></td>
					</tr>
					<tr>
						<td height="30" valign='top' style="padding-left: 10px;padding-right: 40px"><span class="tipmsg" title="这个参数是专门用于将指定的变量传递到呼叫流程的方法,适用用二次开发情况." style="color: #0C8AD6;text-decoration: none;font-size: 12px"><img src="../images/icon/19.png"><b>填写格式?</b></span></td>
					</tr>
					<tr>
						<td height="30" align="left" style="padding-left: 10px;padding-right: 40px">呼转号码</td>
						<td height="30"><input type="text" id="iptext1" name="transfernumber" size="16" value="" class="tipmsg" title="如果启用了呼叫转移功能,当拨打此分机失败以后将呼转次号码."></td>
					</tr>
					<tr>
						<td height="30" align="left" style="padding-left: 10px;padding-right: 40px">无法接通处理</td>
						<td height="30">
<table border="0" width="100%">
	<tr>
		<td>&nbsp;&nbsp;<input type="radio" value="" name="diallocal_failed" checked>系统默认&nbsp;&nbsp;</td>
		<td>&nbsp;&nbsp;<input type="radio" value="nothing" name="diallocal_failed">不处理&nbsp;&nbsp;</td>
		<td>&nbsp;&nbsp;<input type="radio" value="failedtransfer" name="diallocal_failed">呼叫转移&nbsp;&nbsp;</td>
	</tr>
	<tr>
		<td>&nbsp;&nbsp;<input type="radio" value="voicemail" name="diallocal_failed">语音信箱&nbsp;&nbsp;</td>
		<td>&nbsp;&nbsp;<input type="radio" value="fax" name="diallocal_failed">数字传真&nbsp;&nbsp;</td>
		<td>&nbsp;&nbsp;<input type="radio" value="ivr" name="diallocal_failed">IVR提醒菜单&nbsp;&nbsp;</td>
	</tr>
</table>
						</td>
					</tr>
				</table>
				</div>
			</td>
		</tr>
	</table>
	<table border="0" cellspacing="0" style="margin: 20px">
		<tr>
			<td>
				<input type="submit" value="保存" name="submit" id='btn1'>
			</td>
		</tr>
	</table>
</form>

<% include file="cpanel/func_footer.inc.tpl" %>
