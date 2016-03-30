require './test/test_helper'

class CreateGenreTest < Minitest::Test
  include Rack::Test::Methods #it allows us to have access to methods like get, post, patch, delete

  def app
    FilmFile
  end

  def setup
    DatabaseCleaner.start
  end

  def teardown
    DatabaseCleaner.clean
  end

  def test_create_genre_with_valid_attributes
    assert_equal 0, Genre.count

    post '/genres', {genre: {name: 'Cartoon'}} #similar to capybara's visit

    assert_equal 1, Genre.count #SELECT COUNT * from genres;
    assert_equal 200, last_response.status
    assert_equal "Genre Created", last_response.body
  end

  def test_create_genre_without_valid_attributes

  end
end
