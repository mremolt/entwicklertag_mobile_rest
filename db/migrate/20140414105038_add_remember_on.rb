class AddRememberOn < ActiveRecord::Migration
  def change
    add_column :items, :remember_at, :timestamp
  end
end
