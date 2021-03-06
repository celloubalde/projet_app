require 'spec_helper'

describe Anecdote do
  before(:each) do
	@attr = { :chapitre_id => -1 , :theme => "exempletheme", :sujet => "exampleannecdotes" }
  end

  it "devrait creer une nouvelle instance dotee des attributs valides" do
	Anecdote.create(@attr)
  end

  
  it "exige un chapitre" do
    bad_guy = Anecdote.new(@attr.merge(:chapitre_id => ""))
    bad_guy.should_not be_valid
  end

   it "exige un theme" do
    bad_guy = Anecdote.new(@attr.merge(:theme => ""))
    bad_guy.should_not be_valid
  end
  
  it "exige un sujet" do
    bad_guy = Anecdote.new(@attr.merge(:sujet => ""))
    bad_guy.should_not be_valid
  end
  
  it "devrait rejeter les sujets trop longs" do
    long_sujet = "a" * 30
    long_sujet_anecdote = Anecdote.new(@attr.merge(:titre => long_sujet))
    long_sujet_anecdote.should_not be_valid
  end

  it "devrait rejeter un sujet double" do
    Chapitre.create(@attr)
    anecdote_with_duplicate_sujet = Anecdote.new(@attr)
    anecdote_with_duplicate_sujet.should_not be_valid
  end

 
end
