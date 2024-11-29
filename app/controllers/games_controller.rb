class GamesController < ApplicationController

  # O controller index serve para mostrar todos os jogos em uma tabela
  def index
    render json: Game.all, status: :ok
  end
  # O controller show serve para mostrar um jogo específico
  def show
    game = Game.find(params[:id])
    render json: game, status: :ok
  end
  # O controller create serve para criar um novo jogo
  # O método verifica o id do último jogo e incrementa 1 para criar um novo jogo
  def create
    last_game = Game.order(:id).last
    next_id = last_game ? last_game.id + 1 : 1
    game = Game.create(id: next_id)
    render json: game, status: :created
  end
  # O controller destroy serve para deletar um jogo
  def destroy
    game = Game.find(params[:id])
    game.destroy
    render json: game, status: :ok
  end
  # O controller reset serve para resetar o jogo atual
  def reset
    game = Game.find(params[:id])
    game.reset
    render json: game, status: :ok
  end
  # O controller game_state serve para mostrar o estado que um jogo acabou
  def show_game_state
    game = Game.find(params[:id])
    render json: game.game_state, status: :ok
  end

  # O controller update serve para inserir dados nos jogos apenas para fins de teste
  def update
    game = Game.find(params[:id])
    if game.update(game_params)
      render json: game, status: :ok
    end
  end

  # O controller game_logic serve para verificar o vencedor
  def game_logic
    game = Game.find(params[:id])
    game.verify_winner
    render json: game, status: :ok
  end

  # Private significa que os métodos abaixo são privados e só podem ser acessados por outros métodos da classe
  private
  # O método game_params serve para definir os parâmetros que podem ser passados para o controller
    def game_params
      params.require(:game).permit(:winner, game_state: [])
    end

end
