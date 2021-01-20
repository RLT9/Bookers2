Rails.application.routes.draw do
  root to: 'homes#top'
  devise_for :users, controllers: {
  sessions: 'users/sessions',
  registrations: 'users/registrations'
}
  
   resources :post_books, only: [:new, :create, :index, :show, :destroy, :edit]
   resources :users, only: [:index, :show, :update, :edit]
   get 'home/about' => 'homes#about',as: 'about'
end