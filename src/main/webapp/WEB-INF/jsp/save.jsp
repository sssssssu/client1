<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>
<body>
<form method="post" action="save">
    <input name="id" value="0" id="id" style="display:none" />
    <table>
        <tr><td>用户名：</td><td><input name="userName" id="userName"/></td></tr>
        <tr><td>密码：</td><td><input name="userPassword" id="userPassword"/></td></tr>
        <tr><td>确认密码：</td><td><input name="userPassword2" id="userPassword2"/></td></tr>
        <tr><td><button type="submit">注册</button> </td>
            <td><button type="reset">重置</button> </td>
        </tr>
    </table>
</form>
</body>
</html>
