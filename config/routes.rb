Rails.application.routes.draw do
  root to: "verse1#show", as: :verse1
  get 'verse2' => 'verse2#show', as: :verse2
  get 'verse3' => 'verse3#show', as: :verse3
  get 'verse4' => 'verse4#show', as: :verse4
end
