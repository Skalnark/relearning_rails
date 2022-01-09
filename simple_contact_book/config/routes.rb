Rails.application.routes.draw do
  post 'contact_list/create'
  put 'contact_list/update'
  delete 'contact_list/destroy'
  get 'contact_list/show'
  get 'contact_list/index'

  post 'contact/create'
  put 'contact/update'
  delete 'contact/destroy'
  get 'contact/show'
  get 'contact/index'
end
