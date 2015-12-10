class AddNameAndSowIdToConsultants < ActiveRecord::Migration
  def change
  	add_column :consultants, :first_name, :string
  	add_column :consultants, :last_name, :string
  	add_column :consultants, :sow_id, :integer
  end
end
