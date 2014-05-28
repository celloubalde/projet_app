require 'spec_helper'

describe Personne do
  before(:each) do
	@attr = { :numero => -1, :nom => "examplenom", :prenom => "exampleprenom" }
  end

  it "devrait creer une nouvelle instance dotee des attributs valides" do
	Personne.create(@attr)
  end

  it "exige un numero" do
    bad_guy = Personne.new(@attr.merge(:numero => ""))
    bad_guy.should_not be_valid
  end

   it "exige un nom" do
    bad_guy = Personne.new(@attr.merge(:nom => ""))
    bad_guy.should_not be_valid
  end

  it "exige un prenom" do
    bad_guy = Personne.new(@attr.merge(:prenom => ""))
    bad_guy.should_not be_valid
  end
  
  it "devrait rejeter les noms trop longs" do
    long_nom = "a" * 30
    long_nom_personne = Personne.new(@attr.merge(:nom => long_nom))
    long_nom_personne.should_not be_valid
  end

  it "devrait rejeter les prenoms trop longs" do
    long_prenom = "a" * 30
    long_prenom_personne = Personne.new(@attr.merge(:prenom => long_prenom))
    long_prenom_personne.should_not be_valid
  end

  it "devrait rejeter un numero double" do
    Personne.create(@attr)
    personne_with_duplicate_numero = Personne.new(@attr)
    personne_with_duplicate_numero.should_not be_valid
  end
end
