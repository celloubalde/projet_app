ProjetApp::Application.routes.draw do
  get 'home' => 'pages#home' , as: 'home'
  get 'about' => 'pages#about' , as: 'about'
  get 'contact' => 'pages#contact' , as: 'contact'
  get 'aide' => 'pages#aide' , as: 'aide'
 
  
  resources :anecdotes

  resources :personnes

  resources :scenes

  resources :chapitres do
	get 'delete' => 'chapitre#delete' , as: 'delete'
  end
	
 
  
  root to: 'pages#home'
  
  
end
