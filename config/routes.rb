Rails.application.routes.draw do

  get    '/login'   => 'login#index'
  post   '/login'   => 'login#auth'
end