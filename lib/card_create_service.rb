class CardCreateService
  def initialize(params)
    @params = params
  end

  def create_cards(validate: true)
    if @params.is_a?(Array)
      @params.each do |new_card|
        card = Card.new(original_text: new_card[:original_text], translated_text: new_card[:translated_text])
        card.save!(validate: validate)
      end
    else
      Card.new(@params)
    end
  end
end
