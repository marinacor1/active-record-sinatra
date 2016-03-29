** What's the difference between Genre.new(name: "Anime") and Genre.create(name: "Anime")?

* Genre.new builds a Genre with name and everything else nil (don't know where it goes)
* Genre.create actually produces it on the page and inserted into table

** Play around with Tux and your development environment (use shotgun to see your web interface) to investigate the difference. How does the save method play into the relationship between new and create?

* Save method?

What about the new_record? method? You may also want to do some Googling.

What kind of object does Genre.all return?
* Genre::ActiveRecord_Relation

How can you get a count of all of the Directors?
* Director.all.count

How do you grab the first Film? What about the last?
* Film.all.first
Film.all.last

Can you select all films where the director_id is 3? Try Film.where(... or Director.find(...
  * Director.find(3) gives Joss Whedon
  * Film.find(director_id=3) gives Titanic which is film id of 3 and director id of 2

What's the difference between the query above and Film.find_by(director_id: 3)?
* This one does give you the movie with the correct director id

Can you select the genre with a specific id? Try Genre.find(...
* find(3) returns drama

What does Director.find_or_create_by(name: "James Cameron") do?
* returns director id and name of James Camerona

 What about Director.find_or_create_by(name: "Mel Gibson")?
* creates a new director

Try calling .to_sql on the end of the query Genre.where(name: "Romance").to_sql. What happens?
* "SELECT \"genres\".* FROM \"genres\" WHERE \"genres\".\"name\" = 'Romance'"

What does Film.pluck(:title) do? Can you generate a query to return only the task titles?
* gives an array of all the movies

Go through the ActiveRecord docs and find three other methods to try out.
* assign variable
dirc = Director.where(name: 'James Cameron')

* Update:
* xray = Film.find_by(title: 'Avatar')
* ray.title = "Blue Moon"
* xray.save

* Update:
* walrus = Film.find_by(title: 'Titanic')
* walrus.update(title: 'Whats Eating Gilbert Grape')

Calculations

Create a route in your controller for /directors/:id. This should prepare an instance variable for the director @director = Director.find(id) and render a view with all films associated with that director.
In this view, display the total gross box office sales for that director's films. Hint: Use the ActiveRecord Calculations Documentation
#TODO
Display the average gross box office sales for that director's films. Use the documentation linked above.
I'm not judging, but you probably wrote these calculations right in your view. Can you extract these out to a class method in film so that you can call something more beautiful like @director.films.total_sales? (Yes, total_sales will be a class method on Film. Any class methods defined in a class that inherits from ActiveRecord::Base are also available on associations.)
Extension

Change out the sqlite database for a postgres database.
