module GiantBomb
  class Resource
    @@resource = {}
    
    def self.has_resource(singular=nil, opts={})
      @@resource[self.name.downcase] = { 
        :singular => singular.nil? ? "#{self.name.downcase}" : singular, 
        :plural => opts[:plural].nil? ? "#{self.name.downcase}s" : opts[:plural]
      }
    end
    
    def self.resources
      @@resource[self.name.downcase]
    end
    
    def self.detail(id, conditions={})
      search = GiantBomb::Search.new("/#{self.resources[:singular]}/#{id}/")
      search.filter(conditions)
      self.new(search.fetch)
    end
    
    def self.list(conditions={})
      search = GiantBomb::Search.new("/#{self.resources[:plural]}")
      search.filter(conditions)
      search.fetch.collect do |result|
        self.new(result)
      end
    end
    
    def self.search(query)
      search = GiantBomb::Search.new
      search.resources("#{self.resources[:singular]}")
      search.query(query)
      search.fetch.collect do |result|
        self.new(result)
      end
    end
    
    class << self
      alias_method :find, :search
    end

    def initialize(attributes={})
      attributes.each do |key, value|
        if self.respond_to?(key.to_sym)
          self.instance_variable_set("@#{key}", value)
        end
      end
    end
    
  end
end