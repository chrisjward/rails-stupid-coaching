Rails.application.routes.draw do
  # get 'questions_controller/ask'
  # get 'questions_controller/answer'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'ask', to: 'questions#ask', as: :ask
  get 'answer', to: 'questions#answer', as: :answer

end

