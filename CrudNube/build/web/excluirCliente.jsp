<%-- 
    Document   : excluirCliente
    Created on : 25/09/2020
    Author     : Heliton Lima
--%>

<%@page import="controller.ClienteControl"%>
<%
    String id = request.getParameter("id");
    new ClienteControl().deletar("where id=" + id);
    response.sendRedirect("listarCliente.jsp");
%>
