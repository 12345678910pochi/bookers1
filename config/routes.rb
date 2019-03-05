Rails.application.routes.draw do
	root to: 'books#index'

	resources :books

	get "deletes" => "books#deletes"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
