require 'card_check_service'
class CardReviewsController < ApplicationController
  def new
    @card = Card.review_ready.first
  end

  def create
    @card = Card.find(params[:card_id])
    @card_check = CardCheckService.new(card: @card, translate: card_params[:translated_text])
    if @card_check.translate_right?
      flash[:notice] = "Правильно!"
    else
      flash[:notice] = "Неправильно! Попробуй еще одну!"
    end
    redirect_to root_path
  end

  private

  def card_params
    params.require(:card).permit(:translated_text)
  end
end
