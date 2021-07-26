class CardReviewsController < ApplicationController
  def new
    @card = Card.review_ready.first
  end

  def create
    @card = Card.find(params[:card_id])
    if @card.translated_text.casecmp?(card_params[:translated_text])
      @card.update(review_date: Date.today + 3)
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
