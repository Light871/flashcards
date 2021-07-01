class CardWriter
  def initialize(seeds)
    @seeds = seeds
  end

  def create_cards
    @seeds.each do |seed|
      Card.create(original_text: seed[:original_text], translated_text: seed[:translated_text])
    end
  end
end
