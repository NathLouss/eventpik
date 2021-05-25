class AddColumnsToWishLists < ActiveRecord::Migration[6.0]
  def change
    add_column :wish_lists, :start_at, :date
    add_column :wish_lists, :end_at, :date
    add_column :wish_lists, :address, :string
    add_column :wish_lists, :radius, :integer
  end
end
