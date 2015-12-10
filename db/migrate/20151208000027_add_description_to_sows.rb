class AddDescriptionToSows < ActiveRecord::Migration
  def change
    add_column :sows, :description, :string
  end
end
