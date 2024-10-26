<!DOCTYPE html>
<html>
<head>
    <title>BUYSELL</title>
</head>
<body>
<h1>BUYSELL</h1><hr>
<H4>More product's information</H4>
<#list images as img>
<img src="/images/${img.id}" height="60px"/><br><br>
</#list>

<b>Product name: </b>${product.title}<br>
<b>Description: </b>${product.description}<br>
<b>Price: </b>${product.price}<br>
<b>City: </b>${product.city}<br>
<b>Author name: </b><a href="/user/${product.user.id}"> ${product.user.name}</a><br>


</body>
</html>