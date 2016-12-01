class UserMailMailer < ApplicationMailer


  def new_message (nama,emailnya,pesan)

@nama = nama
@emailnya = emailnya
@pesan = pesan

#mail from: %("#{nama}" <#{emailnya}>), to: 'nugroho.adty@gmail.com', subject: "Message from #{nama}"

mail(from: emailnya,to: 'nugroho.adty@gmail.com', :subject => "Contact Request From Website #{nama}")
end


end
