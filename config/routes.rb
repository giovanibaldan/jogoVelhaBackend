Rails.application.routes.draw do
  resources :games, only: [:index,:show,:create,:destroy,:update] do
  # :index = Vai servir para mostrar todos os jogos em uma tabela
  # :show = Vai servir para mostrar um jogo específico (teste)
  # :create = Vai servir para criar um novo jogo (alterar no front-end?)
  # :destroy = Vai servir para deletar um jogo
  # :update = Inserir dados na tabela (teste)
    member do
      patch 'check_win'
      patch 'reset'
      get 'show_game_state'
      # :reset = Vai servir para resetar o jogo atual
      # :show_game_state = Vai servir para mostrar o estado que um jogo acabou
      # :game_logic = Vai servir para verificar o vencedor
    end
  end
end