class AddUserIdToPuppy < ActiveRecord::Migration[5.0]
  def change
    add_reference :puppies, :user, foreign_key: true
  end
end
