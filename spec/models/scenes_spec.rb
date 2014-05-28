require 'spec_helper'

describe Scene do
  before(:each) do
	@attr = { :numero => -1, :lieu => "examplelieu", :periode => "0000-00-00", :chapitre_id => -1, :personne_id => -1 }
  end

  it "devrait creer une nouvelle instance dotee des attributs valides" do
	Scene.create(@attr)
  end

  it "exige un chapitre" do
    bad_guy = Scene.new(@attr.merge(:chapitre_id => ""))
    bad_guy.should_not be_valid
  end

   it "exige un numero" do
    bad_guy = Scene.new(@attr.merge(:numero => ""))
    bad_guy.should_not be_valid
  end
  
  it "exige un lieu" do
    bad_guy = Scene.new(@attr.merge(:lieu => ""))
    bad_guy.should_not be_valid
  end

  it "exige un personnage" do
    bad_guy = Scene.new(@attr.merge(:personne_id => ""))
    bad_guy.should_not be_valid
  end
  
  it "devrait rejeter les nom des lieux trop longs" do
    long_lieu = "a" * 30
    long_lieu_scene = Scene.new(@attr.merge(:titre => long_lieu))
    long_lieu_scene.should_not be_valid
  end

  it "devrait rejeter un numero double" do
    Chapitre.create(@attr)
    scene_with_duplicate_numero = Anecdote.new(@attr)
    scene_with_duplicate_numero.should_not be_valid
  end
end
