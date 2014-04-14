class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :content
      t.string :user, null: false
      t.decimal :lat
      t.decimal :lng
      t.string :image_name
      t.string :tags, array: true, default: []

      t.timestamps
    end
    add_index :items, :user
  end
end
