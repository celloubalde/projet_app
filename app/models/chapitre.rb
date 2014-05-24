class Chapitre < ActiveRecord::Base
	has_many :scenes
	has_many :anecdotes
end
