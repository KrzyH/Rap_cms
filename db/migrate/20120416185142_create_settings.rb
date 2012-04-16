class CreateSettings < ActiveRecord::Migration
  def change
    create_table :settings do |t|
      t.string :title,		:default => nil
      t.string :url,		:default => nil
      t.string :google_analytics, :default => nil
      t.string :google_verification, :default => nil
      t.string :email,		:default => nil

      t.timestamps
    end
  end
end
