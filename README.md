# Comando Ruby etc

- docker compose up --build
subir a aplicação

- rails db:create
criar uma migrate

- rails db:migrate
subir as novas migrates

- rails s
subir o servidor rails

- http://localhost:3000/games/
endereço para testar no postman

- rails db:rollback
desfazer as últimas migrates no scheema

{
    "winner": "X",
    "game_state": [
      "X", "O", "X",
      "O", "O", "X",
      "X", "O", ""
    ]
}

rails c

Game.create(winner:"X",game_state:["X", "O", "X","O", "O", "X","X", "O", ""])