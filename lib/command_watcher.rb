require './lib/rick_and_morty_quoter.rb'

class CommandWatcher
  def self.parse(text)
    args = text.split(' ')
    if args[0].include?('/start')
      RickAndMortyQuoter.start
    elsif args[0].include?('/quote')
      RickAndMortyQuoter.quote args[1]
    elsif args[0].include?('/help')
      <<-MESSAGE
/start     - startup message
/quote     - a random quote
/quote :id - the quote with the id :id
/help      - this list of commands
      MESSAGE
    end
  end
end
