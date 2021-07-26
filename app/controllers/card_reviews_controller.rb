class CardReviewsController < ApplicationController
  def new
    @card = Card.review_ready.first
  end

  private

  def card_params
    params.require(:card).permit(:translated_text)
  end
end
