class FilmFile < Sinatra::Base
  get '/films' do
    erb :films_index #need to great a table
  end
end
