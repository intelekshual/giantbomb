module GiantBomb
  class Character < Resource
    has_resource 'character', plural: 'characters', id: '3005'

    # http://www.giantbomb.com/api/documentation#toc-0-4
    # http://www.giantbomb.com/api/documentation#toc-0-5
    #
    @@fields = [
      :aliases,                # List of aliases that the character is known by. A \n (newline) separates each alias.
      :api_detail_url,         # URL pointing to the character detail resource
      :birthday,               # Birthday of the character
      :companies,              # Companies that have used the character in a game
      :concepts,               # Concepts related to the character
      :date_added,             # Date the character was added to Giant Bomb
      :date_last_updated,      # Date the character was last updated on Giant Bomb
      :deck,                   # Brief summary of the character
      :description,            # Description of the character
      :enemies,                # Enemies of the character
      :first_appeared_in_game, # Game that the character first appeared in
      :franchises,             # Franchises the character has appeared in
      :friends,                # Friends of the character
      :games,                  # Games the character has appeared in
      :gender,                 # Gender of the character. Available options are: Male, Female, Other
      :id,                     # Unique ID of the character
      :image,                  # Main Image of the character
      :last_name,              # Last name of the character
      :locations,              # Locations related to the character
      :name,                   # Name of the character
      :objects,                # Objects related to the character
      :people,                 # People who have worked with the character
      :platforms,              # Platforms having a game the character has appeared in
      :real_name,              # Real name of the character
      :site_detail_url         # URL pointing to the character on Giant Bomb
    ]

    @@fields.each do |field|
      attr_accessor field
    end
  end
end
