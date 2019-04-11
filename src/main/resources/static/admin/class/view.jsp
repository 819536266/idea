<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>课程详情</title>
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
<%@include file="../staticFile.jsp"%>
<style type="text/css">
#preview, .img, img {
	width: 165px;
	height: 110px;
}

#preview {
	border: 1px solid #cccccc;
}
</style>
<script type="text/javascript">
	function preview(file) {
		var prevDiv = document.getElementById('preview');
		if (file.files && file.files[0]) {
			var reader = new FileReader();
			reader.onload = function(evt) {
				prevDiv.innerHTML = '<img   src="'
						+ evt.target.result + '" />';
			}
			reader.readAsDataURL(file.files[0]);
		} else {
			prevDiv.innerHTML = '<div class="img" style="filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale,src=\''
					+ file.value + '\'"></div>';
		}
	}
</script>
</head>
<body>
	<div class="x-nav">
		<a class="layui-btn layui-btn-small"
			style="line-height: 1.6em; margin-top: 3px; float: right"
			href="javascript:location.replace(location.href);" title="刷新"> <i
			class="layui-icon" style="line-height: 30px">ဂ</i></a>
	</div>
	<div class="x-body">
		<form class="layui-form" method="post" action="${pp}/admin/class/edit"
			id="myAddForm" enctype=multipart/form-data>
			<div class="layui-form-item">
				<label for="username" class="layui-form-label title"> <span
					class="x-red">*</span>课程名称
				</label>
				<div class="layui-input-inline">
					<input type="text" id="username" name="a.className" required=""
						lay-verify="required" autocomplete="off" class="layui-input">
				</div>
			</div>

			<div class="layui-form-item">
				<label for="username" class="layui-form-label title"> <span
					class="x-red">*</span>小时价
				</label>
				<div class="layui-input-inline">
					<input type="text" name="a.hourMoney" required=""
						lay-verify="required" autocomplete="off" class="layui-input">
				</div>
				元
			</div>

			<div class="layui-form-item">
				<label for="username" class="layui-form-label title"> 总价 </label>
				<div class="layui-input-inline">
					<input type="text" name="a.countMoney" autocomplete="off"
						class="layui-input">
				</div>
				元
			</div>
			<div class="layui-form-item">
				<label for="username" class="layui-form-label title"> 购买人数</label>
				<div class="layui-input-inline">
					<input type="text" name="a.buyCount" lay-verify="required"
						autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-form-item classType">
				<label class="layui-form-label"> <span class="x-red">*</span>课程类型：
				</label>
				<div class="layui-input-block">
					<input type="radio" name="a.classType" title="本科课程" value="1">
					<input type="radio" name="a.classType" title="专科课程" value="2">
				</div>
			</div>

			<div class="layui-form-item">
				<label class="layui-form-label"> <span class="x-red">*</span>类型：
				</label>
				<div class=layui-input-inline>
					<select name="a.majorsId">

					</select>
				</div>
			</div>
			<div class="layui-form-item imgInput">
				<label for="username" class="layui-form-label"> <span
					class="x-red">*</span>图片
				</label>
				<div class="layui-input-inline imgName">
					<div id="preview"></div>
					<input type="file" name="a.img" onchange="preview(this)" />
				</div>
				<div class="layui-form-mid layui-word-aux">
					<span class="x-red">*</span>165*110
				</div>
			</div>


			<div class="layui-form-item">
				<label for="phone" class="layui-form-label"> 专业介绍： </label>
				<div class="layui-input-block">
					<textarea id="demo" name="a.detail"></textarea>
				</div>
			</div>
			<div class="layui-form-item">
				<label for="L_repass" class="layui-form-label"> </label>
				<button class="layui-btn" lay-filter="add" lay-submit="">
					确认添加</button>
			</div>
		</form>
	</div>
	<script>
		layui.use([ 'form', 'layer', 'layedit' ], function() {
			$ = layui.jquery;
			var form = layui.form;
			var layer = layui.layer;
			var layedit = layui.layedit;
			var layeditIndex = "";
			var Request = GetRequest();
			var id = Request["id"];
			var input = '<input type="hidden" name="a.id" value="'+id+'"/>';
			$('#myAddForm').append(input);
			var url2 = '${pp}/admin/class/view/' + id;
			$.get(url2, function(r) {
				//console.log(r)
				var isEb = r.isEb;
				var img = '<img src="${fileServer}/'+r.img+'" />';
				var majorsId = r.majorsId;
				var classType = r.classType;
				$('#preview').append(img);
				$('textarea').val(r.detail);
				$('input[name="a.countMoney"]').val(r.countMoney);
				$('input[name="a.hourMoney"]').val(r.hourMoney);
				$('input[name="a.className"]').val(r.className);
				$('input[name="a.buyCount"]').val(r.buyCount);

				layeditIndex = layedit.build('demo', {
					height : 280,
					uploadImage : {
						url : '${pp}/upload',
						type : 'post'
					}
				});
				var url1 = '${pp}/admin/majors/list?page=1&limit=1000&a.isEb='
						+ isEb;
				$.get(url1, function(r) {
					r = r.data;
					$.each(r, function(n, m) {
						var option = '<option value=' + r[n].id + ' ';
						if (majorsId == r[n].id) {
							option += 'selected="selected"';
						}
						option += '>' + r[n].ebName + '</option>';
						$('select').append(option);
					});
					form.render();
				});
				if (isEb == 1) {
					$('input[type="radio"]').eq(classType - 1).attr('checked',
							'checked');
				} else {
					$('.classType').empty();
				}
				form.render();
			});
			$("#myAddForm").ajaxForm({
				beforeSerialize : function() {
					$('#demo').val(layedit.getContent(layeditIndex))
				},
				dataType : "json",
				success : function(r) {
					if (r) {
						var index = parent.layer.getFrameIndex(window.name);
						parent.layer.close(index);
					} else {
						layer.alert('添加失败');
					}
				}
			});
		});
	</script>


</body>

</html>