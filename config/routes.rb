Rails.application.routes.draw do

  resources :conagros
  match '*all', controller: 'application', action: 'cors_preflight_check', via: [:options]

  namespace :calendario do
    resources :eventos do
      collection do
        get 'mis_eventos'
        get 'login'
      end
    end
  end

  namespace :naturalista do
    resources :estadisticas do
      collection do
        get 'proyectos'
      end
    end
  end

  namespace :juridico do
    root 'instrumentos#index' 
    resources :instrumentos
  end

end
