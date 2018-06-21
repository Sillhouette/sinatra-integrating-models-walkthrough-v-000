require_relative 'config/environment'
require_relative 'models/text_analyzer.rb'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/' do

    @analyzed_text = TextAnalyzer.new(params.values.join.to_s)
    binding.pry
    erb :results
  end
end
