Rails.application.routes.draw do
  

  resources :performance_evaluations
  resources :employees
  
  resources :performance_commitments do
    resources :comments
  end


end
