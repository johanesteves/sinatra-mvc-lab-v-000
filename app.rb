require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/results' do
    @pig_latin_text = PigLatinize.new(params[:string])
    erb :results
  end
end
