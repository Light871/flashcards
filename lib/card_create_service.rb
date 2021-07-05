class CardCreateService
  def initialize(seeds)
    @seeds = seeds
  end

  def create_cards()
    if @seeds.kind_of?(Array)
      @seeds.each do |seed|
        card = Card.new(original_text: seed[:original_text], translated_text: seed[:translated_text])
        card.save!(validate: false)
      end
    else
      card = Card.new(@seeds)
    end
  end
end
