class AddPhotoToPuppy < ActiveRecord::Migration[5.0]
  def change
    add_column :puppies, :photo, :string
  end
end
