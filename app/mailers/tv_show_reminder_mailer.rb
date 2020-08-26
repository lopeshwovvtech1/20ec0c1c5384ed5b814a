class TvShowReminderMailer < ApplicationMailer
  default :from => "durugkarlopesh@gmail.com"

  def reminder_email(user, show)
    @user = user
    mail(:to => user.email, :subject => "#{show.name} is comming at #{show.show_time}")
  end
end
