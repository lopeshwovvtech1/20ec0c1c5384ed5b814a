namespace :every_minute do
  task :reminder_show_starter => :environment do
  	@time = Time.now + ( 30 * 60 )
  	puts @time.strftime("%I:%M") 
  	#@show_ids = Show.where("show_time = ? ", @time.strftime("%I:%M")).pluck(:id)
  	@show_ids = Show.where("show_time = ? ", "13:29").pluck(:id)
  	if @show_ids.present?
  	  @user_favorite_show = UserFavoriteShow.where(show_id: @show_ids)
  	  @user_favorite_show.each do |user_favorite_show|
  	    TvShowReminderMailer.reminder_email(user_favorite_show.user, user_favorite_show.show).deliver	
  	  end
  	end	
  end
end