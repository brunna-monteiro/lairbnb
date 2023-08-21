class AddLocationToLairs < ActiveRecord::Migration[7.0]
  def change
    add_column :lairs, :location, :string
  end
end
