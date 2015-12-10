class RemoveDescriptionFromConsultantSows < ActiveRecord::Migration
  def change
  	remove_column :consultant_sows, :description
  end
end
