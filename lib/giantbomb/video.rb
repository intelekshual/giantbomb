module GiantBomb
  class Video < Resource
    has_resource 'video', :plural => 'videos', :id => '2300'

    # http://api.giantbomb.com/documentation/#video
    @@fields = [
      :api_detail_url, # URL pointing to the video detail resource
      :deck, # Brief summary of the video
      :id, # Unique ID of the video
      :image, # Image associated with the video
      :name, # Title of the video
      :publish_date, # Date the video was published on Giant Bomb
      :site_detail_url, # URL pointing to the video on Giant Bomb
      :url, # The video's filename
      :user, # Author of the video
      :video_type # The video's category
    ]
    
    @@fields.each do |field|
      attr_accessor field
    end
    
  end
end
