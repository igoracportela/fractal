# -*- encoding : utf-8 -*-
# Author - Igor Portela - igorportela.com  | Copyright(c) 2012. All rights reserved.
# -*- encoding : utf-8 -*-
class CreateSubscribers < ActiveRecord::Migration
  def change
    create_table :subscribers do |t|
      t.string :name, :null => false, :default => ""
      t.string :email, :null => false, :default => ""
      t.string :phone
      t.string :slug, :null => false, :default => ""

      t.timestamps
    end

    add_index :subscribers, :slug, :unique => true
    add_index :subscribers, :email, :unique => true
  end
end
