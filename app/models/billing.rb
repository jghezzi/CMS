class Billing < ActiveRecord::Base
	belongs_to :project
	has_one :consultant
	has_one :sow
end
