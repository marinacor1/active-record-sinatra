class Genre < ActiveRecord::Base
  has_many(:films)
end

#it allows you to go from app to database, find all films that have
#its foreign key and return them into table
#allows the collection
