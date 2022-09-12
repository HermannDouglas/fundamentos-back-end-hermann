window.onload = function() {

   let botaoUrl = document.querySelector("input[data-url]");
   if (botaoUrl) {
    botaoUrl.addEventListener("click", () =>
        {
            let url = botaoUrl.getAttribute("data-url");
            window.location.href = url;
        })
   }

    // Adiciona uma ação para realizar uma requisição de um arquivo JSON
    // e inserir o conteúdo na tabela.
    // Inicialmente a requisição foi feita por meio do objeto XMLHttpRequest,
    // e depois utilizando Fetch API.
    // let xhr = new XMLHttpRequest();
    let botaoCarregar = document.querySelector("a#load");
    if (botaoCarregar) {
        botaoCarregar.addEventListener("click", () => {
            let tabela = document.querySelector("table");
            let url = "http://my-json-server.typicode.com/danielnsilva/json/profissionais";
            // xhr.open("GET", url);
            // xhr.addEventListener("readystatechange", () => {
                // if (xhr.readyState == 4 && xhr.status == 200) {
                    // let dados = JSON.parse(xhr.responseText);
            fetch(url)
            .then(resposta => resposta.json())
            .then(dados => {
                    for (let item in dados) {
                        let linha = document.createElement("tr");
                        let id = document.createElement("td");
                        let nome = document.createElement("td");
                        let registro = document.createElement("td");
                        let especialidade = document.createElement("td");
                        let unidade = document.createElement("td");
                        let telefone = document.createElement("td");
                        let email = document.createElement("td");
                        let acoes = document.createElement("td");
                        id.classList.add("fit");
                        id.textContent = dados[item].id;
                        nome.textContent = dados[item].nome;
                        registro.textContent = dados[item].registro;
                        especialidade.textContent = dados[item].especialidade;
                        unidade.textContent = dados[item].unidade;
                        telefone.textContent = dados[item].telefone;
                        email.textContent = dados[item].email;
                        acoes.innerHTML = `
                        <a href="javascript:void(0)" class="botao">Editar</a>\n
                        <a href="javascript:void(0)" class="botao excluir">Excluir</a>
                        `;
                        linha.appendChild(id);
                        linha.appendChild(nome);
                        linha.appendChild(registro);
                        linha.appendChild(especialidade);
                        linha.appendChild(unidade);
                        linha.appendChild(telefone);
                        linha.appendChild(email);
                        linha.appendChild(acoes);
                        tabela.tBodies[0].appendChild(linha);
                    }
            });
                //  }
            // });
            // xhr.send();
        });
    }

    // Adicina uma ação par ao botão 'Adicionar' que exibe o formulário,
    // e esconde a barra de comandos e tabela.
    let botao = document.querySelector("a.botao#add");
    botao.addEventListener("click", () => {
        let form = document.querySelector("form");
        let divComandos = document.querySelector("div#comandos");
        let tabela = document.querySelector("table");
        form.classList.remove("inativo");
        divComandos.classList.add("inativo");
        tabela.classList.add("inativo");
    });

    


    // Permite ao usuário alterar o tema da página ao escolher
    // uma opção na caixa de selação. O evento 'change' ocorre
    // sempre que uma opção diferente for selecionada. Por meio
    // 'localStorage', a opção do usuário é armazenada para ser
    // recuperada quando a página for recarregada.
    let selectTema = document.querySelector("select#tema");
    selectTema.addEventListener("change", evento => {
        let temaSelecionado = evento.target.value;
        if (temaSelecionado) {
            mudaTema(temaSelecionado);
            localStorage.setItem("tema", temaSelecionado);
        }
    });

    // Sempre que a página é recarregada, a função 'mudaTema'
    // é invocada para aplicar o tema escolhido pelo usuário.
    let tema = localStorage.getItem("tema");
    if (tema) {
        mudaTema(tema);
    }

}

// Função que muda o tema da página a partir de uma escolha
// do usuário. A alteração consiste em selecionar o arquivo CSS
// correspodente ao tema, modificando o atributo 'href' do elemento
// que inclui o arquivo CSS na página.
function mudaTema(tema) {
    let url = "css/estilo-tema-" + tema + ".css";
    let linkTema = document.querySelector("#link-tema");
    linkTema.href = url;
}
