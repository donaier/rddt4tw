class Post

  class << self
    def displayable_photo post
      # direct image
      if post[:data][:url].match(/\.jpg|\.png|\.gif/)
        post[:data][:url]
      # imgur non-direct
      elsif post[:data][:domain].match(/imgur.com/)
        # no album
        unless post[:data][:url].match(/\/a\/|\/gallery\//)
          "#{post[:data][:url]}.jpg"
        end
      else
        nil
      end
    end

    def displayable_photo? post
      displayable_photo post
    end
  end
end
