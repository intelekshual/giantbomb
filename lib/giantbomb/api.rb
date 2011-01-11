module GiantBomb
  class Api
    include HTTParty
    base_uri 'api.giantbomb.com'
    
    def self.key(api_key)
      @@config = { :api_key => api_key, :format => 'json' }
    end
    
  end
end