SE::Application.routes.draw do


  unless Rails.application.config.consider_all_requests_local
    match '*not_found', to: 'errors#error_404'
  end
  root :to => 'pages#home'
  match 'utilidad', :to => 'pages#utilidad'
  match 'indicador', :to => 'pages#antecedentes'
  match 'aliados', :to => 'pages#participantes'
  match 'acerca', :to => 'pages#acerca'
  match 'administradores', :to => 'pages#administradores'
  match 'fuentes', :to => 'pages#fuentes'
  get "reportes/ranking"
  post "reportes/new"
  match "download/:id", :to => 'reportes#download'

  resources :reportes
  resources :users, :only => [:show, :index, :edit, :update]
  resources :sessions, :only => [:new, :create, :destroy]

  namespace :admin do
    resources :users
  end

  match '/signin', :to => 'sessions#new'
  match '/signout', :to => 'sessions#destroy'
  match "remember", :to => 'sessions#remember'
  match "ruperto", :to => 'sessions#ruperto'





end
