module GiantBomb
  class Platform < Resource
    has_resource 'platform', plural: 'platforms', id: '3045'

    # http://www.giantbomb.com/api/documentation#toc-0-26
    # http://www.giantbomb.com/api/documentation#toc-0-27
    #
    @@fields = [
      :abbreviation,      # Abbreviation of the platform.
      :api_detail_url,    # URL pointing to the platform detail resource
      :company,           # Company that created the platform.
      :date_added,        # Date the platform was added to Giant Bomb
      :date_last_updated, # Date the platform was last updated on Giant Bomb
      :deck,              # Brief summary of the platform
      :description,       # Description of the platform
      :id,                # Unique ID of the platform
      :image,             # Main Image of the platform
      :install_base,      # Approximate number of sold hardware units.
      :name,              # Name of the platform
      :online_support,    # Flag indicating whether the platform has online capabilities.
      :original_price,    # Initial price point of the platform.
      :release_date,      # Date of the platform
      :site_detail_url,   # URL pointing to the platform on Giant Bomb.
    ]

    @@fields.each do |field|
      attr_accessor field
    end
  end
end
