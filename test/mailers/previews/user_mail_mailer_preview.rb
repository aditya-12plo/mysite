# Preview all emails at http://localhost:3000/rails/mailers/user_mail_mailer
class UserMailMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/user_mail_mailer/new_message
  def new_message 

    UserMailMailer.new_message
  end

end
