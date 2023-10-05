Rails.application.routes.draw do
  
  resoucrces :registrations, only: [:create]
  resoucrces :sessions, only:[:create]
  get :logged_in, to: 'sessions#logout'
  delete :log_out, to: 'sessions#log_out'
end
