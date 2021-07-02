require 'parser'
require 'card_writer'

class Creator
  def db_seed
    parser = Parser.new
    dictionary = parser.parse

    writer = CardWriter.new(dictionary)
    writer.create_cards
  end
end
