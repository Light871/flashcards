require 'parser'
require 'card_create_service'

class Creator
  def db_seed
    parser = Parser.new
    dictionary = parser.parse

    writer = CardCreateService.new(dictionary)
    writer.create_cards
  end
end
