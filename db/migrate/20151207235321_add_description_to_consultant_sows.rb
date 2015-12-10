class AddDescriptionToConsultantSows < ActiveRecord::Migration
  def change
    add_column :consultant_sows, :description, :string
  end
end
