Rails.application.routes.draw do
  root to: 'tasks#index'

  post "tasks" => "tasks#create", as: :tasks
end
