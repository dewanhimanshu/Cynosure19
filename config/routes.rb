Rails.application.routes.draw do

  get 'hackathon/register'
  root 'home#index'
  get 'home/contact'
  get 'home/form'
  post 'home/submit'
  get 'home/team'

  get 'home/newform'


  #bug-events
  get 'bugevent/index'
  get 'bugevent/link'
  get 'bugevent/test'
  get 'bugevent/getlikes'

  get 'users/event2'
  
  post 'users/complete2'

  get 'like/increase'

  post 'users/complete1'

  post 'users/complete3'
  get 'users/event3'
  get 'like/mafia'


 post 'home/submitit'

  post 'hackathon/submit'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
