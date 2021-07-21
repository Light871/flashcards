require 'card_create_service'
class CardsController < ApplicationController
  before_action :init_card, only: %i[show edit update destroy]

  def index
    @cards = Card.all
  end

  def show; end

  def new
    @card = Card.new
  end

  def create
    @card = CardCreateService.new(card_params).create_cards

    if @card.save
      redirect_to @card
    else
      render action: 'new'
    end
  end

  def edit; end

  def update
    if @card.update(card_params)
      redirect_to @card
    else
      render action: 'edit'
    end
  end

  def destroy
    @card.destroy

    redirect_to cards_path
  end

  def review
    @card = Card.review_ready.first
  end

  private

  def init_card
    @card = Card.find(params[:id])
  end

  def card_params
    params.require(:card).permit(:original_text, :translated_text)
  end
end
