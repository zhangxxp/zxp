<%--
  Created by IntelliJ IDEA.
  User: acer
  Date: 2018/8/17
  Time: 14:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>修改渠道</title>
    <link rel="stylesheet" href="/plugins/layui/css/layui.css"  media="all">
</head>
<body>
<script src="/plugins/layui/layui.js" charset="utf-8"></script>
<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
<div style="width: 300px; height: 200px;margin-left: 70px;margin-top: 50px">
    <form class="layui-form" action="<%=request.getContextPath()%>/callback/save" method="post" target="_parent">
        <div class="layui-form-item">
            <label class="layui-form-label">回访主题：</label>
            <div class="layui-input-block">
                <input type="hidden" name="clid" value="<%=request.getParameter("clid")%>">
                <input type="text" name="name" required  lay-verify="required" placeholder="请输入回访主题" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">回访内容：</label>
            <div class="layui-input-block">
                <input type="text" name="content" required  lay-verify="required" placeholder="请输入回访内容" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">咨询师：</label>
            <div class="layui-input-block">
                <select     name="susers.id" id="way_select">
                </select>
                <input type="radio" name="susers.id" value="1" title="咨询师-张">
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">下次回访时间:</label>
            <div class="layui-input-inline">
                <input type="text" name="ctime" id="date" lay-verify="date" placeholder="yyyy-MM-dd" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">本次回访时间:</label>
            <div class="layui-input-inline">
                <input type="text" name="otime" id="date1" lay-verify="date1" placeholder="yyyy-MM-dd" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-input-block">
                <button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
                <button type="reset" class="layui-btn layui-btn-primary">重置</button>
            </div>
        </div>
    </form>
</div>
<script>
    //Demo
    layui.use(['form','laydate'], function(){
        var form = layui.form;
        var $=layui.jquery,layer = layui.layer;;
        //监听提交
        var laydate = layui.laydate;
        laydate.render({
            elem: '#date'
        });
        laydate.render({
            elem: '#date1'
        });
        form.on('submit(formDemo)', function(data){
            layer.msg(JSON.stringify(data.field));
            layer.closeAll();//关闭弹窗
            return true;
        });
    });
</script>
</body>
</html>
