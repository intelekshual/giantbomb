module GiantBomb
  class GameObject < Resource
    has_resource 'object', plural: 'objects', id: '3055'

    # http://www.giantbomb.com/api/documentation#toc-0-22
    # http://www.giantbomb.com/api/documentation#toc-0-23
    #
    @@fields = [
      :aliases,                # List of aliases the object is known by. A \n (newline) separates each alias.
      :api_detail_url,         # URL pointing to the object detail resource
      :characters,             # Characters related to the object
      :companies,              # Companies related to the object
      :concepts,               # Concepts related to the object
      :date_added,             # Date the object was added to Giant Bomb
      :date_last_updated,      # Date the object was last updated on Giant Bomb
      :deck,                   # Brief summary of the object
      :description,            # Description of the object
      :first_appeared_in_game, # Game the object first appeared in
      :franchises,             # Franchises related to the object
      :games,                  # Games related to the object
      :id,                     # Unique ID of the object
      :image,                  # Main Image of the object
      :locations,              # Locations related to the object
      :name,                   # Name of the object
      :objects,                # Other objects related to the object
      :people,                 # People related to the object
      :platforms,              # Platforms related to the object
      :site_detail_url         # URL pointing to the object on Giant Bomb
    ]

    @@fields.each do |field|
      attr_accessor field
    end

  end
end
