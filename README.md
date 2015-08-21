## A Ruby wrapper for the GiantBomb API

All credits goes to [intelekshual](https://github.com/intelekshual) for creating
mostly everything :)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'giantbomb'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install giantbomb

In your Rails application, add your API key to:
`config/initializers/giantbomb.rb`

``` ruby
GiantBomb::Api.key('API_KEY_HERE')
```

### Resources

Current available resources:
* Character
* Company
* Concept
* Franchise
* Game
* Location
* Person
* Platform
* Video

All resources have access to `Resource#list` `Resource#detail` and `Resource#search`

### Usage

###### Finding a Game

``` ruby
game = GiantBomb::Game.detail(1)

games = GiantBomb::Game.find('gta')
games = GiantBomb::Game.list
```

###### Searching for Games

``` ruby
search = GiantBomb::Search.new
search.query('gta')
search.fetch
```

``` ruby
# Available filter methods

.limit(10)           # limits the number of returned resources
.resources('game')   # determines the type of resource
.fields('name,deck') # returns only the requested resources
.offset(100)         # sets the offset

# All filters are chainable!
```

### Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run
`rake spec` to run the tests. You can also run `bin/console` for an interactive
prompt that will allow you to experiment.

###### TODO

* Add all resources available from: http://www.giantbomb.com/api/documentation
* Create a proper documentation showcasing all available resources and how to use them
* Tests

### Examples

For more examples see [mygames.io](https://github.com/pacMakaveli/mygames.io)
for a live application

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
