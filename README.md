## Quick-Feed

Uma aplicação Rails que simula uma rede social: os usuários podem se registrar, criar posts, e comentar — cada comentário é associado ao usuário que o criou.

## Principais funcionalidades

- Autenticação de usuários (Devise)
- Criação/edição/exclusão de posts
- Comentários ricos (Action Text) vinculados ao usuário
- UI leve com Simple.css (CDN) e estilos locais para navbar/footer

## Tecnologias

- Ruby on Rails
- Devise (auth)
- ActionText (rich content)
- SQLite
- Simple.css (estilos via CDN)

## Como rodar localmente

1. Instale dependências:
   - `bundle install`
2. Prepare o banco de dados:
   - `rails db:create db:migrate db:seed`
3. Inicie o servidor:
   - `bin/rails server`
4. Acesse `http://localhost:3000`