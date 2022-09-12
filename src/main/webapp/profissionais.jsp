<%@ page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, user-scalable=no">
        <meta charset="utf-8">
        <title>SGCM</title>
        <link rel="stylesheet" href="estilo.css">
        <script src="script.js"></script>
    </head>
    <body>
        <%@ include file="include/header.jsp" %>
        <nav>
            <ul>
                <li><a href="agenda.html">Agenda</a></li>
                <li><a href="atendimento.html">Atendimento</a></li>
                <li><a href="paciente.html">Paciente</a></li>
                <li><a href="profissionais.html">Profissionais</a></li>
                <li><a href="convenios.html">Convênios</a></li>
                <li id="dropdown">
                    <a href="javascript:void(0)">
                        Configurações
                        <span>&#9660;</span>
                    </a>
                    <div id="dropdown_menu">
                        <a href="unidades.html">Unidades</a>
                        <a href="especialidades.html">Especialidades</a>
                        <a href="usuarios.html">Usuários</a>
                    </div>
                </li>
            </ul>
        </nav>
        <main>
            <form action="#">
                <div class="grid">
                    <label for="nome">Nome</label>
                    <input type="text" name="nome" id="nome" required>
                    <label for="registroConselho">Registro</label>
                    <input type="text" name="registroConselho" id="registroConselho">
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
                    <input type="text" name="telefone" id="telefone">
                    <label for="email">E-Mail</label>
                    <input type="text" name="email" id="email">
                </div>
                <input type="button" value="Cancelar">
                <input type="submit" value="Salvar">
            </form>
            <a href="javascript:void(0)" id="load" class="botao">Carregar dados</a>
            <div id="comandos">
                <a href="javascript:void(0)" id="add" class="botao">Adicionar</a>
                <div>
                    <form action="">
                        <label for="">Busca</label>
                        <input type="text" name="busca" id="busca">
                    </form>
                </div>
            </div>
            <table>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Nome</th>
                        <th>Registro</th>
                        <th>Especialidade</th>
                        <th>Unidade</th>
                        <th>Telefone</th>
                        <th>E-Mail</th>
                        <th>Ações</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td class="fit">1</td>
                        <td>texto 02</td>
                        <td>texto 03</td>
                        <td>texto 04</td>
                        <td>texto 05</td>
                        <td>texto 06</td>
                        <td>texto 07</td>
                        <td>
                            <a href="javascript:void(0)" class="botao">Editar</a>
                            <a href="javascript:void(0)" class="botao excluir">Excluir</a>
                        </td>
                    </tr>
                    <tr>
                        <td class="fit">2</td>
                        <td>texto 02</td>
                        <td>texto 03</td>
                        <td>texto 04</td>
                        <td>texto 05</td>
                        <td>texto 06</td>
                        <td>texto 07</td>
                        <td>
                            <a href="javascript:void(0)" class="botao">Editar</a>
                            <a href="javascript:void(0)" class="botao excluir">Excluir</a>
                        </td>
                    </tr>
                    <tr>
                        <td class="fit">3</td>
                        <td>texto 02</td>
                        <td>texto 03</td>
                        <td>texto 04</td>
                        <td>texto 05</td>
                        <td>texto 06</td>
                        <td>texto 07</td>
                        <td>
                            <a href="javascript:void(0)" class="botao">Editar</a>
                            <a href="javascript:void(0)" class="botao excluir">Excluir</a>
                        </td>
                    </tr>
                    <tr>
                        <td class="fit">4</td>
                        <td>texto 02</td>
                        <td>texto 03</td>
                        <td>texto 04</td>
                        <td>texto 05</td>
                        <td>texto 06</td>
                        <td>texto 07</td>
                        <td>
                            <a href="javascript:void(0)" class="botao">Editar</a>
                            <a href="javascript:void(0)" class="botao excluir">Excluir</a>
                        </td>
                    </tr>
                    <tr>
                        <td class="fit">5</td>
                        <td>texto 02</td>
                        <td>texto 03</td>
                        <td>texto 04</td>
                        <td>texto 05</td>
                        <td>texto 06</td>
                        <td>texto 07</td>
                        <td>
                            <a href="javascript:void(0)" class="botao">Editar</a>
                            <a href="javascript:void(0)" class="botao excluir">Excluir</a>
                        </td>
                    </tr>
                </tbody>
                <tfoot>
                    <tr>
                        <td colspan="8">Total de registros: 5</td>
                    </tr>
                </tfoot>
            </table>
        </main>
               <%@ include file="include/footer.jsp" %>
    </body>
</html>