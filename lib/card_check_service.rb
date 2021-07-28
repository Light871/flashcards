class CardCheckService
  def initialize(card:, translate:)
    @card = card
    @translate = translate
  end

  def is_translate_right?
    if @card.translated_text.casecmp?(@translate)
      @card.update(review_date: Date.today + 3)
      true
    else
      false
    end
  end
end
