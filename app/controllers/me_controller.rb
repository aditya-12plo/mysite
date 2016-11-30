class MeController < ApplicationController
  
  def index
@title = 'Nugroho Aditya'
@keyword = 'nugroho aditya'
@desc = 'nugrohoaditya.xyz, website dari nugroho aditya. Ini merupakan salah satu dari portofolio yang saya buat dengan menggunakan ruby on rails.';



  end






def mycv
	render :myresume
end

  def contact_website ()

/
@hasil = params[:nama] ,params[:email], params[:pesan]
if @hasil.blank?
 @message = "An error occurred while delivering this message."
render action:"index"
else
	UserMailMailer.new_message(@hasil).deliver

  @message = "Your messages has been sent."
render action:"index"
#redirect_to root_path()
end
/
@nama = params[:nama] 
@email = params[:email]
@pesan = params[:pesan]

#render json: @hasil

if @nama.blank? or @email.blank? or @pesan.blank?
 @message = "An error occurred while delivering this message."
#render action:"index"
redirect_to root_path
else
	UserMailMailer.new_message(@nama,@email,@pesan).deliver

  @message = "Your messages has been sent."
render action:"index"
redirect_to root_path
end


  end



end



