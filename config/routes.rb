Rails.application.routes.draw do
  root to: "verses#verse1", as: :verse1
  get 'verse2' => 'verses#verse2', as: :verse2
  get 'verse3' => 'verses#verse3', as: :verse3
  get 'verse4' => 'verses#verse4', as: :verse4
end
