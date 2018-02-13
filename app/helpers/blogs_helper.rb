module BlogsHelper
  def gravatar_helper user
    image_tag "https://www.gravatar.com/avatar/#{Digest::MD5.hexdigest(user.email)}", width: 40
  end

  def alerts
    alert = (flash[:alert] || flash[:error] || flash[:notice])

    if alert
      alert_generator alert
    end

  end

  def alert_generator msg
    js add_gritter(msg, title: "Ethan Streadbeck Portfolio", sticky: false)
  end
end
