<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8" />
        <title>Categorias</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    
    
    
    
    
        <style>
            body {
                font-family: Arial, sans-serif;
            }
            nav {
                padding: 10px;
                animation: rgbBlink 3s infinite alternate;
            }
            nav ul {
                list-style: none;
                margin: 0;
                padding: 0;
                display: flex;
            }
            nav ul li {
                margin-right: 20px;
            }
            nav ul li a {
                color: white;
                text-decoration: none;
                font-size: 18px;
            }
            nav ul li a:hover {
                text-decoration: underline;
            }
            
            @keyframes rgbBlink {
                0% { background-color: red; }
                33% { background-color: green; }
                66% { background-color: blue; }
                100% { background-color: red; }
            }
        </style>
    
    
    
    </head>
    <body>

<nav>
            <ul>
                <li><a href="/categoria/list">Categorias</a></li>
                <li><a href="/jogo/list">Jogos</a></li>
                <li><a href="/plataforma/list">Plataformas</a></li>
            </ul>
        </nav>


        <div class="container">
            <h1>Categorias</h1>
                <a href="/categoria/insert" class="btn btn-primary">Novo Categoria</a>
                <table class="table">
                    <tr>
                        <th>Id</th>
                        <th>Nome</th>
                        <th>&nbsp;</th>
                    </tr>
                    <c:forEach var="item" items="${categorias}">
                        <tr>
                            <td>${item.id}</td>
                            <td>${item.nome}</td>
                            <td>
                                <a href="/categoria/update?id=${item.id}" class="btn btn-warning">Editar</a>
                                <a href="/categoria/delete?id=${item.id}" class="btn btn-danger">Excluir</a>
                            </td>
                        </tr>
                    </c:forEach>
                </table>
        </div>
    </body>
</html>