TagsService::Application.routes.draw do
  mount SwaggerYard::Engine, at: "/swagger" unless Rails.env.test?
  
  scope 'api' do
    scope 'v:version' do
      resources :tags, except: [:new, :edit] do
        resources :tagged_items, except: [:new, :edit, :update]
      end
    end
  end
end
