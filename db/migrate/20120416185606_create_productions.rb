class CreateProductions < ActiveRecord::Migration
  def change
    create_table :productions do |t|
      t.string :artis,		nil => false
      t.string :album, 		:default => nil
      t.datetime :year,		:default => nil
      t.string :cover,		:default => nil
      t.string :tracklist,	:default => nil

      t.timestamps
    end
  end
end
