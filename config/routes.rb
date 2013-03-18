# -*- encoding : utf-8 -*-
# Author - Igor Portela - igorportela.com  | Copyright(c) 2012. All rights reserved.
FractalProject::Application.routes.draw do
  
  get "panel/index"

  mount Ckeditor::Engine => '/ckeditor'

  devise_for :admins,
             :path => 'admin',
             :path_names => {:sign_in => 'login', :sign_out => 'sair'} do
    match '/admin/salvar' => 'members/registrations#update', :as => :update_admin_registration, :method => :put
    match '/admin/editar-perfil' => 'members/registrations#edit', :as => :edit_admin_registration
    match '/admin/recuperar-senha' => 'devise/passwords#new', :as => :new_admin_password
    match '/admin/nova-senha' => 'devise/passwords#edit', :as => :edit_admin_password
  end

  namespace 'admin', :path_names => {:new => 'cadastrar', :edit => 'editar'} do
    resources :admins
    resources :subscribers# if Configuration.moludes.subscribers
    resources :categories
    resources :clients# if Configuration.moludes.clients
    resources :testimonials# if Configuration.moludes.testimonials
    resources :documents# if Configuration.moludes.documents
    resources :polls# if Configuration.moludes.polls
    resources :events# if Configuration.modules.events
    resources :employees# if Configuration.modules.employees
    resources :galleries do
      resources :photos
    end if Configuration.modules.galleries
    resources :links# if Configuration.modules.links
    resources :news# if Configuration.modules.news
    resources :pages# if Configuration.modules.pages
    resources :products# if Configuration.modules.products
    resources :projects# if Configuration.modules.projects
    resources :services# if Configuration.modules.services
    resources :videos# if Configuration.modules.videos
  end

  namespace 'site', :path => '' do
    resources :subscribers, :only => :create# if Configuration.moludes.subscribers
    resources :clients, :only => [:index, :show]# if Configuration.moludes.clients
    resources :contact, :only => [:new, :create], :path_names => { :new => '' }
    resources :testimonials, :only => [:index, :show]# if Configuration.moludes.testimonials
    resources :documents, :only => [:index, :show]# if Configuration.moludes.documents
    resources :polls, :only => [:index, :show] do 
      resources :votes, :only => :create
    end# if Configuration.moludes.polls
    resources :events, :only => [:index, :show]#  if Configuration.modules.events
    resources :employees, :only => [:index, :show]# if Configuration.modules.employees
    resources :galleries, :only => [:index, :show]  do
      resources :photos, :only => [:index, :show] 
    end if Configuration.modules.galleries
    resources :links, :only => [:index, :show]# if Configuration.modules.links
    resources :news, :only => [:index, :show]# if Configuration.modules.news
    resources :pages, :only => [:index, :show]# if Configuration.modules.pages
    resources :products, :only => [:index, :show] if Configuration.modules.products
    resources :projects, :only => [:index, :show] if Configuration.modules.projects
    resources :services, :only => [:index, :show] if Configuration.modules.services
    resources :videos, :only => [:index, :show] if Configuration.modules.videos
  end

  match '/admin' => 'admin/panel#index', :as => :admin
  root :to => 'site/panel#index'
end
