class SorceryCore < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :username,           :null => false  # if you use another field as a username, for example email, you can safely remove this field.
      t.string :email,              :default => nil # if you use this field as a username, you might want to make it :null => false.
      t.string :crypted_password,   :default => nil
      t.string :salt,               :default => nil
      t.datetime :lastlogin,        :default => nil
      t.string :remember_me_token,  :default => nil
      t.datetime :remember_me_token_expires_at, :default => nil
      t.boolean :admin,             :default => false

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end