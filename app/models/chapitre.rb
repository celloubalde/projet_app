# == Schema Information
#
# Table name: chapitres
#
#  id         :integer          not null, primary key
#  numero     :integer
#  titre      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Chapitre < ActiveRecord::Base
	has_many :scenes, :dependent => :destroy 
	has_many :anecdotes, :dependent => :destroy

	validates :numero, :presence => true,
			   :uniqueness => true
	validates :titre, :presence => true,
			  :length => { :maximum => 30 },
			  :uniqueness => true
end
