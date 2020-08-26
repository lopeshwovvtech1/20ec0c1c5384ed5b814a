namespace :every_minute do
  task :reminder_show_starter => :environment do
  	@time = Time.now.strftime("%I:%M")
  	@show_ids = Show.where("show_time = ? ", "13:29").pluck(:id)
  	@user_favorite_show = UserFavoriteShow.where(show_id: @show_ids)
  	@user_favorite_show.each do |user_favorite_show|
  	  	
  	end	
  end
end