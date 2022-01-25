# SpaceFlightNews-API

<!---Esses são exemplos. Veja https://shields.io para outras pessoas ou para personalizar este conjunto de escudos. Você pode querer incluir dependências, status do projeto e informações de licença aqui--->

![image](https://user-images.githubusercontent.com/68911852/150887980-d2380eec-ef1c-4d9b-9d6c-7196822933b3.png)


 This is a challenge by [Coodesh](https://coodesh.com/) 
 <br><br>
>  Este projeto é uma REST API que utiliza os dados do projeto Space Flight News, uma API pública com informações relacionadas a voos espaciais. 

## Apresentação
https://www.loom.com/embed/d2531a3dfd3f43888139d98947e5b156

## 💻 Tecnologias usadas

### Linguagem:
* <b>Ruby 3.0.1</b>

### Freamwork Web:
*  <b>Rails 6.1.4.4</b>

### Banco de Dados:
* <b>PostgreSQL 14.1</b>
-------------------------
### Gems Auxiliares:
- <b>RSpec</b> -Testes Automatizados
- <b>JBuilder</b> - Respondendo com JSON
- <b>RestClient</b> - Acessando outras APIs
- <b>Kaminari</b> - Paginação
- <b>Whenever</b> - Agendamento de tarefas com CRON:

## 🚀 Instalando SpaceFlightNews-API

Para instalar o SpaceFlightNews-API, siga estas etapas:

Após clonar o projeto na sua máquina... 

Através do terminal navegue até o diretório do projeto e execute: 

```bash
$ bundle
```
```bash
$ rails db:create
```
```bash
$ rails db:migrate
```

## Popular banco de dados
```bash
$ rails db:seed
```
## Executar testes automatizados
```bash
$ rspec
```
## Agendar carregamento diário do banco
```bash
$ bundle exec whenever --update-crontab --set environment='development'
```
## Para subir o servidor da API...
```bash
$ rails s
```


## ☕ Usando SpaceFlightNews-API

Para acessar a API: 
http://localhost:3000/

<b>GET /</b>
![image](https://user-images.githubusercontent.com/68911852/150894722-27bd9350-4571-487a-9287-7123075b1df8.png)

<b>GET /articles</b> Valores default: page=1&page_size=5; 5 é o page_size máximo;
![image](https://user-images.githubusercontent.com/68911852/150894870-0b13d827-0468-4ceb-b2a8-e31c14143942.png)
Passando parametros de paginação: 
![image](https://user-images.githubusercontent.com/68911852/150895008-a9e92eba-7059-448f-bcb7-a7f5d4fb375e.png)

<b>GET /articles/:id</b>
![image](https://user-images.githubusercontent.com/68911852/150895081-66cb193f-eea0-4ab7-9a67-94ba00e86d49.png)

<b>POST /articles</b>
![image](https://user-images.githubusercontent.com/68911852/150895280-047eedfe-458a-45e7-9b81-ce968a3a06cb.png)
![image](https://user-images.githubusercontent.com/68911852/150895328-0250c57d-9a62-4653-a8fb-4ac9b6de4b12.png)

<b>PUT /articles/:id</b>
![image](https://user-images.githubusercontent.com/68911852/150896022-2dc6cb80-d1c2-4636-bd59-8dabb8d3b112.png)
![image](https://user-images.githubusercontent.com/68911852/150896090-76827b8f-511b-4926-8d56-ae9de791cfec.png)

<b>DELETE /articles/:id</b>
![image](https://user-images.githubusercontent.com/68911852/150896173-726ed052-a624-48bf-9b27-44b0075d9942.png)






[⬆ Voltar ao topo](#SpaceFlightNews-API)<br>
