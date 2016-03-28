class FilmFile < Sinatra::Base
  get '/films' do
    @films = Film.all
    erb :films_index #need to great a table
  end

  get '/genres' do
    @genres = Genre.all
    erb :genres_index
  end
end
