<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <title>职业教育列表</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <#include "../staticFile.ftl"/>
</head>
<body>
<div class="x-nav">
    <a class="layui-btn layui-btn-small"
       style="line-height: 1.6em; margin-top: 3px; float: right"
       href="javascript:location.replace(location.href);" title="刷新"> <i
            class="layui-icon" style="line-height: 30px">ဂ</i></a>
</div>
<div class="x-body">
    <div class="layui-row">
        <form class="layui-form layui-col-md12 x-so" method="post">
            <input type="text" name="a.title" placeholder="请输入关键字"
                   autocomplete="off" class="layui-input">
            <button class="layui-btn" lay-submit="sreach" lay-filter="go">
                <i class="layui-icon">&#xe615;</i>
            </button>
        </form>
    </div>
    <xblock>
        <button class="layui-btn"
                onclick="x_admin_show('添加专业_职业', '${request.contextPath}/admin/home/add');">
            <i class="layui-icon"></i>添加专业_职业
        </button>
        <span class="x-right" style="line-height: 40px">共有数据：<span
                class="totalRow"> </span> 条
		</span> </xblock>
    <table id="test" class="layui-table" lay-filter="test">
    </table>
</div>
<script
        src="${request.contextPath}/admin/lib/layui/layui.js"></script>

<script>
    layui.use([ 'layer', 'form', 'element', 'table' ], function() {
        var layer = layui.layer;
        var table = layui.table;
        var form = layui.form, element = layui.element
        var path = "${request.contextPath}";
        var url = path + "/home/list/lianxiwomen";
        //表格执行渲染
        var adminList = table.render({
            url : url,
            elem : '#test',
            id : '#test',
            skin : 'row',
            even : true,
            size : 'lg',
            cols : [ [ //标题栏
                {
                    checkbox : true
                }, {
                    field : 'hmId',
                    title : '编号',
                    width : 80,
                    sort : true
                }, {
                    field : 'hmOneName',
                    title : '名称',
                    width : 150,
                    align : 'center'
                }, {
                    field : 'hmUrl',
                    title : '链接地址',
                    width : 150
                }, {
                    width : 350,
                    title : '操作',
                    toolbar : '#barDemo'
                }] ],
            page : true,
            limits : [ 20, 40, 60, 80 ],
            limit : 20,
            done : function(res, curr, count) {
                $('.totalRow').text(count);
            }
        });
        //查询，表单获取值，重载表格
        form.on('submit(go)', function(data) {
            adminList.reload({
                where : data.field
            });
            return false;
        });
        table.on('tool(test)', function(obj) {
            var data = obj.data;
            var layEvent = obj.event;
            var tr = obj.tr;
            if (layEvent === 'view') {

                var p1 = path + '/admin/home/home/update/' + data.hmId;

                x_admin_show('查看详情', p1);
            } else if (layEvent === 'del') {
                layer.confirm('确定删除？', function() {
                    $.get(path + "/admin/majors/del?id=" + data.id,
                            function(r) {
                                layer.msg('删除成功');
                                tr.remove();
                            });
                });
            } else if (layEvent === 'ziyuan') {
                var p1 = path + '/admin/resource/list.ftl?id=' + data.id;
                x_admin_show('相关资源', p1, $(window).width(), $(window)
                        .height());
            }
        });
    });
</script>
<!--fileServer文件服务器目录，在statisFile.ftl  -->
<script type="text/html" id="barDemo1">
    <img  src="${request.contextPath}/{{d.hmOneImage}}" width=50  height=50 />
</script>
<script type="text/html" id="barDemo">
    <a class="layui-btn layui-btn-mini" lay-event="view">查看编辑</a>
  <#--<a class="layui-btn layui-btn-mini" lay-event="ziyuan">相关资源</a>-->
    <a class="layui-btn layui-btn-mini  layui-btn-danger" lay-event="del">删除记录</a>
</script>
<script type="text/html" id="titleTpl">
    {{#  if(d.status==1
    ){ }}
    <a class="layui-btn layui-btn-danger layui-btn-mini" lay-event="stop">点击隐藏</a>
    {{#  }  if(d.status==2
    ) { }}
    <a class="layui-btn layui-btn-mini" lay-event="start">点击显示</a>
    {{#  } }}
</script>
</body>
</html>