module GiantBomb
  class Location < Resource
    has_resource 'location', plural: 'locations', id: '3035'

    # http://www.giantbomb.com/api/documentation#toc-0-20
    # http://www.giantbomb.com/api/documentation#toc-0-21
    #
    @@fields = [
      :aliases,                # List of aliases the location is known by. A \n (newline) separates each alias.
      :api_detail_url,         # URL pointing to the location detail resource
      :date_added,             # Date the location was added to Giant Bomb
      :date_last_updated,      # Date the location was last updated on Giant Bomb
      :deck,                   # Brief summary of the location
      :description,            # Description of the location
      :first_appeared_in_game, # Game the location first appeared in
      :id,                     # Unique ID of the location
      :image,                  # Main Image of the location
      :name,                   # Name of the location
      :site_detail_url         # URL pointing to the location on Giant Bomb
    ]

    @@fields.each do |field|
      attr_accessor field
    end

  end
end
