Veja o repositório do frontend [clicando aqui](https://github.com/giovanibaldan/jogo-velha-frontend)

#### 1. Baixando o Projeto:

* Primeiro, você precisa obter uma cópia do projeto em sua máquina. Existem duas maneiras de fazer isso:

1. Download do ZIP: Acesse o repositório do projeto no GitHub, clique em "Code" e, em seguida, selecione "Download ZIP". Após o download, extraia o conteúdo em uma pasta de sua escolha.
2. Git Clone: Se preferir, você pode clonar o repositório diretamente usando o comando a seguir no terminal: </br> </br>
``` git clone https://github.com/giovanibaldan/jogo-velha-backend.git ```

#### 2. Pré-requisitos:

- Ruby versão '3.2.3' (ou mais recente).
- Rails versão 6.1.7.10 (ou mais recente).
- Banco de dados PostgreSQL.
- Docker instalado.

#### 3. Instalação das Dependências:

* Navegue até o diretório do projeto, /jogo-velha-backend, usando o terminal.
* Execute o seguinte comando para instalar as dependências necessárias: </br> </br>
`bundle install`

#### 4. Migração do Banco de Dados:

- Migrate as tabelas do banco de dados com o seguinte comando:: </br> </br>
`rails db:create db:migrate`

#### 5. Inicialização do Projeto:

- Suba o container do PostgreSQL e rode o servidor usando Docker Compose com o comando a seguir: </br> </br>
`docker compose up --build`

- Em seguida, inicie o servidor Rails com o comando: </br> </br>
`rails server`

#### 6. Acesso à Aplicação:

- Abra o navegador e acesse o seguinte endereço para visualizar e utilizar o site localmente:: </br> </br>
```http://localhost:3000``` </br> </br>

<h3 align="left">
    Tecnologias utilizadas:
  </h3>
   <table >
       <td align="center">
            <img src="https://skillicons.dev/icons?i=js" width="65px" alt="C icon" /><br>
            <pre><b>Javascript</b></pre>
        </td>
       <td align="center">
            <img src="https://skillicons.dev/icons?i=html" width="65px" alt="C icon" /><br>
            <pre><b>HTML</b></pre>
        </td>
       <td align="center">
            <img src="https://skillicons.dev/icons?i=css" width="65px" alt="C icon" /><br>
            <pre><b>CSS</b></pre>
        </td>
       <td align="center">
            <img src="https://skillicons.dev/icons?i=vue" width="65px" alt="C icon" /><br>
            <pre><b>Vue.js</b></pre>
        </td>
       <td align="center">
            <img src="https://skillicons.dev/icons?i=ruby" width="65px" alt="C icon" /><br>
            <pre><b>Ruby</b></pre>
        </td>
       <td align="center">
            <img src="https://skillicons.dev/icons?i=rails" width="65px" alt="C icon" /><br>
            <pre><b>Rails</b></pre>
        </td>
       <td align="center">
            <img src="https://skillicons.dev/icons?i=git" width="65px" alt="C icon" /><br>
            <pre><b>Git</b></pre>
        </td>
       <td align="center">
            <img src="https://skillicons.dev/icons?i=docker" width="65px" alt="C icon" /><br>
            <pre><b>Docker</b></pre>
        </td>
       <td align="center">
            <img src="https://skillicons.dev/icons?i=postgresql" width="65px" alt="C icon" /><br>
            <pre><b>PostgreSQL</b></pre>
        </td>
       <td align="center">
            <img src="https://skillicons.dev/icons?i=yarn" width="65px" alt="C icon" /><br>
            <pre><b>Yarn</b></pre>
        </td>
       <td align="center">
            <img src="https://skillicons.dev/icons?i=vite" width="65px" alt="C icon" /><br>
            <pre><b>Vite</b></pre>
        </td>
       <td align="center">
            <img src="https://skillicons.dev/icons?i=markdown" width="65px" alt="C icon" /><br>
            <pre><b>Markdown</b></pre>
        </td>
  </table>
</br>

### Resultado dos testes
<img width="776px" src="https://github.com/user-attachments/assets/5269369f-ab1b-47ba-b721-5ed55feb16cb"/>
<br>

<h3 align="left"> Levantamento de Requisitos: </h3>
<h4 align="left"> Requisitos Funcionais do Back-end: </h4>

##### 1. Criar CRUD para o model de Game
##### 2. Configurar rotas para os métodos do CRUD
##### Regras:
    - Create: salvar o jogo no banco com quem ganhou (X ou O), e quando foi jogado
    - Read: conseguir mostrar quem venceu o jogo, a data e (bônus) mostrar como ficou a tabuleiro
    - Update: rematch do jogo, ou seja, que o jogo tenha uma revanche
    - Delete: apagar o jogo do histórico
##### 3. Realizar a API com Rails
##### 4. Criar e subir o banco de dados com PostgreSQL
##### 5. Estrutura a infra com Docker
##### 6. Realizar o versionamento de código pelo GIT
##### Bônus 1: Implementar testes no back-end
