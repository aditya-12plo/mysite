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

@nama = params[:nama] 
@email = params[:email]
@pesan = params[:pesan]

#render json: @hasil

if @nama.blank? or @email.blank? or @pesan.blank?

  flash[:notice] = 'An error occurred while delivering this message.'
redirect_to root_path
else
	UserMailMailer.new_message(@nama,@email,@pesan).deliver

  flash[:notice] = 'Your message has been sent.'
redirect_to root_path

end


  end


end



