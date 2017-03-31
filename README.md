# Fandor API Challenge

Simple API to retrieve film data and submitting film ratings.
## Prerequisites

Ruby needs to be installed on your computer to run the application. You can follow the links to install each 
individual or use a package manager such as [Homebrew](https://brew.sh/)  (OSX) / [Scoop](http://scoop.sh/) (Windows) 
to install them. RSpec and other gems are installed during the `bundle install` process. 

* [Ruby](https://www.ruby-lang.org/en/) - Ruby
* [Rails](http://rubyonrails.org/) - Rails 5

### Running API Application

Steps using terminal/command prompt to run the application: 

   1. Clone the project 
   2. Direct into the project folder and execute: `bundle install`
   3. Create database, load schemas, and add seeded data by executing : `rails db:setup`
   4. Run the application by executing: `rails s`
   5. Go to [localhost](localhost:3000) and view the films using the API endpoints.
    
## Run Test
   To run test suite execute the following command:
        
        bundle exec rspec 
   
   [Factory Girl](https://github.com/thoughtbot/factory_girl/) gem was used to set up the test data
      
## API Endpoints

```
GET /api/v1/films     => Retrieves all films
GET /api/v1/films/:id => Retrieves an individual film
POST /api/v1/ratings   => create a rating for a film
```
To rate a film have the server running and run the following command using [curl](https://curl.haxx.se/docs/manual.html) (replace integer placeholders): 
    
    curl -H "Content-Type: application/json" -X POST -d '{"rating": { "rating": (integer),"film_id":(integer)}}' http://localhost:3000/api/v1/ratings


## Rubocop

[RuboCop](https://github.com/bbatsov/rubocop) is a Ruby static code analyzer. It enforces many of the guidelines outlined in the community Ruby Style Guide.

To use Rubocop execute the following command in the root path of the project: 
    
    rubocop app/ spec/