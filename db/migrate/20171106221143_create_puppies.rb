class CreatePuppies < ActiveRecord::Migration[5.0]
  def change
    create_table :puppies do |t|
      t.string :name
      t.string :address
      t.string :breed
      t.string :description

      t.timestamps
    end
  end
end
