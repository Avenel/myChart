MyChart::Application.routes.draw do

  devise_for :people

  root :to => 'link#index'

end
