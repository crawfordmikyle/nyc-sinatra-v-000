class Landmark < ActiveRecord::Base
	include Slugfindable::InstanceMethods
	extend Slugfindable::ClassMthods
	belongs_to :figure
end
