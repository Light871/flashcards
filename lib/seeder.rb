require 'parser'
require 'card_create_service'

class Seeder
  def db_seed
    parser = Parser.new
    dictionary = parser.parse

    writer = CardCreateService.new(dictionary)
    writer.create_cards(validate: false)
  end
end
