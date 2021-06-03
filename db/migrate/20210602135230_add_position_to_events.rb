class AddPositionToEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :position, :integer
  end
end
