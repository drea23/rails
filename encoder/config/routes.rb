Rails.application.routes.draw do
  get 'encode' => "crypt#encode"

  get 'decode' => "crypt#decode"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
