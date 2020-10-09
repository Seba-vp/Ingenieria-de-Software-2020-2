Rails.application.routes.draw do

 
  #admins
  get 'posts/new', to: "posts#new" 
  post 'posts', to: "posts#create"

  get 'posts/index', to: "posts#index"
  get 'posts/:id' , to: "posts#show", as: "post"

  get 'posts/:id/edit', to: "posts#edit", as: "post_edit"
  patch 'posts/:id', to:"posts#update", as: "post_update"

  delete 'posts/:id', to: "posts#delete"

  #admins -> RSPEC DONE 40%
  get 'admins/new', to: "admins#new" 
  post 'admins', to: "admins#create"

  get 'admins/index', to: "admins#index"
  get 'admins/:id' , to: "admins#show", as: "admin"

  get 'admins/:id/edit', to: "admins#edit", as: "admin_edit"
  patch 'admins/:id', to:"admins#update", as: "admin_update"

  delete 'admins/:id', to: "admins#delete"

  #feedbacks
  get 'feedbacks/new', to: "feedbacks#new" 
  post 'feedbacks', to: "feedbacks#create"

  get 'feedbacks/index', to: "feedbacks#index"
  get 'feedbacks/:id', to: "feedbacks#show", as: "feedback"

  get 'feedbacks/:id/edit', to: "feedbacks#edit", as: "feedback_edit"
  patch 'feedbacks/:id', to:"feedbacks#update", as: "feedback_update"

  delete 'feedbacks/:id', to: "feedbacks#delete"

  #services -> RSPEC DONE 40%
  get 'services/new', to: "services#new" 
  post 'services', to: "services#create"

  get 'services/index', to: "services#index"
  get 'services/:id' , to: "services#show", as: "service"
  

  get 'services/:id/edit', to: "services#edit", as: "service_edit"
  patch 'services/:id', to:"services#update", as: "service_update"

  delete 'services/:id', to: "services#delete"

  #parties -> RSPEC DONE 40%
  get 'parties/new', to: "parties#new" 
  post 'parties', to: "parties#create"

  get 'parties/index', to: "parties#index"
  get 'parties/:id', to: "parties#show", as: "party"

  get 'parties/:id/edit', to: "parties#edit", as: "party_edit"
  patch 'parties/:id', to:"parties#update", as: "party_update"

  delete 'parties/:id', to: "parties#delete"

 #Interesteds -> RSPEC DONE 40%
  get 'interesteds/new', to: "interesteds#new" 
  post 'interesteds', to: "interesteds#create"

  get 'interesteds/index', to: "interesteds#index"
  get 'interesteds/:id', to: "interesteds#show", as: "interested"

  get 'interesteds/:id/edit', to: "interesteds#edit", as: "interested_edit"
  patch 'interesteds/:id', to:"interesteds#update", as: "interested_update"

  delete 'interesteds/:id', to: "interesteds#delete"
  
  
  #Users -> RSPEC DONE 40%

  #Create
  get 'users/new', to: "users#new" 
  post 'users', to: "users#create"

  #Read
  get 'users/index', to: "users#index"
  get 'users/:id', to: "users#show", as: "user"

  #Update
  get 'users/:id/edit', to: "users#edit", as: "user_edit"
  patch 'users/:id', to:"users#update", as: "user_update"

  #Delete
  delete 'users/:id', to: "users#delete"
  


  #Comunas -> RSPEC DONE 40%

  #Create
  get 'comunas/new', to: "comunas#new" 
  post "comunas", to: "comunas#create"

  #Read
  get 'comunas/index', to: "comunas#index"
  get 'comunas/:id' , to: "comunas#show", as: "comuna"

  #Update
  get 'comunas/:id/edit', to: "comunas#edit", as: "comuna_edit"
  patch "comunas/:id", to:"comunas#update", as: "comuna_update"

  #Delete

  delete "comunas/:id", to: "comunas#delete"
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#home', as: "home"
end
