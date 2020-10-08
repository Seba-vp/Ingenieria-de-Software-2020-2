Rails.application.routes.draw do


  #admins
  get 'posts/new', to: "posts#new" 
  post 'posts', to: "posts#create"

  get 'posts/index', to: "posts#index"
  get 'posts/:id' , to: "posts#show", as: "post"

  get 'posts/:id/edit', to: "posts#edit", as: "post_edit"
  patch 'posts/:id', to:"posts#update", as: "post_update"

  delete 'posts/:id', to: "posts#delete"

  #admins
  get 'admins/new', to: "admins#new" 
  post 'admins', to: "admins#create"

  get 'admins/index', to: "admins#index"
  get 'admins/:id' , to: "admins#show", as: "admin"

  get 'admins/:id/edit', to: "admins#edit", as: "admin_edit"
  patch 'admins/:id', to:"admins#update", as: "admin_update"

  delete 'admins/:id', to: "admins#delete"

  #feedbacks
  get 'service_feedbacks/new', to: "service_feedbacks#new" 
  post 'service_feedbacks', to: "service_feedbacks#create"

  get 'service_feedbacks/index', to: "service_feedbacks#index"
  get 'service_feedbacks/:id', to: "service_feedbacks#show", as: "service_feedback"

  get 'service_feedbacks/:id/edit', to: "service_feedbacks#edit", as: "service_feedback_edit"
  patch 'service_feedbacks/:id', to:"service_feedbacks#update", as: "service_feedback_update"

  delete 'service_feedbacks/:id', to: "service_feedbacks#delete"

  #services
  get 'services/new', to: "services#new" 
  post 'services', to: "services#create"

  get 'services/index', to: "services#index"
  get 'services/:id' , to: "services#show", as: "service"
  

  get 'services/:id/edit', to: "services#edit", as: "service_edit"
  patch 'services/:id', to:"services#update", as: "service_update"

  delete 'services/:id', to: "services#delete"

  #parties
  get 'parties/new', to: "parties#new" 
  post 'parties/create', to: "parties#create"

  get 'parties/index', to: "parties#index"
  get 'parties/show', to: "parties#show", as: "partie"

  get 'parties/edit', to: "parties#edit", as: "partie_edit"
  patch 'parties/update', to:"parties#update", as: "partie_update"

  delete 'parties/delete', to: "parties#delete"

 #Interestes
  get 'interesteds/new', to: "interesteds#new" 
  post 'interesteds/create', to: "interesteds#create"

  get 'interesteds/index', to: "interesteds#index"
  get 'interesteds/show', to: "interesteds#show", as: "interested"

  get 'interesteds/edit', to: "interesteds#edit", as: "interested_edit"
  patch 'interesteds/update', to:"interesteds#update", as: "interested_update"

  delete 'interesteds/delete', to: "interesteds#delete"
  
  
  #Users

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
  


  #Comunas

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
  root to: 'pages#home'
end
