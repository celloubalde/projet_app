require 'spec_helper'

describe Chapitre do
  before(:each) do
	@attr = { :numero => -1, :titre => "examplechapitre" }
  end

  it "devrait creer une nouvelle instance dotee des attributs valides" do
	Chapitre.create(@attr)
  end

  it "exige un numero" do
    bad_guy = Chapitre.new(@attr.merge(:numero => ""))
    bad_guy.should_not be_valid
  end

   it "exige un titre" do
    bad_guy = Chapitre.new(@attr.merge(:titre => ""))
    bad_guy.should_not be_valid
  end
  
  it "devrait rejeter les titre trop longs" do
    long_titre = "a" * 30
    long_titre_chapitre = Chapitre.new(@attr.merge(:titre => long_titre))
    long_titre_chapitre.should_not be_valid
  end

  it "devrait rejeter un titre double" do
    Chapitre.create(@attr)
    chapitre_with_duplicate_titre = Chapitre.new(@attr)
    chapitre_with_duplicate_titre.should_not be_valid
  end

  it "devrait rejeter un numero double" do
    Chapitre.create(@attr)
    chapitre_with_duplicate_numero = Chapitre.new(@attr)
    chapitre_with_duplicate_numero.should_not be_valid
  end

  
  
end
