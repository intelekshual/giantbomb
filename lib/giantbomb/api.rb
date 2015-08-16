module GiantBomb
  module Api
    include HTTParty
    base_uri 'http://www.giantbomb.com/api/'

    def self.config
      # @@config
    end

    def self.key(api_key = '4ba6898f41ea373081648fd48e42872a2cbb7381')
      @@config = { :api_key => api_key, :format => 'json' }
    end
  end
end
