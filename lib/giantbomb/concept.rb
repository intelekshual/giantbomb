module GiantBomb
  class Concept < Resource
    has_resource 'concept', plural: 'concepts', id: '3015'

    # http://www.giantbomb.com/api/documentation#toc-0-10
    # http://www.giantbomb.com/api/documentation#toc-0-11
    #
    @@fields = [
      :aliases,                     # List of aliases the concept is known by. A \n (newline) separates each alias.
      :api_detail_url,              # URL pointing to the concept detail resource
      :characters,                  # Characters related to the concept
      :companies,                   # Companies related to the concept
      :concepts,                    # Other concepts related to the concept
      :date_added,                  # Date the concept was added to Giant Bomb
      :date_last_updated,           # Date the concept was last updated on Giant Bomb
      :deck,                        # Brief summary of the concept
      :description,                 # Description of the concept
      :first_appeared_in_franchise, # Franchise that the concept first appeared in
      :first_appeared_in_game,      # Game that the concept first appeared in
      :franchises,                  # Franchises related to the concept
      :games,                       # Games related to the concept
      :id,                          # Unique ID of the concept
      :image,                       # Main Image of the concept
      :locations,                   # Locations related to the concept
      :name,                        # Name of the concept
      :objects,                     # Objects related to the concept
      :people,                      # People related to the concept
      :platforms,                   # Platforms related to the concept
      :related_concepts,            # Other concepts related to the concept
      :site_detail_url              # URL pointing to the concept on Giant Bomb
    ]

    @@fields.each do |field|
      attr_accessor field
    end

  end
end
