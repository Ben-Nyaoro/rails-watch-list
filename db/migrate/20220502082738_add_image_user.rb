class AddImageUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :image, :binary
  end
end
