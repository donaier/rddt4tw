class Post

  class << self
    def has_image? post
      (is_imgur?(post) && post[:data][:url].match(/(?!\/a\/|\/gallery\/)/)) || post[:data][:url].match(/\.jpg|\.png|\.gif/)
    end

    def image_link post
      if is_imgur?(post)
        imgur_direct_link(post)
      else
        post[:data][:url]
      end
    end

    def is_imgur? post
      post[:data][:domain].match(/imgur.com/)
    end

    def imgur_direct_link post
      if post[:data][:url].match(/\.jpg|\.png|\.gif/)
        post[:data][:url]
      elsif post[:data][:url].match(/\/a\/|\/gallery\//)
        # album
        'https://i.imgur.com/nSnN1AX.jpg'
      else
        "#{post[:data][:url]}.jpg"
      end
    end
  end
end
