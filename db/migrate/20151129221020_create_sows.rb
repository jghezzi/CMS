class CreateSows < ActiveRecord::Migration
  def change
    create_table :sows do |t|
      t.date :begin_date
      t.date :end_date
      t.float :sow_hours
      t.decimal :bill_rate
      t.integer :client_id
      t.integer :project_id

      t.timestamps
    end
  end
end
