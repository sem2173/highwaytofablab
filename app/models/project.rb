class Project < ActiveRecord::Base
	validates_presence_of :name
	validates_presence_of :description
	validates_presence_of :plan
	validates_presence_of :duration
	validates_presence_of :furnitures
	validates_presence_of :author
	validates_presence_of :history
end