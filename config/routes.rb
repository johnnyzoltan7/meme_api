Rails.application.routes.draw do
  get 'memes/generate' => 'memes#generate'

  get 'memes/save'	=> 'memes#save'

  get 'meme/returnAll'	=> 'memes#returnAll'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
