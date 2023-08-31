<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="model.Product, java.util.*" %>
<%
String msg = (String)request.getAttribute("msg");
String err = (String)request.getAttribute("err");
List<Product> list = (List<Product>)application.getAttribute("list");
%>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>練習問題</title>
    </head>

    <body>
        <h1>商品を登録してください</h1><br>
        
        <% if(err != null){ %>
        <p><%= err %></p>
        <% } %>
        
        <% if(msg != null){ %>
        <p><%= msg %></p>
        <% } %>
        
        <form action="Main" method="post">
            製品名:<br>
            <input type="text" name="name"><br>
            価格:<br>
            <input type="number" name="price"><br>
            <input class="button" type="submit" value="登録">
        </form>
        
        <% if(!list.isEmpty()){ %>
        <table border="">
        <tr><th>製品名</th><th>価格</th><th>登録日</th></tr>
        <% for(Product p :list){ %>
        <tr>
        	<td><%=p.getName() %></td>
        	<td><%=p.getPrice() %></td>
        	<td><%=p.getUpdated() %></td>
        	<td><a href="Main?action=delete&&id=<%=p.getId()%>">削除</a></td>
        </tr>
        <% } %>
        
        </table>
        <% } %>
    </body>

    </html>