# fundamentos-back-end
Repositório da disciplina Fundamentos de Programação Back-end

# Sites de referência

- Jakarta Server Pages Specification: https://jakarta.ee/specifications/pages/3.0/jakarta-server-pages-spec-3.0.html
- Jakarta Servlet Specification: https://jakarta.ee/specifications/servlet/5.0/jakarta-servlet-spec-5.0.html
- Apostila Java e Orientação a Objetos (Caelum/Alura): https://www.alura.com.br/apostila-java-orientacao-objetos
- Java Tutorial (VS Code): https://code.visualstudio.com/docs/java/java-tutorial


# Ferramentas

- **Visual Studio Code**
  - https://code.visualstudio.com/Download
- **Extension Pack for Java (Extensão do VS Code)**
  - https://marketplace.visualstudio.com/items?itemName=vscjava.vscode-java-pack
- **Log Viewer (Extensão do VS Code)**
  - https://marketplace.visualstudio.com/items?itemName=berublan.vscode-log-viewer
- **Java Server Pages - JSP (Extensão do VS Code)**
  - https://marketplace.visualstudio.com/items?itemName=pthorsson.vscode-jsp
- **XML (Extensão do VS Code)**
  - https://marketplace.visualstudio.com/items?itemName=redhat.vscode-xml
- **Git**
  - https://git-scm.com/downloads
- **JDK 11**
  - https://www.oracle.com/br/java/technologies/javase/jdk11-archive-downloads.html
  - Criar a variável de ambiente JAVA_HOME configurada para o diretório de instalação do JDK. Exemplo: “C: Program
Files Java jdk 11.0.13”.
  - Adicionar “%JAVA_HOME% bin” na variável de ambiente PATH.
  - Tutorial de configuração: https://mkyong.com/java/how-to-set-java_home-on-windows-10/
- **Maven**
  - https://dlcdn.apache.org/maven/maven-3/3.8.6/binaries/apache-maven-3.8.6-bin.zip
  - Adicionar o diretório de instalação do Maven na variável de ambiente PATH. Exemplo: “C: apache maven bin”.
  - Tutorial de instalação: https://mkyong.com/maven/how-to-install-maven-in-windows/
- **Apache Tomcat 10**
  - Verifique se o Tomcat está instalado e funcionando:
    - Localize o aplicativo **Monitor Tomcat**.
    - Acesse a URL **http://localhost:8080**, que deve exibir uma página indicando que o Tomcat está funcionando.
  - Link para download: https://dlcdn.apache.org/tomcat/tomcat-10/v10.0.23/bin/apache-tomcat-10.0.23.exe
  - [Tutorial de instalação](tutoriais/tomcat/tomcat.md)
- **MySQL**
  - Verificar se o MySQL está funcionando:
    - ```mysql -u root -p```
    - Tentar acessar com senha em branco ou senha igual ao nome de usuário (root).
    - Tutorial para resetar a senha de root: https://dev.mysql.com/doc/mysql-windows-excerpt/8.0/en/resetting-permissions-windows.html
  - Link para download: https://dev.mysql.com/downloads/file/?id=512698
  - [Tutorial de instalação](tutoriais/mysql/mysql.md)
  - Para criação do banco e importação de dados, a partir do diretório *sql*, executar os comandos:
    - ```mysql -u root -p < sgcm.sql```
    - ```mysql -u root -p sgcm < dados.sql```

# SGCM - Diagrama de Classes

![SGCM_Diagrama_Classes](SGCM_Diagrama_Classes.png)

# SGCM - Diagrama Entidade Relacionamento

![SGCM_DER](sgcmDER.svg)
