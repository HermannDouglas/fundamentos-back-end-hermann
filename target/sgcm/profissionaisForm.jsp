<%@ page pageEncoding="UTF-8" %>

<jsp:useBean id="controller" class="br.ufac.sgcm.controller.ProfissionalController" scope="page" />

<jsp:useBean id="item" class="br.ufac.sgcm.model.Profissional" scope="page" />

<%

    String paramId = request.getParameter("id");
    if(param != null){
        Long id = Long.parseLong(paramId);
        controller.get(id);
    } 

%>

<!DOCTYPE html>
<html>
    <%@ include file="include/head.jsp" %>
    <body>
        <%@ include file="include/header.jsp" %>
        <%@ include file="include/nav.jsp" %>
        <main>
            <form action="#">
                <div class="grid">
                    <label for="nome">Nome</label>
                    <input type="text" name="nome" id="nome" 
                            value="<%=item.getNome() != null ? item.getNome() : "" %>" required>
                    <label for="registroConselho">Registro</label>
                    <input type="text" name="registroConselho" id="registroConselho"
                            value="<%=item.getRegistroConselho() != null ? item.getRegistroConselho() : "" %>">
                    <label for="especialidade">Especialidade</label>
                    <select name="especialidade" id="especialidade" required>
                        <option value=""></option>
                        <option value="1">Especialidade A</option>
                        <option value="2">Especialidade B</option>
                        <option value="3">Especialidade C</option>
                        <option value="4">Especialidade D</option>
                        <option value="5">Especialidade E</option>
                    </select>
                    <label for="unidade">Unidade</label>
                    <select name="unidade" id="unidade">
                        <option value=""></option>
                        <option value="1">Unidade A</option>
                        <option value="2">Unidade B</option>
                        <option value="3">Unidade C</option>
                        <option value="4">Unidade D</option>
                        <option value="5">Unidade E</option>
                    </select>
                    <label for="telefone">Telefone</label>
                    <input type="text" name="telefone" id="telefone"
                        value="<%=item.getTelefone() != null ? item.getTelefone() : "" %>">
                    <label for="email">E-mail</label>
                    <input type="text" name="email" id="email"
                        value="<%=item.getEmail() != null ? item.getEmail() : "" %>">
                </div>
                <input type="button" value="Cancelar" data-url="profissionais.jsp">
                <input type="submit" value="Salvar">
            </form>
        </main>
        <%@ include file="include/footer.jsp" %>
    </body>
</html>
