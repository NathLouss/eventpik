class ChangeDataTypeForEvents < ActiveRecord::Migration[6.0]
  def change
    change_column :events, :start_time, :datetime
  end
end
