class AddCategoryToProps < ActiveRecord::Migration[5.2]
  def change
    add_column :props, :category, :string
  end
end
