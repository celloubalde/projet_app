# == Schema Information
#
# Table name: anecdotes
#
#  id          :integer          not null, primary key
#  sujet       :string(255)
#  theme       :string(255)
#  texte       :text
#  chapitre_id :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class Anecdote < ActiveRecord::Base
	belongs_to :chapitre 
	
  	validates :theme, :presence => true
	validates :chapitre_id, :presence => true		  
	validates :sujet, :presence => true,
			  :length => { :maximum => 30 },
			  :uniqueness => true
end
