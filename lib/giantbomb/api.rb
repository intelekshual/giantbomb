module GiantBomb
  module Api
    include HTTParty

    base_uri 'http://www.giantbomb.com/api/'

    def self.config
      @@config
    end

    def self.key(api_key)
      @@config = {
        api_key: api_key,
        format: 'json'
      }
    end
  end
end
