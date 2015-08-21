module GiantBomb
  class Game < Resource
    has_resource 'game', plural: 'games', id: '3030'

    # http://www.giantbomb.com/api/documentation#toc-0-14
    # http://www.giantbomb.com/api/documentation#toc-0-15
    #
    @@fields = [
      :aliases,                     # List of aliases the game is known by. A \n (newline) separates each alias.
      :api_detail_url,              # URL pointing to the game detail resource
      :characters,                  # Characters related to the game
      :concepts,                    # Concepts related to the game
      :date_added,                  # Date the game was added to Giant Bomb
      :date_last_updated,           # Date the game was last updated on Giant Bomb
      :deck,                        # Brief summary of the game
      :description,                 # Description of the game
      :developers,                  # Companies that developed the game
      :expected_release_day,        # Expected day the game will be released in. The day is represented numerically.
      :expected_release_month,      # Expected month the game will be released in. The month is represented numerically.
      :expected_release_quarter,    # Expected quarter game will be released in. The quarter is represented numerically, where 1 = Q1, 2 = Q2, 3 = Q3, and 4 = Q4.
      :expected_release_year,       # Expected year the game will be released in.
      :first_appearance_characters, # Characters that first appeared in the game
      :first_appearance_concepts,   # Concepts that first appeared in the game
      :first_appearance_locations,  # Locations that first appeared in the game
      :first_appearance_objects,    # Objects that first appeared in the game
      :first_appearance_people,     # People that were first credited in the game
      :franchises,                  # Franchises the game is a part of
      :genres,                      # Genres that encompass the game
      :id,                          # Unique ID of the game
      :image,                       # Main Image of the game
      :images,                      # List of images associated to the game
      :killed_characters,           # Characters killed in the game
      :locations,                   # Locations related to the game
      :name,                        # Name of the game
      :number_of_user_reviews,      # Number of user reviews of the game on Giant Bomb
      :objects,                     # Objects related to the game
      :original_game_rating,        # Rating of the first release of the game
      :original_release_date,       # Date the game was first released
      :people,                      # People related to the game
      :platforms,                   # Platforms the game can be played on
      :publishers,                  # Companies that published the game
      :releases,                    # Releases of the game
      :reviews,                     # Staff reviews of the game
      :similar_games,               # Other games that are similar to the game
      :site_detail_url,             # URL pointing to the game on Giant Bomb
      :themes,                      # Themes that encompass the game
      :videos                       # Videos associated to the game
    ]

    @@fields.each do |field|
      attr_accessor field
    end

  end
end
