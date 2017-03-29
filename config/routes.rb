Rails.application.routes.draw do
  get '/generate' => 'memes#generate'

  get '/returnLast'	=> 'memes#returnLast'

  get '/returnAll'	=> 'memes#returnAll'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
