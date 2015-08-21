module GiantBomb
  class Person < Resource
    has_resource 'person', plural: 'people', id: '3040'

    # http://www.giantbomb.com/api/documentation#toc-0-24
    # http://www.giantbomb.com/api/documentation#toc-0-25
    #
    @@fields = [
      :aliases,             # List of aliases the person is known by. A \n (newline) separates each alias.
      :api_detail_url,      # URL pointing to the person detail resource
      :birth_date,          # Date the person was born
      :characters,          # Characters related to the person
      :companies,           # Companies the person has worked with
      :concepts,            # Concepts related to the person
      :country,             # Country the person resides in
      :date_added,          # Date the person was added to Giant Bomb
      :date_last_updated,   # Date the person was last updated on Giant Bomb
      :death_date,          # Date the person died
      :deck,                # Brief summary of the person
      :description,         # Description of the person
      :first_credited_game, # Game the person was first credited in
      :franchises,          # Franchises the person has worked on
      :games,               # Games the person has worked on
      :gender,              # Gender of the person. Available options are: Male, Female, Other
      :hometown,            # City or town the person resides in
      :id,                  # Unique ID of the person
      :image,               # Main Image of the person
      :locations,           # Locations related to the person
      :name,                # Name of the person
      :objects,             # Objects related to the person
      :people,              # Other people related to the person
      :platforms,           # Platforms related to the person
      :site_detail_url      # URL pointing to the person on Giant Bomb
    ]

    @@fields.each do |field|
      attr_accessor field
    end

  end
end
