<%-- 
    Document   : alterarCliente
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
        <title>Alterar Clientes!</title>
    </head>
    <body>
        <center>
            <%
                String id = request.getParameter("id");
                for (Cliente c : new ClienteControl().listar("where id=" + id)){
            %>
            <h1>Alteração de Clientes!</h1>
            <form name="formAlterar" method="post">
                <label>ID: </label>
                <input type="text" nam="id" value="<%=c.getId()%>" readonly="true"/>
                <br />
                <label>Nome: </label>
                <input type="text" name="nome" value="<%=c.getNome()%>" />
                <br />
                <label>Idade: </label>
                <input type="text" name="idade" value="<%=c.getIdade()%>" />
                <br /> 
                <label>Email: </label>
                <input type="text" name="email" value="<%=c.getEmail()%>" />
                <br /> 
                <label>Telefone: </label>
                <input type="text" name="telefone" value="<%=c.getTelefone()%>" />
                <br /> <br />
                <input type="submit" name="alterar" value="Alterar" onclick="return confirm('Confirme que deseja realmente alterar')" />
            </form>
            <%
                }
                try {

                    String id2 = request.getParameter("id");
                    String nome = request.getParameter("nome");
                    String idade = request.getParameter("idade");
                    String email = request.getParameter("email");
                    String telefone = request.getParameter("telefone");
                    new ClienteControl().alterar(nome, idade, email, telefone, id2);
                    response.sendRedirect("listarCliente.jsp");

                    } catch (Exception e) {
                    }
            %>
            <a href="listarCliente.jsp"><h3>Voltar para lista de clientes</h3></a>
            <a href="cadCliente.jsp"><h3>Cadastrar um novo cliente</h3></a>
        </center>
    </body>
</html>
