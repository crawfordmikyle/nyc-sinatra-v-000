class Title < ActiveRecord::Base
	include Slugfindable::InstanceMethods
	extend Slugfindable::ClassMthods
	belongs_to :figure_titles
	has_many :figures, through: :figure_titles
end 