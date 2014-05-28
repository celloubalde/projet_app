# == Schema Information
#
# Table name: personnes
#
#  id         :integer          not null, primary key
#  nom        :string(255)
#  prenom     :string(255)
#  numero     :integer
#  scene_id   :integer
#  created_at :datetime
#  updated_at :datetime
#

class Personne < ActiveRecord::Base
	has_many :scenes, :dependent => :destroy

 	validates :numero, :presence => true,
			   :uniqueness => true
		  
	validates :nom, :presence => true,
			  :length => { :maximum => 30 }

	validates :prenom, :presence => true,
			  :length => { :maximum => 30 }
			  
end
