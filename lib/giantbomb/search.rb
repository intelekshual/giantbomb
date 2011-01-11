module GiantBomb
  class Search < Api
    attr_reader :query, :resource
    
    def initialize(resource=nil)
      @params = {}
      @resource = resource.nil? ? '/search' : resource
      self
    end
    
    # GiantBomb::Search.new.fields('name,deck')
    def fields(fields)
      @params[:field_list] = "#{fields}"
      self
    end
    
    # GiantBomb::Search.new.limit(1)
    def limit(limit)
      @params[:limit] = "#{limit}"
      self
    end
    
    # GiantBomb::Search.new.offset(100)
    def offset(offset)
      @params[:offset] = "#{offset}"
      self
    end
    
    # GiantBomb::Search.new.query('duke nukem')
    def query(query)
      @params[:query] = "#{query}"
      self
    end
    
    # GiantBomb::Search.new.resources('game')
    def resources(resources)
      @params[:resources] = "#{resources}"
      self
    end

    # a convenience method that takes a hash where each key is 
    # the symbol of a method, and each value is the parameters
    # passed to that method.
    def filter(conditions)
      if conditions
        conditions.each do |key, value|
          if self.respond_to?(key)
            self.send(key, value)
          end
        end
      end
    end
    
    # GiantBomb::Search.new.query('duke nukem').fetch
    def fetch
      options = @params.merge(@@config)
      response = self.class.get(@resource, :query => options)
      response['results']
    end
        
  end
end