Rails.application.routes.draw do
  root 'cars#home'

  get '/car_register' => 'cars#car_register'

  get '/cars_accelerate' => 'cars#accelerate'

  get '/cars_brake' => 'cars#brake'

  get 'cars/lights' => 'cars#lights'

  get 'cars/parking' => 'cars#parking_brake_switch'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
