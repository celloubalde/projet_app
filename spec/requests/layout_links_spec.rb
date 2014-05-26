require 'spec_helper'

describe "LayoutLinks" do

  it "devrait trouver une page Accueil a '/'" do
    get '/'
    #response.should have_selector('title', :content => "Accueil")
  end

  

  it "should have an A Propos page at '/about'" do
    get '/about'
    #response.should have_selector('title', :content => "A Propos")
  end

  
end

