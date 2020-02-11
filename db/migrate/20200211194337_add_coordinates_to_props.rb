class AddCoordinatesToProps < ActiveRecord::Migration[5.2]
  def change
    add_column :props, :latitude, :float
    add_column :props, :longitude, :float
  end
end
