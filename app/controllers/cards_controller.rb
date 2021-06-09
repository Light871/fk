class CardsController < ApplicationController
  def index
    @cards = Card.all
  end

  private

  def card_params
    params.require(:card).permit(:original_text, :translated_text)
  end
end