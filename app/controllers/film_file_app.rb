class FilmFile < Sinatra::Base
  get '/films' do
    @films = Film.all
    erb :films_index #need to great a table
  end

  get '/genres' do
    @genres = Genre.all
    erb :genres_index
  end

  get '/directors' do
    @directors = Director.all
    erb :directors_index
  end

  get '/directors/:id' do
    @director = Director.find(id)
    erb :director_index
  end

  post '/genres' do
    genre = Genre.new(params[:genre])
    if genre.save
      status 200
      body "Genre Created"
    else
      status 400
      body "Missing name"
    end
    # @genres = Genre.all
    # erb :genre_index
  end
end

#active record lets you take care of integrity, query, migration lets you codify the data model changes in your application such that your data
#model insync with your code
