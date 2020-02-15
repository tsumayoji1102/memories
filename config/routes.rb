Rails.application.routes.draw do

  get '' => 'home#top'
  get 'login' => 'user#login'
  post 'login/check' =>'user#loginCheck'
  post 'signup/register' => 'user#register'
  get 'signup'=> 'user#signup'
  get 'index' => 'index#post'
  post 'index/post' => 'index#ajaxPost'
  get 'logout' => 'user#logout'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
