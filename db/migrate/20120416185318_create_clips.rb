class CreateClips < ActiveRecord::Migration
  def change
    create_table :clips do |t|
      t.string :title, 		:nil => false
      t.string :link,		:default => nil
      t.string :music,		:default => nil
      t.string :production, :default => nil

      t.timestamps
    end
  end
end
