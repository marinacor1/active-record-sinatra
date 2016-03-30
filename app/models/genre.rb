class Genre < ActiveRecord::Base
  validates :name, presence: true #uniquness: true is another option
  has_many(:films)
end

#it allows you to go from app to database, find all films that have
#its foreign key and return them into table
#allows the collection
