module ApplicationHelper
  def avatar_url(user)
    if user.image
      return "http://graph.facebook.com/#{user.uid}/picture?type=large"
    end

    gravatar_id = Digest::MD5.hexdigest(user.email).downcase
    "https://www.gravatar.com/avatar/#{gravatar_id}.jpg?d=identical&s=150"
  end
end
