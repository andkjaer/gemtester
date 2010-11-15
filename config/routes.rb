Gemtester::Application.routes.draw do
  match 'categories/sort' => 'categories#sort'
  resources :categories
end
