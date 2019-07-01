Rails.application.routes.draw do

  # login
  get    '/:company_id/login'   => 'login#index'
  post   '/:company_id/login'   => 'login#auth'

  # home
  get    '/:company_id/home'    => 'home#index'
end