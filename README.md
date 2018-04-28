# README

Desafio para encontrar uma UBS (Unidade Básica de Saúde) mais próximas de acordo com sua localização informada.

## Setup

### Ambiente
É necessário instalar as seguintes aplicações:

    Ruby 2.5.x
    PostgreSQL 9.6

### Instalação e execução da aplicação

1. Faça o clone com **git clone**

2. Vá ao diretório do projeto e execute

  find_ubs$ bundle install

3. Copie o conteúdo do arquivo .env.example para o arquivo .env e altere com as credenciais de      seu ambiente local

  find_ubs$ cp .env.example .env

4. Faça o setup do banco de dados

  find_ubs$ bin/rails db:setup

