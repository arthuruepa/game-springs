<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8" />
        <title>Home</title>
        
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

        <h1>Olá Spring!!!</h1>
    </body>
</html>

