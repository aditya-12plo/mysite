class UserMailMailer < ApplicationMailer
#default to: 'nugroho.adty@gmail.com'
#default :from => "me@nugrohoaditya.xyz"  
  def new_message (nama,emailnya,pesan)

@nama = nama
@emailnya = emailnya
@pesan = pesan


headers['X-SMTPAPI'] = '{"category": "Drip Email"}'

    mail(:to => 'nugroho.adty@gmail.com',
     :from => emailnya,
     :subject => "Contact Request From Website"
    )

/
mail(from: emailnya, subject: 'Contact Request From Website')
render "new_message"
/
  end

end
