require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/new' do
    # @puppy =
    erb :create_puppy
  end

  post '/' do
    @name = params[:name]
    @breed = params[:breed]
    @age = params[:age]
    erb :display_puppy
  end

  # get '/:name' do
  #   @puppy = Puppy.all.find{|puppy| puppy.name == params["name"]}
  #   erb :display_puppy
  # end
end
