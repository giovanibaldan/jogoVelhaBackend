Rails.application.routes.draw do
  resource :games, only: [:index,:show,:create,:destroy]
  # :Index = Vai servir para mostrar todos os jogos em uma tabela
  # :Show = Vai mostrar como o tabuleiro ficou de um jogo em especifico
  # :Create = Vai servir para criar um novo jogo (Posso alterar futuramente com a lógica no front-end)
  # :Destroy = Vai servir para deletar um jogo
  member do
    patch 'reset'
    
  end
end