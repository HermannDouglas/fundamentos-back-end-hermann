<%@ page pageEncoding="UTF-8" %>

<%@ page import="br.ufac.sgcm.model.Especialidade" %>
<%@ page import="br.ufac.sgcm.model.Unidade" %>

<jsp:useBean id="controller" class="br.ufac.sgcm.controller.ProfissionalController" scope="page" />
<jsp:useBean id="controllerE" class="br.ufac.sgcm.controller.EspecialidadeController" scope="page" />
<jsp:useBean id="controllerU" class="br.ufac.sgcm.controller.UnidadeController" scope="page" />
<jsp:useBean id="item" class="br.ufac.sgcm.model.Profissional" scope="page" />

<%

    String paramId = request.getParameter("id");
    if (paramId != null && !paramId.isEmpty()) {
        Long id = Long.parseLong(paramId);
        item = controller.get(id);
    }

    String submit = request.getParameter("submit");
    if (submit != null) {
        item.setId(request.getParameter("id"));
        item.setNome(request.getParameter("nome"));
        item.setRegistroConselho(request.getParameter("registroConselho"));
        item.setTelefone(request.getParameter("telefone"));
        item.setEmail(request.getParameter("email"));
        item.setEspecialidade(request.getParameter("especialidade"));
        item.setUnidade(request.getParameter("unidade"));

        controller.save(item);
        pageContext.forward("profissionais.jsp");
    }

%>
<!DOCTYPE html>
<html>
    <%@ include file="include/head.jsp" %>
    <body>
        <%@ include file="include/header.jsp" %>
        <%@ include file="include/nav.jsp" %>
        <main>
            <%=request.getParameter("submit")%>
            <form method="post">
                <div class="grid">
                    <input type="hidden" name="id" value="<%=item.getId() != null ? item.getId() : "" %>">
                    <label for="nome">Nome</label>
                    <input type="text" name="nome" id="nome"
                        value="<%=item.getNome() != null ? item.getNome() : ""%>" required>
                    <label for="registroConselho">Registro</label>
                    <input type="text" name="registroConselho" id="registroConselho"
                        value="<%=item.getRegistroConselho() != null ? item.getRegistroConselho() : ""%>">
                    <label for="especialidade">Especialidade</label>
                    <select name="especialidade" id="especialidade" required>
                        <option value=""></option>
                        <%
                            String selecionado = "";
                            for(Especialidade e: controllerE.get()){
                                selecionado = "";
                                if(item.getId() != null) {
                                    if(e.getId() == item.getEspecialidade().getId()) {
                                        selecionado = " selected";
                                    }
                                }
                        %>
                        <option value="<%=e.getId()%>"<%=selecionado%>><%=e.getNome()%></option>
                        <% } %>
                    </select>
                    <label for="unidade">Unidade</label>
                    <select name="unidade" id="unidade">
                        <option value=""></option>
                        <%
                            for(Unidade u: controllerU.get()){
                                selecionado = "";
                                if(item.getId() != null) {
                                    if(u.getId() == item.getUnidade().getId()) {
                                        selecionado = " selected";
                                    }
                                }
                        %>
                        <option value="<%=u.getId()%>"<%=selecionado%>><%=u.getNome()%></option>
                        <% } %>
                    </select>

                    <label for="telefone">Telefone</label>
                    <input type="text" name="telefone" id="telefone"
                        value="<%=item.getTelefone() != null ? item.getTelefone() : ""%>">
                    <label for="email">E-mail</label>
                    <input type="text" name="email" id="email"
                        value="<%=item.getEmail() != null ? item.getEmail() : ""%>">
                </div>
                <input type="button" value="Cancelar" data-url="profissionais.jsp">
                <input type="submit" value="Salvar" name="submit">
            </form>
        </main>
        <%@ include file="include/footer.jsp" %>
    </body>
</html>
