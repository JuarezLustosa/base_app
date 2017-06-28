module Gravatar
	extend ActiveSupport::Concern
	
  def avatar_url(options = { size: 80 })
    size = options[:size]

    hash = Digest::MD5.hexdigest(email)
    "http://www.gravatar.com/avatar/#{hash}?s=#{size}"
  end
end