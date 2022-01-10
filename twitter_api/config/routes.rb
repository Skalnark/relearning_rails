Rails.application.routes.draw do
  post 'user/create'
  get 'user/show'
  get 'user/index'
  put 'user/update'
  delete 'user/destroy'

  post 'twit/create'
  get 'twit/show'
  get 'twit/timeline'
  get 'twit/index'
  put 'twit/update'
  delete 'twit/destroy'

  post 'follower/follow'
  delete 'follower/unfollow'
  get 'follower/followers'
  get 'follower/following'

end
