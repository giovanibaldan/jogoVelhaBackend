# # require 'spec_helper'
# require 'rails_helper'
# require_relative '../app/models/game.rb'

# RSpec.describe Game do
#   let(:game) { Game.new }

#   describe '#reset' do
#     it 'resets the game' do
#       game.game_state = ['X', 'O', 'X', 'O', 'X', 'O', 'X', 'O', 'X']
#       game.winner = 'X'
#       game.reset
#       expect(game.game_state).to eq(['', '', '', '', '', '', '', '', ''])
#       expect(game.winner).to eq('')
#     end
#   end

#   describe '#verify_winner' do
#     context 'when there is a winner' do
#       it 'sets the winner' do
#         game.game_state = ['X', 'X', 'X', 'O', 'O', '', '', '', '']
#         game.verify_winner
#         expect(game.winner).to eq('X')
#       end
#     end

#     context 'when there is a draw' do
#       it 'sets the winner' do
#         game.game_state = ['X', 'O', 'X', 'X', 'O', 'O', 'O', 'X', 'X']
#         game.verify_winner
#         expect(game.winner).to eq('Empate')
#       end
#     end

#     context 'when the game is abandoned' do
#       it 'does not set the winner' do
#         game.game_state = ['X', '', '', '', '', '', '', '', '']
#         game.verify_winner
#         expect(game.winner).to eq('')
#       end
#     end
#   end

#   describe '#verify_column' do
#     it 'sets the winner' do
#       game.game_state = ['X', '', '', 'X', '', '', 'X', '', '']
#       game.verify_column
#       expect(game.winner).to eq('X')
#     end
#   end

#   describe '#verify_row' do
#     it 'sets the winner' do
#       game.game_state = ['X', 'X', 'X', '', '', '', '', '', '']
#       game.verify_row
#       expect(game.winner).to eq('X')
#     end
#   end

#   describe '#verify_diagonal' do
#     it 'sets the winner' do
#       game.game_state = ['X', '', '', '', 'X', '', '', '', 'X']
#       game.verify_diagonal
#       expect(game.winner).to eq('X')
#     end
#   end
# end