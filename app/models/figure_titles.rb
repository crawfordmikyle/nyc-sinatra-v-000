class FigureTitles < ActiveRecord::Base
	include Slugfindable::InstanceMethods
	extend Slugfindable::ClassMthods
	belongs_to :title
	belongs_to :figure
end 