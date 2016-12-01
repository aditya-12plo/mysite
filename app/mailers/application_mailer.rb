class ApplicationMailer < ActionMailer::Base
  default from: "'Nugroho Aditya' <me@nugrohoaditya.xyz>"
  #layout 'mailer'

  def new_message (nama,email,pesan)

@nama = nama
@email = email
@pesan = pesan

 mail(to: 'nugroho.adty@gmail.com' , subject: "Your Webaite Message from #{nama}")
 
  end

end
