Rails.application.routes.draw do
#  get 'me/index'
# get 'me/myresume' => 'me#mycv'


get '/me/myresume', to: 'me#mycv', as: 'cv'
#post 'contact', to: 'me#contact_website'
match '/contact', to: 'me#contact_website', via: 'post'


 resources :me


  root 'me#index'


end
