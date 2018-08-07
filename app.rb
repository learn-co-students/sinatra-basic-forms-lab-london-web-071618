require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/create_puppy' do
  #  @puppy = Puppy.new(params[:name],[:breed],[:age])

    @name = params['name']
    @age = params['age']
    @breed = params['breed']

    erb :display_puppy
  end
end
