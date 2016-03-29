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

#active record lets you take care of integrity, query, migration lets you codify the data model changes in your application such that your data
#model insync with your code
