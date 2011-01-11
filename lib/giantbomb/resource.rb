module GiantBomb
  class Resource
    
    def initialize(attributes={})
      attributes.each do |key, value|
        if self.respond_to?(key.to_sym)
          self.instance_variable_set("@#{key}", value)
        end
      end
    end
    
    def self.detail(id, conditions={})
      search = GiantBomb::Search.new("/game/#{id}/")
      search.filter(conditions)
      Game.new(search.fetch)
    end
    
    def self.list(conditions={})
      search = GiantBomb::Search.new("/games")
      search.filter(conditions)
      search.fetch.collect do |result|
        Game.new(result)
      end
    end
    
    def self.search(query)
      search = GiantBomb::Search.new
      search.resources('game')
      search.query(query)
      search.fetch.collect do |result|
        Game.new(result)
      end
    end
    
    class << self
      alias_method :find, :search
    end
    
  end
end