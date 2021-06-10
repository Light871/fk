class CardsController < ApplicationController
  def index
    @cards = Card.all
  end

  def show
    @card = Card.find(params[:id])
  end

  def new
  end

  def create
    @card = Card.new(card_params)

    if @card.valid?
      @card.save
      redirect_to @card
    else
      render action: 'new'
    end
  end

  private

  def card_params
    params.require(:card).permit(:original_text, :translated_text)
  end
end