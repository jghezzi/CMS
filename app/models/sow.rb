class Sow < ActiveRecord::Base
	belongs_to :project
	has_many :consultant_sows
	has_many :consultants, through: :consultant_sows
	has_many :billings
end
