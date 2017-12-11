# Rports Service

 This project is API in [Rails](http://rubyonrails.org/) application used to 
 generate reports .

## Dependencies

To run this project you need to have:

- [Docker](https://docker.com/)

* [RAILS ERD](https://voormedia.github.io/rails-erd/install.html)
  Gem for generate MER authomatic for Rails models
  * OSX - `$ brew install graphviz           # Homebrew on Mac OS X`
  * Linux - `sudo aptitude install graphviz  # Debian and Ubuntu`
  * to run just rake erb 

* [Tiny Tds](https://github.com/rails-sqlserver/tiny_tds)
  Simple and fast FreeTDS bindings for Ruby using DB-Library.
  * OSX - `$ brew install freetds`
        - `$ sudo ARCHFLAGS="-arch x86_64" gem install tiny_tds`

## Setup the project

1. Install the dependencies above
2. `$ git clone <REPOSITORY_URL> fit` - Clone the project
3. `$ cd reports_service` - Go into the project folder
4. Rename file .env.development to .env
5. `$ rspec spec` - Run the specs to see if everything is working fine

If everything goes OK, you can now run the project!

## Running the project

* By docker 
1. Install and start Docker (https://docs.docker.com/engine/installation/)
2. Run `docker-compose build`
3. Run `docker-compose up`
4. Type on your browser `localhost:7007` to open the website

* By project
1. `$ rails server` - Opens the server
2. Open [http://localhost:3000](http://localhost:3000)

#### Running specs and checking coverage

`$ rake spec` to run the specs.

`$ coverage=on bundle exec rake spec` to generate the coverage report then open the file `coverage/index.html` on your browser.
