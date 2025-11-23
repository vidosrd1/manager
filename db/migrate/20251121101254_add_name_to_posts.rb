class AddNameToPosts < ActiveRecord::Migration[8.1]
  def change
    add_column :posts, :name, :string
  end
end
