# set the database based on the current environment
#creates connection between active record and database
#makes string with database name. name should match app controller file.
#default is developer
database_name = "film-file-#{FilmFile.environment}"

# connect ActiveRecord with the current database
#TODO what is an adapter 
ActiveRecord::Base.establish_connection(
  :adapter  => "sqlite3",
  :database => "db/#{database_name}",
)
