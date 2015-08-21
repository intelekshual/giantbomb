module GiantBomb
  class Video < Resource
    has_resource 'video', plural: 'videos', id: '2300'

    # http://www.giantbomb.com/api/documentation#toc-0-44
    #
    @@fields = [
      :api_detail_url,  # URL pointing to the video detail resource
      :deck,            # Brief summary of the video
      :id,              # Unique ID of the video
      :image,           # Image associated with the video
      :name,            # Title of the video
      :publish_date,    # Date the video was published on Giant Bomb
      :site_detail_url, # URL pointing to the video on Giant Bomb
      :url,             # The video's filename
      :user             # Author of the video
    ]

    @@fields.each do |field|
      attr_accessor field
    end

  end
end
