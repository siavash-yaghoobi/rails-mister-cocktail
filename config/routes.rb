Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails, only: [:index, :new, :show, :create] do
    resources :doses, only: [:new, :create]
    # this is kind of like saying for which cocktail this dose belongs to
    #we have to know the path for some of them
  end
  resources :doses, only: [:destroy]
  # for destroy, we don't need to know about which cocktail we're referring to so it's separate
end
#we don't need a controller for ingredients because we never have just an ingredients page
# it's only a form that appears on doses, whereas we have pages for the other two
# for doses our page is just like a new and create page
