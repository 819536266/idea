
<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>启明星后台登录</title>
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
<link rel="stylesheet"
	href="${request.contextPath}/admin/css/font.css">
<link rel="stylesheet"
	href="${request.contextPath}/admin/css/xadmin.css">
<link rel="stylesheet"
	href="${request.contextPath}/admin/css/font.css">
<link rel="stylesheet"
	href="${request.contextPath}/admin/css/xadmin.css">

<script type="text/javascript"
	src="${request.contextPath}/admin/js/jquery-3.2.1.js"></script>
<script
	src="${request.contextPath}/admin/lib/layui/layui.all.js"
	charset="utf-8"></script>
<script type="text/javascript"
	src="${request.contextPath}/admin/js/xadmin.js"></script>

</head>
<body class="login-bg">
	<div class="login">
		<div class="message">企明星-管理登录</div>
		<div id="darkbannerwrap"></div>

		<form method="post" class="layui-form" action="">
			<input name="rootName" placeholder="用户名" type="text"
				lay-verify="required" class="layui-input"  >
			<hr class="hr15">
			<input name="rootPassword" lay-verify="required" placeholder="密码"
				type="password" class="layui-input"   >
			<hr class="hr15">
			<input value="登录" lay-submit lay-filter="login" style="width: 100%;"
				type="submit">

			<hr class="hr20">
		</form>
	</div>

	<script>
		$(function() {
			var path = "${request.contextPath}";
			var url = path + "/admin/login1";
			layui.use('form', function() {
				var form = layui.form;
				//监听提交
				form.on('submit(login)', function(data) {

					$.post(url, data.field, function(r) {


						if (r==1) {
							location.href = path + "/admin/index";
						} else {
							layer.alert("登录失败!");
						}
					});

					return false;
				});
			});
		})
	</script>


</body>
</html>