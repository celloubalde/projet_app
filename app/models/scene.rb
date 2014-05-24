class Scene < ActiveRecord::Base
	belongs_to :chapitre
	has_many :personnes
end
