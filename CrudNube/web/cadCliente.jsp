<%-- 
    Document   : cadCliente
    Created on : 25/09/2020
    Author     : Heliton Lima
--%>

<%@page import="controller.ClienteControl"%>
<%@page import="java.util.ArrayList"%>
<%@page import="modelo.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de Clientes!</title>
    </head>
    <body>
        <center>
            <h1>Cadastrar Clientes!</h1>
            <form name="formCadastro" method="post">
                <label>Nome: </label>
                <input type="text" name="nome" />
                <br />
                <label>Idade: </label>
                <input type="text" name="idade" />
                <br />
                <label>Email: </label>
                <input type="text" name="email" />
                <br /> 
                <label>Telefone: </label>
                <input type="text" name="telefone" />
                <br /> <br />
                <input type="submit" name="salvar" value="Salvar" />
            </form>
            <%
                try {

                        String nome = request.getParameter("nome");
                        String idade = request.getParameter("idade");
                        String email = request.getParameter("email");
                        String telefone = request.getParameter("telefone");
                        new ClienteControl().adicionar(nome, idade, email, telefone);
                        out.println("Cadastrado!");

                    } catch (Exception e) {
                    }
            %>
            <a href="listarCliente.jsp"><h3>Lista de Clientes</h3></a>
        </center>
    </body>
</html>

