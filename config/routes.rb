Rails.application.routes.draw do
  root to: 'welcome#index'

  api_version module: 'V1',
              header: { name: 'Accept', value: 'application/vnd.profarmergrain.com.au; version=1' },
              default: true do
    resources :authentication, only: :create
  end
end
