Rails.application.routes.draw do
  resources :games, only: [:index,:show,:create,:destroy,:update] do
  # :Index = Vai servir para mostrar todos os jogos em uma tabela
  # :Show = Vai servir para mostrar um jogo específico
  # :Create = Vai servir para criar um novo jogo (Posso alterar futuramente com a lógica no front-end)
  # :Destroy = Vai servir para deletar um jogo
  # :Update = Apenas para fins de teste
    member do
      patch 'reset'
      get 'show_game_state'
      # :Reset = Vai servir para resetar o jogo atual
      # :Game_state = Vai servir para mostrar o estado que um jogo acabou
    end
  end
end