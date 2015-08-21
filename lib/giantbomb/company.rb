module GiantBomb
  class Company < Resource
    has_resource 'company', plural: 'companies', id: '3010'

    # http://www.giantbomb.com/api/documentation#toc-0-8
    # http://www.giantbomb.com/api/documentation#toc-0-9
    #
    @@fields = [
      :abbreviation,         # Abbreviation of the company
      :aliases,              # List of aliases the company is known by. A \n (newline) separates each alias.
      :api_detail_url,       # URL pointing to the company detail resource
      :characters,           # Characters the company has used in a game
      :concepts,             # Concepts related to the company
      :date_added,           # Date the company was added to Giant Bomb
      :date_founded,         # Date the company was founded
      :date_last_updated,    # Date the company was last updated on Giant Bomb
      :deck,                 # Brief summary of the company
      :description,          # Description of the company
      :developed_games,      # Games the company has developed
      :developer_releases,   # Releases the company has developed
      :distributor_releases, # Releases the company has distributed
      :id,                   # Unique ID of the company
      :image,                # Main Image of the company
      :location_address,     # Street address of the company
      :location_city,        # City the company resides in
      :location_country,     # Country the company resides in
      :location_state,       # State the company resides in
      :locations,            # Locations related to the company
      :name,                 # Name of the company
      :objects,              # Objects related to the company
      :people,               # People who have worked for the company
      :phone,                # Phone number of the company
      :published_games,      # Games published by the company
      :publisher_releases,   # Releases the company has published
      :site_detail_url,      # URL pointing to the company on Giant Bomb
      :website               # URL to the company website
    ]

    @@fields.each do |field|
      attr_accessor field
    end

  end
end
