# Projeto de Teste de API com Karate DSL

Este projeto contém testes de API escritos com a Karate DSL para a API Reqres.

## Requisitos

- Java 8 ou superior
- Maven

## Configuração do Projeto

Este projeto foi criado com o seguinte comando Maven, que utiliza o Karate para configurar a estrutura inicial do projeto:

```
mvn archetype:generate \
-DarchetypeGroupId=com.intuit.karate \
-DarchetypeArtifactId=karate-archetype \
-DarchetypeVersion=1.0.1 \
-DgroupId=s206.trabalho \
-DartifactId=s206_trabalho
```

## Executando os Testes

Para executar os testes deste projeto, você pode usar o seguinte comando Maven:

```
mvn test -Dtest=ReqresRunner
```

Este comando irá iniciar a execução dos testes definidos na classe `ReqresRunner`.

## Relatórios de Teste

Após a execução dos testes, você pode encontrar os relatórios de teste no diretório `target/Reqres.Reqres.html`. Basta abrir este arquivo no navegador para visualizar o resultado dos testes.

## Autores
Este projeto foi criado por Gabriel Almeida Dias e Vitor Oliveira Juliano de Almeida.