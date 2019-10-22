Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :tasks

  # # These are routes for Task model CRUD actions
  # get "/tasks", to: "tasks#index", as: :tasks       # READ all

  # get "/tasks/new", to: "tasks#new", as: :new_task  # CREATE 1st step: gather info through a form
  # post "/tasks", to: "tasks#create"                 # CREATE 2nd step: add to Active Records

  # get "/tasks/:id", to: "tasks#show", as: :task     # READ one

  # get "/tasks/:id/edit", to: "tasks#edit", as: :edit_task   # UPDATE 1st step: gather info through a form
  # patch "/tasks/:id", to: "tasks#update"                     # UPDATE 2nd step: update in Active Records

  # delete "/tasks/:id", to: "tasks#destroy"    # DELETE a task from Active Records
end
