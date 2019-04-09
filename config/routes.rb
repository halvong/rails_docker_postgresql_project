Rails.application.routes.draw do
  root 'demo#index'

  #match route
  get 'demo/index'
  get 'demo/hello'

  #default route
  #get ':controller(/:action(/:id))'
end
