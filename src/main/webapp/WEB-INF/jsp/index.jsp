<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    String path= request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <meta charset="utf-8">
    <title>用户登录</title>
    <script type="text/javascript" src="../../statics/jquery/jquery.js"></script>
    <script type="text/javascript" src="../../statics/bootstrap/js/bootstrap.js"></script>
    <link rel="stylesheet" href="../../statics/bootstrap/css/bootstrap.css">
    <style>
        #from
        {
            background-color: #96b97d;
        }
        .mycenter
        {
            margin-top: 100px;
            margin-left: auto;
            margin-right: auto;
            height: 350px;
            width: 500px;
            padding: 5%;
            padding-left: 5%;
            padding-right: 5%;
        }
        .mycenter mysign
        {
            width: 440px;
        }
        .mycenter input, checkbox, button
        {
            margin-top: 2%;
            margin-left: 10%;
            margin-right: 10%;
        }
        .mycheckbox
        {
            margin-top: 10px;
            margin-left: 40px;
            margin-bottom: 10px;
            height: 10px;
        }
    </style>
    <%--<script type="text/javascript">--%>
        <%--$(function () {--%>
            <%--$('#btn').click(function (e) {--%>
                <%--window.location.href = "main.aspx";--%>
            <%--});--%>
        <%--});--%>
    <%--</script>--%>


    <script type="text/javascript">
        function myFunction(){
            alert("你好，我是一个警告框！");
        }
        function myclick() {
            alert("点击");
        }
        function formSubmit() {
            <%
            System.out.println("进入");
            %>
            var userName=document.getElementById("userName").value;
            if (userName == null || userName ==''){
                alert("用户名不能为空");
                return false;
            }else {
                alert(userName);
            }
        }
    </script>
</head>
<body>
<%--<form id="from" method="post" action="saveUser"  onsubmit="formSubmit()">--%>
    <%--<table>--%>
        <%--<tr><td>用户名：</td><td><input id="userName" name="userName" /></td></tr>--%>
        <%--<tr><td>密码：</td><td><input name="userPassword"/></td></tr>--%>
        <%--<tr><td><button type="submit" id="btn" class="btn btn-success col-lg-12">--%>
            <%--登录</button> </td>--%>
            <%--<td><button type="reset">重置</button> </td>--%>
            <%--<td><a href="savePage">注册</a></td>--%>
        <%--</tr>--%>
    <%--</table>--%>
<%--</form>--%>
<%--<button onclick="myclick()">按钮</button>--%>
<%--<button onclick="myFunction()" >弹窗</button>--%>
<form id="from" method="post" action="saveUser" onsubmit="formSubmit()">
    <div class="mycenter">
        <div class="mysign">
            <div class="col-lg-11 text-center text-info">
                <h2>
                    请登录</h2>
            </div>
            <div class="col-lg-10">
                <input id="userName" type="text" class="form-control" name="userName" placeholder="请输入账户名" required
                       autofocus />
            </div>
            <div class="col-lg-10">
            </div>
            <div class="col-lg-10">
                <input id="password" type="password" class="form-control" name="userPassword" placeholder="请输入密码" required
                       autofocus />
            </div>
            <div class="col-lg-10">
            </div>
            <div class="col-lg-10 mycheckbox checkbox">
                <input type="checkbox" class="col-lg-1">记住密码</input>
            </div>
            <div class="col-lg-10">
            </div>
            <div class="col-lg-10">
                <button type="submit" id="btn" class="btn btn-success col-lg-12" onclick="formSubmit()">
                    登录</button>
            </div>
        </div>
    </div>
</form>

<%--<input type="button" onclick="myFunction()" value="显示警告框" />--%>
</body>

</html>
