<%@ page pageEncoding="UTF-8" %>
<%@ page isErrorPage="true" %>

<%@ page import="java.io.StringWriter" %>
<%@ page import="java.io.PrintWriter" %>

<!DOCTYPE html>
<html>
    <%@ include file="include/head.jsp" %>
    <body>
        <%@ include file="include/header.jsp" %>
        <%@ include file="include/nav.jsp" %>
        <main>
            <h1>Erro!</h1>
            <pre>
            <%
                StringWriter sw = new StringWriter();
                PrintWriter pw = new PrintWriter(sw);
                exception.printStackTrace(pw);
                out.println(sw.toString().replace("<", "&lt;").replace(">", "&gt;"));
            %>
            </pre>
        </main>
        <%@ include file="include/footer.jsp" %>
    </body>
</html>
