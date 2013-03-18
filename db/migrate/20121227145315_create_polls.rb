# -*- encoding : utf-8 -*-
# Author - Igor Portela - igorportela.com  | Copyright(c) 2012. All rights reserved.
# -*- encoding : utf-8 -*-
class CreatePolls < ActiveRecord::Migration
  def change
    create_table :polls do |t|
      t.string :question, :null => false, :default => ""
      t.datetime :validity
      t.boolean :multiple_choice, :default => false
      t.string :slug, :null => false, :default => ""

      t.timestamps
    end

    Poll.create_translation_table! :question => {:type => :string, :null => false, :default => ''}

    add_index :polls, :slug, :unique => true
  end
end
