module ApplicationHelper
  def show_time(datetime)
  	datetime.strftime("%I:%M %p")
  end

  def get_channel_name(channel_id)
  	Channel.find(channel_id).name
  end

  def add_user_favorite_channel(show_id)
    UserFavoriteShow.where(user_id: current_user.id, show_id: show_id)	
  end	
end
