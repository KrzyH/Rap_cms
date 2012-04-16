class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title,		nil => false
      t.datetime :date,		:default => nil
      t.string :poster,		:default => nil
      t.string :description, :default => nil
      t.string :price,		:default => nil

      t.timestamps
    end
  end
end
