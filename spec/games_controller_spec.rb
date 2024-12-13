require 'rails_helper'
require 'spec_helper'

RSpec.describe GamesController, type: :controller do
  let(:valid_attributes) {
    { winner: "X", game_state: ["X", "O", "X", "O", "X", "O", "X", "O", "X"] }
  }

  let(:invalid_attributes) {
    { winner: nil, game_state: nil }
  }

  describe "GET #index" do
    it "returns a success response" do
      Game.create! valid_attributes
      get :index
      expect(response).to be_successful
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      game = Game.create! valid_attributes
      get :show, params: { id: game.to_param }
      expect(response).to be_successful
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Game" do
        expect {
          post :create, params: { game: valid_attributes }
        }.to change(Game, :count).by(1)
      end
    end

    context "with invalid params" do
      it "returns a failure response" do
        post :create, params: { game: invalid_attributes }
        expect(response).to_not be_successful
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      it "update a Game" do
        
      end
    end

    context "with invalid params" do
      it "update a Game wrong" do
        
      end
    end
  end

  describe "DELETE #destroy" do
    it "deletes a game" do
      game = Game.create! valid_attributes
      expect {
        delete :destroy, params: { id: game.to_param } 
    }.to change(Game, :count).by(-1)
    end
  end
end