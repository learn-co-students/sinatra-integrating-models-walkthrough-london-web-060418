require_relative 'config/environment'
require_relative 'models/text_analyzer.rb'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/' do
    # name="user_text" in index.erb
    @analyzed_text = TextAnalyzer.new(params[:user_text])
    erb :results
  end
end
