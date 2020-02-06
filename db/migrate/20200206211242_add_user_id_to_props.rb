class AddUserIdToProps < ActiveRecord::Migration[5.2]
  def change
    add_reference :props, :user, foreign_key: true
  end
end
