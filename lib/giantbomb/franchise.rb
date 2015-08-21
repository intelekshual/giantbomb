module GiantBomb
  class Franchise < Resource
    has_resource 'franchise', plural: 'franchises', id: '3025'

    # http://www.giantbomb.com/api/documentation#toc-0-12
    # http://www.giantbomb.com/api/documentation#toc-0-13
    #
    @@fields = [
      :aliases,           # List of aliases the franchise is known by. A \n (newline) separates each alias.
      :api_detail_url,    # URL pointing to the franchise detail resource
      :characters,        # Characters related to the franchise
      :concepts,          # Concepts related to the franchise
      :date_added,        # Date the franchise was added to Giant Bomb
      :date_last_updated, # Date the franchise was last updated on Giant Bomb
      :deck,              # Brief summary of the franchise
      :description,       # Description of the franchise
      :games,             # Games related to the franchise
      :id,                # Unique ID of the franchise
      :image,             # Main Image of the franchise
      :locations,         # Locations related to the franchise
      :name,              # Name of the franchise
      :objects,           # Objects related to the franchise
      :people,            # People related to the franchise
      :site_detail_url    # URL pointing to the franchise on Giant Bomb
    ]

    @@fields.each do |field|
      attr_accessor field
    end

  end
end
