<!DOCTYPE html>
<html>
<head>
    <title>BUYSELL</title>
</head>
<body>
<h1>BUYSELL</h1><hr>
<h3>User information ${user.name}</h3>
<b>Phone number: </b> ${user.phoneNumber}<br>
<b>Email: </b> ${user.email}<br>
<h4>Товары пользователя ${user.name}</h4>
<#list products as product>
    <div>
        <p><b>${product.title}</b> ${product.price} Dollars. | <a href="/product/${product.id}">more...</a></p>
    </div>
<#else>
    <h3>No items yet</h3>
</#list>
<#if errorMessage??>
    <h2 style="color: red">${errorMessage}</h2>
</#if>
</body>
</html>