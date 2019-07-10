Rails.application.routes.draw do

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
