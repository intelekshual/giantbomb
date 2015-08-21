module GiantBomb
  # Wrapper for the Giant Bomb Search resource
  #
  # @see http://api.giantbomb.com/documentation/#search
  class Search
    include GiantBomb::Api

    # @private
    attr_reader :query, :resource

    # Creates a new search
    #
    # @example Initialize a Giant Bomb search
    #   search = GiantBomb::Search.new
    #   search = GiantBomb::Search.new('game')
    def initialize(resource=nil)
      @params = {}
      @resource = resource.nil? ? '/search' : resource
      self
    end

    # @group Generic filters

    # Only return the specified fields for the given resource
    #
    # @param fields [String] A comma delimited list of fields to return.
    # @return [GiantBomb::Search] self
    def fields(fields)
      @params[:field_list] = "#{fields}"
      self
    end

    # Only return a limited number of resources
    #
    # @param limit [Integer] Nmber of items to limit by.
    # @return [GiantBomb::Search] self
    def limit(limit)
      @params[:limit] = "#{limit}"
      self
    end

    # Only include resources starting from a given offset
    #
    # @param limit [Integer] Number of items to skip.
    # @return [GiantBomb::Search] self
    def offset(offset)
      @params[:offset] = "#{offset}"
      self
    end

    # Search query
    #
    # @param query [String] The search query.
    # @return [GiantBomb::Search] self
    def query(query)
      @params[:query] = "#{query}"
      self
    end

    # Only include items of the specified resources
    #
    # @param resources [String] A comma delimited list of resources to search.
    # @return [GiantBomb::Search] self
    def resources(resources)
      @params[:resources] = "#{resources}"
      self
    end

    # A convenience method that takes a hash where each key is
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

    # Fetch the results of the query
    #
    # @return [Array] Items that match the specified query.
    # @example
    #   search = GiantBomb::Search.new.query("Duke Nukem").fetch
    def fetch
      fetch_response['results']
    end

    # Fetch the full response of the query, including metadata
    # Keys returned:
    #   status_code
    #   error
    #   number_of_total_results
    #   number_of_page_results
    #   limit
    #   offset
    #   results
    #
    # @return [Hash] Hash of the api response
    # @example
    #   search = GiantBomb::Search.new.query("Duke Nukem").fetch_response
    # @see http://api.giantbomb.com/documentation/#handling_responses
    def fetch_response
      options = @params.merge(Api.config)
      response = Api.get(@resource, query: options)
      response.to_hash
    end

  end
end
