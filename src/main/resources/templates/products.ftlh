<!DOCTYPE html>
<html>
<head>
    <title>BUYSELL</title>
</head>
<body>
<h1>BUYSELL</h1><hr>
<#if user.email??>
<h3>Username: <i>${user.name}</i></h3>
<form action="/logout" method="post">
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <input type="submit" value="Logout"/>
</form>
    <#if user.isAdmin()>
<a href="/admin">Admin panel</a></h1>
        </#if>
<#else>
<a href="/login">Login</a></h1>
</#if>
<hr>
<h4>Things from all country</h4>
<form action="/" method="get">
    Search: <input type="text" name="title">
    <input type="submit" value="Search"/>
</form>
<#list products as product>
<div>
    <p><b>${product.title}</b> ${product.price} dollars. | <a href="/product/${product.id}">More...</a></p>
</div>
<#else>
<h3>No items yet</h3>
</#list>
<#if user.email??>
<hr>
<h3>Create new announce</h3>
<form action="/product/create" method="post" enctype="multipart/form-data">
    Announcement name: <input type="text" name="title"/><br><br>
    Announcement description: <input type="text" name="description"/><br><br>
    Price: <input type="number" name="price"/><br><br>
    City: <input type="text" name="city"/><br><br>
    First photo: <input type="file" name="file1"/><br><br>
    Second photo: <input type="file" name="file2"/><br><br>
    Third photo: <input type="file" name="file3"/><br><br>
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <input type="submit" value="Add item"/>
</form>
</#if>
</body>
</html>