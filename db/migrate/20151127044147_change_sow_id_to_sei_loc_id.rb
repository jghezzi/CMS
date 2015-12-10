class ChangeSowIdToSeiLocId < ActiveRecord::Migration
  def change
  	rename_column :consultants, :sow_id, :sei_loc_id
  end
end
