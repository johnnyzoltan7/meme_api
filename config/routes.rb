Rails.application.routes.draw do
  get '/generate' => 'memes#generate'

  get '/save'	=> 'memes#save'

  get '/all'	=> 'memes#all'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
