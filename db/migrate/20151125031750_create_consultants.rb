class CreateConsultants < ActiveRecord::Migration
  def change
    create_table :consultants do |t|

      t.timestamps
    end
  end
end
