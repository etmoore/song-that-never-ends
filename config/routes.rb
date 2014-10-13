Rails.application.routes.draw do
  root to: "verses#show", as: :next_verse
end
