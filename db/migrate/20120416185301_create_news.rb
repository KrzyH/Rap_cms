class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :title,		:nil => false
      t.string :introduction, :default => nil
      t.string :content, 	:default => nil

      t.timestamps
    end
  end
end
