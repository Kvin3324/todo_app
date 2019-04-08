Rails.application.routes.draw do
  #root 'pages#home'
  get "tasks" => "tasks#index"
  get "tasks/new" => "tasks#new"
  get "tasks/:id" => "tasks#show", as: :task
  get "tasks/:id/edit" => "tasks#edit", as: :edit_task
  patch 'tasks/:id', to: 'tasks#update'
  post "tasks" => "tasks#create"
  delete "tasks/:id" => "tasks#destroy"
end
