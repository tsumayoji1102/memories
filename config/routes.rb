Rails.application.routes.draw do

  get  ''                => 'home#top'
  get  'login'           => 'user#login'
  post 'login/check'     =>'user#loginCheck'
  get  'signup'          => 'user#signup'
  post 'signup/register' => 'user#register'
  get  'index'           => 'index#post'
  post 'index/post'      => 'index#asyncPost'
  get  'logout'          => 'user#logout'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
