# == Schema Information
#
# Table name: scenes
#
#  id          :integer          not null, primary key
#  periode     :date
#  lieu        :string(255)
#  recit       :text
#  personne_id :integer
#  chapitre_id :integer
#  numero      :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class Scene < ActiveRecord::Base
	belongs_to :chapitre
	has_many :personnes, :dependent => :destroy

	validates :numero, :presence => true,
			   :uniqueness => true
	validates :chapitre_id, :presence => true
	validates :personne_id, :presence => true
	validates :lieu, :presence => true,
			  :length => { :maximum => 30 }
			 
end
