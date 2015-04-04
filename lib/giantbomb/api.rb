module GiantBomb
  module Api
    include HTTParty
    base_uri 'http://www.giantbomb.com/api/'

    def self.config
      @@config
    end

    def self.key(api_key)
      #@@config = { :api_key => api_key, :format => 'json' }
      @@config = { :api_key => "d3290640372f264c052d94299f176d41cb4ef8e3", :format => 'json' }
    end
  end
end
