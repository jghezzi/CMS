class CreateBillings < ActiveRecord::Migration
  def change
    create_table :billings do |t|
      t.date :bill_date
      t.float :hours
      t.integer :consultant_id
      t.integer :project_id
      t.integer :sow_id

      t.timestamps
    end
  end
end
