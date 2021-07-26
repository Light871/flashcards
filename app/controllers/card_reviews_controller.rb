class CardReviewsController < ApplicationController
  def new
    @card = Card.review_ready.first
  end
end
