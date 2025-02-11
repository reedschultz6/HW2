# In this assignment, you'll be using the domain model from hw1 (found in the hw1-solution.sql file)
# to create the database structure for "KMDB" (the Kellogg Movie Database).
# The end product will be a report that prints the movies and the top-billed
# cast for each movie in the database.

# To run this file, run the following command at your terminal prompt:
# `rails runner kmdb.rb`

# Requirements/assumptions
#
# - There will only be three movies in the database – the three films
#   that make up Christopher Nolan's Batman trilogy.
# - Movie data includes the movie title, year released, MPAA rating,
#   and studio.
# - There are many studios, and each studio produces many movies, but
#   a movie belongs to a single studio.
# - An actor can be in multiple movies.
# - Everything you need to do in this assignment is marked with TODO!
# - Note rubric explanation for appropriate use of external resources.

# Rubric
# 
# There are three deliverables for this assignment, all delivered within
# this repository and submitted via GitHub and Canvas:
# - Generate the models and migration files to match the domain model from hw1.
#   Table and columns should match the domain model. Execute the migration
#   files to create the tables in the database. (5 points)
# - Insert the "Batman" sample data using ruby code. Do not use hard-coded ids.
#   Delete any existing data beforehand so that each run of this script does not
#   create duplicate data. (5 points)
# - Query the data and loop through the results to display output similar to the
#   sample "report" below. (10 points)
# - You are welcome to use external resources for help with the assignment (including
#   colleagues, AI, internet search, etc). However, the solution you submit must
#   utilize the skills and strategies covered in class. Alternate solutions which
#   do not demonstrate an understanding of the approaches used in class will receive
#   significant deductions. Any concern should be raised with faculty prior to the due date.

# Submission
# 
# - "Use this template" to create a brand-new "hw2" repository in your
#   personal GitHub account, e.g. https://github.com/<USERNAME>/hw2
# - Do the assignment, committing and syncing often
# - When done, commit and sync a final time before submitting the GitHub
#   URL for the finished "hw2" repository as the "Website URL" for the 
#   Homework 2 assignment in Canvas

# Successful sample output is as shown:

# Movies
# ======

# Batman Begins          2005           PG-13  Warner Bros.
# The Dark Knight        2008           PG-13  Warner Bros.
# The Dark Knight Rises  2012           PG-13  Warner Bros.

# Top Cast
# ========

# Batman Begins          Christian Bale        Bruce Wayne
# Batman Begins          Michael Caine         Alfred
# Batman Begins          Liam Neeson           Ra's Al Ghul
# Batman Begins          Katie Holmes          Rachel Dawes
# Batman Begins          Gary Oldman           Commissioner Gordon
# The Dark Knight        Christian Bale        Bruce Wayne
# The Dark Knight        Heath Ledger          Joker
# The Dark Knight        Aaron Eckhart         Harvey Dent
# The Dark Knight        Michael Caine         Alfred
# The Dark Knight        Maggie Gyllenhaal     Rachel Dawes
# The Dark Knight Rises  Christian Bale        Bruce Wayne
# The Dark Knight Rises  Gary Oldman           Commissioner Gordon
# The Dark Knight Rises  Tom Hardy             Bane
# The Dark Knight Rises  Joseph Gordon-Levitt  John Blake
# The Dark Knight Rises  Anne Hathaway         Selina Kyle

# Delete existing data, so you'll start fresh each time this script is run.
# Use `Model.destroy_all` code.
# TODO!

# Generate models and tables, according to the domain model.
# TODO!

# Insert data into the database that reflects the sample data shown above.
# Do not use hard-coded foreign key IDs.
# TODO!

# Prints a header for the movies output
puts "Movies"
puts "======"
puts ""

# Query the movies data and loop through the results to display the movies output.
# TODO!

# Prints a header for the cast output
puts ""
puts "Top Cast"
puts "========"
puts ""

# Query the cast data and loop through the results to display the cast output for each movie.
# TODO!


studio = Studio.new
studio ["studio_name"] = "Warner Bros."

studio.save
# puts studio.inspect

movie_1 = Movie.new 
movie_1 ["title"] = "Batman Begins"
movie_1 ["year_released"] = "2005"
movie_1 ["rated"] = "PG-13"
movie_1 ["studio_id"] = "1"

movie_1.save
# puts movie_1.inspect

movie_2 = Movie.new 
movie_2 ["title"] = "The Dark Knight"
movie_2 ["year_released"] = "2008"
movie_2 ["rated"] = "PG-13"
movie_2 ["studio_id"] = "1"

movie_2.save
# puts movie_2.inspect

movie_3 = Movie.new 
movie_3 ["title"] = "The Dark Knight Rises"
movie_3 ["year_released"] = "2012"
movie_3 ["rated"] = "PG-13"
movie_3 ["studio_id"] = "1"

movie_3.save
# puts movie_3.inspect

actor_1 = Actor.new
actor_1 ["name"] = "Christian Bale"

actor_1.save
puts actor_1.inspect

actor_2 = Actor.new
actor_2 ["name"] = "Michael Caine"

actor_2.save
puts actor_2.inspect

actor_3 = Actor.new
actor_3 ["name"] = "Liam Neeson"

actor_3.save
puts actor_3.inspect

actor_4 = Actor.new
actor_4 ["name"] = "Katie Holmes"

actor_4.save
puts actor_4.inspect

actor_5 = Actor.new
actor_5 ["name"] = "Gary Oldman"

actor_5.save
puts actor_5.inspect

actor_6 = Actor.new
actor_6 ["name"] = "Heath Ledger"

actor_6.save
puts actor_6.inspect

actor_7 = Actor.new
actor_7 ["name"] = "Aaron Eckhart"

actor_7.save
puts actor_7.inspect

actor_8 = Actor.new
actor_8 ["name"] = "Maggie Gyllenhaal"

actor_8.save
puts actor_8.inspect

actor_9 = Actor.new
actor_9 ["name"] = "Tom Hardy"

actor_9.save
puts actor_9.inspect

actor_10 = Actor.new
actor_10 ["name"] = "Joseph Gordon-Levitt"

actor_10.save
puts actor_10.inspect

actor_11 = Actor.new
actor_11 ["name"] = "Anne Hathaway"

actor_11.save
puts actor_11.inspect