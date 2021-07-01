require 'get_words'
require 'card_writer'

class Creator
  def db_seed
    reader = GetWords.new
    dictionary = reader.parser

    writer = CardWriter.new(dictionary)
    writer.create_cards
  end
end
