class AddCoordinatesToPuppies < ActiveRecord::Migration[5.0]
  def change
    add_column :puppies, :latitude, :float
    add_column :puppies, :longitude, :float
  end
end
