Rails.application.routes.draw do
  get "/calender", to: "homes#calendar", defaults: { format: :json }
  root to: "homes#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
