# PDVend

Esta é uma típica aplicação em Rails.

Para rodá-la, você vai precisar de:

- Ruby 2
- Rails 5
- PostgreSQL

Para iniciar a aplicação, basta rodar `rails s`

# Endpoints
Esta aplicação gira em torno de apenas 1 camada, denominada `Links`.

## Links

Ela está modalda sob a arquitetura RESTful, apesar deste endpoint ter somente `create` e `show`.

### Cadastrar
Para você cadastrar um novo link, acesse: `http://localhost:3000/links?link[url]=http://link.aqui/`

Após cadastrar, você será redirecionado para a visualização do link, onde terá um JSON com `h1`, `h2` e `h3`.

### Visualizar
Para você visualizar um link existente, acesse: `http://localhost:3000/links/<id>`

# Funcionamento
<img src="https://s16.postimg.org/npj1neghh/Captura_de_tela_2016_10_20_11_59_11.png" style="width: 100%;" />

Foi feito uma classe para efetuar o scraper denominada `Scraper` (dãã) dentro de `lib/`.

Esta classe trabalha com uma gem chamada `Wombat`.

Através do `Wombat` podemos consultar o HTML de qualquer página na Web, através de `XPath` ou `seletores CSS`.

Atenciosamente,
Luiz Almeida.

## Obrigado!