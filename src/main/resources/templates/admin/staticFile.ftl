
<#--<c:if test="${sessionScope.admin==null}">
	<c:redirect url="login.ftl?msg=请先登录"></c:redirect>
</c:if>
<c:set var="pp" value="${request.contextPath}"></c:set>
<c:set var="fileServer"
	value="http://cj63495025.net/fileServer/upload/img"></c:set>
<c:set var="fileServerVideo"
	value="http://cj63495025.net/fileServer/upload/img"></c:set>
<c:set var="viewOffice"
	value="https://view.officeapps.live.com/op/view.aspx?src="></c:set>-->
<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" href="${request.contextPath}/admin/css/font.css">
<link rel="stylesheet" href="${request.contextPath}/admin/css/xadmin.css">
<link rel="stylesheet" href="${request.contextPath}/admin/css/font.css">
<link rel="stylesheet" href="${request.contextPath}/admin/css/xadmin.css">
<link rel="stylesheet"
	href="${request.contextPath}/admin/lib/laydate/theme/default/laydate.css" media="all">
<script type="text/javascript" src="${request.contextPath}/admin/js/jquery-3.2.1.js"></script>
<script src="${request.contextPath}/admin/lib/layui/layui.all.js" charset="utf-8"></script>
<script type="text/javascript" src="${request.contextPath}/admin/js/xadmin.js"></script>
<script type="text/javascript" src="${request.contextPath}/admin/js/YFutil.js"></script>
<script type="text/javascript" src="${request.contextPath}/admin/lib/laydate/laydate.js"></script>
<script type="text/javascript" src="${request.contextPath}/admin/js/jquery.form.min.js"></script>
<#--
<script>
	var Jspath = "${request.contextPath}";
	var baseLimit = 20;
	var fileServer = "http://cj63495025.net/fileServer/upload/img";
	function close() {
		var index = parent.layer.getFrameIndex(window.name);
		parent.layer.close(index);
	}
</script>-->
