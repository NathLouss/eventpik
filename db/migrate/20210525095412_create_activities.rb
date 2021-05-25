class CreateActivities < ActiveRecord::Migration[6.0]
  def change
    create_table :activities do |t|
      t.string :title
      t.string :category
      t.string :address
      t.text :description
      t.string :website_url
      t.integer :duration
      t.integer :rating

      t.timestamps
    end
  end
end
