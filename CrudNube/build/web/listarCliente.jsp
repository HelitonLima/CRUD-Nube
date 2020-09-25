<%-- 
    Document   : listarCliente
    Created on : 25/09/2020
    Author     : Heliton Lima
--%>

<%@page import="controller.ClienteControl"%>
<%@page import="modelo.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Clientes!</title>
    </head>
    <body>
        <center>
            <h1>Listagem dos Clientes!</h1>
            <table border="1"> 
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Nome</th>
                        <th>Idade</th>
                        <th>Email</th>
                        <th>Telefone</th>
                        <th>Alterar</th>
                        <th>Excluir</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        String query = "";
                        for (Cliente cl : new ClienteControl().listar(query)){
                    %>
                    <tr>
                        <td><%=cl.getId()%></td>
                        <td><%=cl.getNome()%></td>
                        <td><%=cl.getIdade()%></td>
                        <td><%=cl.getEmail()%></td>
                        <td><%=cl.getTelefone()%></td>
                        <td>
                            <a href="alterarCliente.jsp?id=<%=cl.getId()%>">Alterar</a>
                        </td>
                        <td>
                            <a href="excluirCliente.jsp?id=<%=cl.getId()%>" onclick="return confirm('Confirme que realmente deseja excluir')">Excluir</a>
                        </td>
                    </tr>
                    <% 
                        }
                    %>
                </tbody>
            </table>
            <a href="cadCliente.jsp"><h3>Cadastrar um novo cliente</h3></a>
        </center>
    </body>
</html>
